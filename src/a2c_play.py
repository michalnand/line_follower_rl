import agents.a2c_continuous
from gym_linefollower.linefollower_env import LineFollowerEnvRawBasic as LineFollowerEnv

 
class LineFollowerEnvWrapper(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self)
       
    def step(self, action):
        observation, reward, done, info = super().step(action)
        return observation, reward, [done, done], info


save_path = "./models/a2c/"

envs = [] 

env = LineFollowerEnvWrapper() 
env.reset()
envs.append(env)

import models.a2c.src.model
import models.a2c.src.config


model  = models.a2c.src.model
config = models.a2c.src.config.Config()
 
agent = agents.a2c_continuous.Agent(envs, model, config, save_path)

agent.load()
agent.disable_training()

while True:
    agent.main()
    envs[0].render()

print("testing done")
