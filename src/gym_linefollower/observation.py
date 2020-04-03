import numpy
import cv2



class Observation:

    def __init__(self, width, height, frame_stacking):
        self.width          = width
        self.height         = height
        self.frame_stacking = frame_stacking

        self._reset()

    
    def process(self, frame):
        resized = self._resize(frame)
        
        if self.frame_stacking > 1:
            for i in reversed(range(self.frame_stacking-1)):
                self.observation[i+1] = self.observation[i].copy()
            
        self.observation[0] = numpy.array(resized).copy()/256.0

        return self.observation

    def get(self):
        return self.observation
    
    def _reset(self):
        self.observation = numpy.zeros((self.frame_stacking, self.height, self.width))

    def _resize(self, frame):
        frame = cv2.cvtColor(frame, cv2.COLOR_RGB2GRAY)
        frame = cv2.resize(frame, (self.width, self.height), interpolation=cv2.INTER_AREA)
        return frame


   