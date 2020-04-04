import agents.dqn
from gym_linefollower.linefollower_env import LineFollowerEnvRawBasic as LineFollowerEnv


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

agent = agents.dqn.Agent(env, model, config, save_path)

score_best = -10000.0
while agent.iterations < 1000000:
    agent.main()    
    if agent.iterations%100000 == 0:
        if agent.training_stats.game_score_smooth > score_best:
            score_best = agent.training_stats.game_score_smooth
            agent.save()
            
            print("\n\n\n")
            print("saving best agent")
            print("iteration = ", agent.iterations)
            print("score_best = ", score_best)
            print("\n\n\n")

print("training done")

agent.load()
agent.disable_training()

agent.iterations = 0
while agent.iterations  < 100000:
    agent.main()

print("testing done")
