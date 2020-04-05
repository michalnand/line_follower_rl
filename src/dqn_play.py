import agents.dqn
from gym_linefollower.linefollower_env import LineFollowerEnvRawAdvanced as LineFollowerEnv


class LineFollowerEnvWrapper(LineFollowerEnv):
    def __init__(self):
        LineFollowerEnv.__init__(self)
       
    def step(self, action):
        observation, reward, done, info = super().step(action)
        return observation, reward, [done, done], info


import models.dqn_0.src.model
import models.dqn_0.src.config

model  = models.dqn_0.src.model
config = models.dqn_0.src.config.Config()

save_path = "./models/dqn_0/"

env = LineFollowerEnvWrapper() 
env.reset()

agent = agents.dqn.Agent(env, model, config, save_path, save_stats = False)

agent.load()
agent.disable_training()

while True:
    env.render()
    agent.main()

print("testing done")
