import gym
from gym import error, spaces, utils
from gym.utils import seeding

import numpy
import time
import os

import cv2

from shapely.geometry import Point
from shapely.geometry.polygon import Polygon

from gym_linefollower.pybullet_client import PybulletClient
from gym_linefollower.track_load import TrackLoad
from gym_linefollower.linefollower_bot import LineFollowerBot
from gym_linefollower.observation import ObservationRaw, ObservationFrames



class LineFollowerEnv(gym.Env):

    def __init__(self, frame_stacking = 4, state_type = "raw", line_mode = "basic"):
        gym.Env.__init__(self)

        self.dt = 1.0/200.0
        self.pi = 3.141592654

        self.state_type = state_type
        self.line_mode  = line_mode
       

        self.models_path = os.path.dirname(__file__)
        if len(self.models_path) <= 0:
            self.models_path = "."
      
        if self.state_type == "raw":
            self.obs = ObservationRaw(frame_stacking)  
            self.observation_space = spaces.Box(low=-1.0, high=1.0, shape=(3*frame_stacking, ), dtype=numpy.float)
        else:
            width  = 96 
            height = 96     
            self.obs = ObservationFrames(width, height, frame_stacking)
            self.observation_space = spaces.Box(low=0, high=1.0, shape=(frame_stacking, height, width), dtype=numpy.float)
 
        self.action_space = spaces.Discrete(8)

        self.actions = []
        
      
        self.actions.append([0.1, 0.0])
        self.actions.append([0.0, 0.1])

        self.actions.append([0.2, 0.0])
        self.actions.append([0.0, 0.2])

        self.actions.append([0.3, 0.2])
        self.actions.append([0.2, 0.3])

        self.actions.append([0.0, 0.0])
        self.actions.append([0.3, 0.3])


        '''
        self.actions.append([0.05, 0.0])
        self.actions.append([0.0, 0.05])

        self.actions.append([0.1, 0.0])
        self.actions.append([0.0, 0.1])

        self.actions.append([0.2, 0.0])
        self.actions.append([0.0, 0.2])

        self.actions.append([0.3, 0.0])
        self.actions.append([0.0, 0.3])

        self.actions.append([0.2, 0.1])
        self.actions.append([0.1, 0.2])

        self.actions.append([0.3, 0.1])
        self.actions.append([0.1, 0.3])

        self.actions.append([0.5, 0.4])
        self.actions.append([0.4, 0.5])
        '''

        self.pb_client = PybulletClient()
        self.reset()


    def reset(self):
        self.pb_client.resetSimulation()

        self.pb_client.setGravity(0, 0, -9.81)
        self.pb_client.setTimeStep(self.dt)

        if self.line_mode == "advanced":
            track_idx = numpy.random.randint(32)
            self.line = TrackLoad(self.pb_client, self.models_path + "/models_tracks/" + str(track_idx))
        else:
            self.line = TrackLoad(self.pb_client, self.models_path + "/models/track_plane_template")
        
        starting_position = self.line.get_start_random()

        self.bot = LineFollowerBot(self.pb_client, self.models_path + "/models/robot_simple.urdf", starting_position = starting_position)


        for i in range(100):
            self.pb_client.stepSimulation()

        self.steps = 0

        self.observation = None
        self.reward      = 0.0
        self.done        = False
        self.info        = None

        self.line_polygon = Polygon(self.line.points)

        self.visited_points = numpy.zeros(self.line.get_length(), dtype=bool)

        self.observation = self._update_observation()

        return self.observation

    def step(self, action):
        left_power_target, right_power_target = self.actions[action]
        return self.step_continuous(left_power_target, right_power_target)

    def step_continuous(self, left_power_target, right_power_target):
        self.steps+= 1

        robot_x, robot_y, robot_z, pitch, roll, yaw = self.bot.get_position()

        l_pos, r_pos = self.bot.get_wheel_position()
        l_vel, r_vel = self.bot.get_wheel_velocity()
        l_tor, r_tor = self.bot.get_wheel_torque()

        self.bot.set_throttle(left_power_target, right_power_target)
   
        self.pb_client.stepSimulation()


        closest_idx, closest_distance = self.line.get_closest(robot_x, robot_y)
        line_position = self._get_line_position()

        self.done   = False
        self.reward = 0.0

        #too many time steps
        if self.steps > 4096:
            self.done = True
        #all line fields visited
        elif numpy.sum(self.visited_points) >= 0.98*self.line.get_length():
            self.done   = True
            self.reward = 1.0
        #bot is too far away from line
        elif closest_distance > 0.15:
            self.reward = -1.0
            self.done   = True
        else:
            #small negative reward for not line following
            self.reward = -1.0*numpy.clip(closest_distance*50.0, 0.0, 1.0)
            
            #positive reward for moving to next field
            if self.visited_points[closest_idx] == False:
                self.reward+= 1.0 
                self.visited_points[closest_idx] = True

        self.observation = self._update_observation()
        return self.observation, self.reward, self.done, self.info
        
    def render(self, mode = None):
        if self.steps%4 == 0:
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
        
    def _draw_fig(self, image):
        rgb = cv2.cvtColor(image,cv2.COLOR_BGR2RGB)

        cv2.imshow("line follower", rgb)  
        cv2.waitKey(1)

    def _get_camera_view(self, width = 256, height = 256):
        robot_x, robot_y, robot_z, pitch, roll, yaw = self.bot.get_position()
        return self.bot.get_image(yaw*180.0/self.pi - 90, -15.0, 0.0, 0.015, robot_x, robot_y, robot_z + 0.1, width = width, height = height, fov=60)

    def _update_observation(self):
        if self.state_type == "raw":

            line_position = self._get_line_position(0.04)

            left_velocity, right_velocity = self.bot.get_wheel_velocity()
            self.obs.process(line_position, left_velocity, right_velocity)
        else:
            frame = self._get_camera_view()
            self.obs.process(frame)

        return self.obs.get()

    def _get_line_position(self, sensor_distance = 0.04):

        x, y, _, _, _, yaw = self.bot.get_position()
        x_ = x + sensor_distance*numpy.cos(yaw)
        y_ = y + sensor_distance*numpy.sin(yaw) 

        _, distance  = self.line.get_closest(x_, y_)

        if self.line_polygon.contains(Point(x_, y_)):
            line_position = 1.0*distance
        else:
            line_position = -1.0*distance

        return line_position


class LineFollowerEnvRawBasic(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 8, "raw", "basic")

class LineFollowerEnvRawAdvanced(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 8, "raw", "advanced")


class LineFollowerEnvFrames1Basic(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 1, "frames", "basic")

class LineFollowerEnvFrames4Basic(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 4, "frames", "basic")

class LineFollowerEnvFrames8Basic(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 8, "frames", "basic")


class LineFollowerEnvFrames1Advanced(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 1, "frames", "advanced")

class LineFollowerEnvFrames4Advanced(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 4, "frames", "advanced")

class LineFollowerEnvFrames8Advanced(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self, 8, "frames", "advanced")




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