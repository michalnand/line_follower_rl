import gym
from gym import error, spaces, utils
from gym.utils import seeding

import numpy
import time
import os

import cv2

from gym_linefollower.pybullet_client import PybulletClient
from gym_linefollower.track_load import TrackLoad
from gym_linefollower.linefollower_bot import LineFollowerBot
from gym_linefollower.observation import Observation



class LineFollowerEnv(gym.Env):

    def __init__(self, frame_stacking = 4, advanced_mode = False):
        gym.Env.__init__(self)

        self.dt = 1.0/200.0
        self.pi = 3.141592654

        self.advanced_mode = advanced_mode
       

        self.models_path = os.path.dirname(__file__)
        if len(self.models_path) <= 0:
            self.models_path = "."
      
        width  = 96
        height = 96

        self.obs = Observation(width, height, frame_stacking)
        self.observation_space = spaces.Box(low=0, high=1.0, shape=(frame_stacking, height, width), dtype=numpy.float)
 
        self.action_space = spaces.Discrete(16)

        self.actions = []

        self.actions.append([1.0, 0.0])
        self.actions.append([0.8, 0.0])
        self.actions.append([0.6, 0.0])
        self.actions.append([0.5, 0.0])
        self.actions.append([1.0, 0.9])
        self.actions.append([0.8, 0.6])
        self.actions.append([0.5, 0.4])
        self.actions.append([0.3, 0.1])

        self.actions.append([0.0, 1.0])
        self.actions.append([0.0, 0.8])
        self.actions.append([0.0, 0.6])
        self.actions.append([0.0, 0.5])
        self.actions.append([0.9, 1.0])
        self.actions.append([0.6, 0.8])
        self.actions.append([0.4, 0.5])
        self.actions.append([0.1, 0.3])

        self.time_step = 0

        self.pb_client = PybulletClient()
        self.reset()


    def reset(self):
        self.pb_client.resetSimulation()

        self.pb_client.setGravity(0, 0, -9.81, )
        self.pb_client.setTimeStep(self.dt, )

        if self.advanced_mode:
            track_idx = numpy.random.randint(32)
            self.line = TrackLoad(self.pb_client, self.models_path + "/models_tracks/" + str(track_idx))
        else:
            self.line = TrackLoad(self.pb_client, self.models_path + "/models/track_plane_template")
        
        starting_position = self.line.get_start_random()

        self.bot = LineFollowerBot(self.pb_client, self.models_path + "/models/robot_simple.urdf", starting_position = starting_position)


        for i in range(100):
            self.pb_client.stepSimulation()



        self.left_power  = 0.0
        self.right_power = 0.0

        self.render_steps = 0

        self.observation = None
        self.reward      = 0.0
        self.done        = False
        self.info        = None

        self.visited_points = numpy.zeros(self.line.get_length(), dtype=bool)

        self.observation = self._update_observation()

        return self.observation


    def step(self, action):
        self.time_step+= 1

        robot_x, robot_y, robot_z, pitch, roll, yaw = self.bot.get_position()

        l_pos, r_pos = self.bot.get_wheel_position()
        l_vel, r_vel = self.bot.get_wheel_velocity()
        l_tor, r_tor = self.bot.get_wheel_torque()

        left_power_target, right_power_target = self.actions[action]
    
        k = 0.05

        self.left_power   = (1.0 - k)*self.left_power + k*left_power_target
        self.right_power  = (1.0 - k)*self.right_power + k*right_power_target
    
        self.bot.set_throttle(self.left_power, self.right_power)
   
        self.pb_client.stepSimulation()


        closest_idx, closest_distance = self.line.get_closest(robot_x, robot_y)

        self.done   = False
        self.reward = 0.0


        #negative reward for not line following
        self.reward+= -1.0*numpy.clip(closest_distance*10.0, 0.0, 1.0)

        #positive reward for moving to next field
        if self.visited_points[closest_idx] == False:
            self.reward+= 1.0 
            self.visited_points[closest_idx] = True

        visited_count = numpy.sum(self.visited_points)

        if visited_count >= 0.9*self.line.get_length():
            self.done   = True
            self.reward = 1.0

        if closest_distance > 0.15:
            self.done   = True
            self.reward = -1.0

        self.observation = self._update_observation()
        
        return self.observation, self.reward, self.done, self.info
        


    def render(self, mode = None):
        if self.render_steps%4 == 0:
            robot_x, robot_y, robot_z, pitch, roll, yaw = self.bot.get_position()

            width  = 256
            height = 256

            #image = bot.get_image(robot_x, robot_y, 0.2 + 2, robot_x, robot_y, 0)
            
            #top view
            top_view = self.bot.get_image(yaw*180.0/self.pi - 90, -90.0, 0.0, 0.25, robot_x, robot_y, robot_z, width = width, height = height)

            #third person view
            dist = 0.02
            tp_view = self.bot.get_image(yaw*180.0/self.pi - 90, -40.0, 0.0, 0.1, robot_x+dist*numpy.cos(yaw), robot_y+dist*numpy.sin(yaw), robot_z, width = width, height = height, fov=100)

            #camera view
            cam_view = self._get_camera_view()

            #sensor view
            #dist = 0.05
            #sensor_view = self.bot.get_image(yaw*180.0/self.pi - 90, -90.0, 0.0, 0.02, robot_x+dist*numpy.cos(yaw), robot_y+dist*numpy.sin(yaw), robot_z + 0.02, width = width, height = height, fov=100)

            #side view
            dist = 0.02
            side_view = self.bot.get_image(yaw*180.0/self.pi - 0, -40.0, 0.0, 0.1, robot_x+dist*numpy.cos(yaw), robot_y+dist*numpy.sin(yaw), robot_z, width = width, height = height, fov=100)

            separator_width = 2
            vertical_separator   = numpy.ones((height, separator_width, 3))*0.5
            horizontal_separator = numpy.ones((separator_width, width*2 + separator_width, 3))*0.5

            image_a = numpy.hstack([ numpy.hstack([top_view, vertical_separator]), tp_view])
            image_b = numpy.hstack([ numpy.hstack([cam_view, vertical_separator]), side_view])

            image = numpy.vstack([numpy.vstack([image_a, horizontal_separator]), image_b] )
            

            image = numpy.clip(255*image, 0.0, 255.0)

            image = numpy.array(image, dtype=numpy.uint8)
            self._draw_fig(image)
        
        self.render_steps+= 1

    def _draw_fig(self, image):
        rgb = cv2.cvtColor(image,cv2.COLOR_BGR2RGB)

        cv2.imshow("line follower", rgb)  
        cv2.waitKey(1)

    def _get_camera_view(self, width = 256, height = 256):
        robot_x, robot_y, robot_z, pitch, roll, yaw = self.bot.get_position()
        return self.bot.get_image(yaw*180.0/self.pi - 90, -15.0, 0.0, 0.015, robot_x, robot_y, robot_z + 0.1, width = width, height = height, fov=60)

    def _update_observation(self):
        return self.obs.process(self._get_camera_view())
    

class LineFollowerEnvSimpleFS1(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 1, False)

class LineFollowerEnvSimpleFS4(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 4, False)

class LineFollowerEnvSimpleFS8(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 8, False)


class LineFollowerEnvAdvancedFS1(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 1, True)

class LineFollowerEnvAdvancedFS4(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 4, True)

class LineFollowerEnvAdvancedFS8(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 8, True)




if __name__ == "__main__":

    env = LineFollowerEnv()
    env.reset()
    env.render()
    
    while True:
        action = env.action_space.sample()
        state, reward, done, _ = env.step(action)
        env.render()
		
        if done:
            env.reset()

        print("reward = ", reward)