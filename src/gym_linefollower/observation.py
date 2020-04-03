import numpy
import cv2


class ObservationRaw:
    def __init__(self, sequence_length):
        self.sequence_length          = sequence_length
        self.channels       = 3
        self._reset()

    def process(self, line_position, left_speed, right_speed):        
        if self.sequence_length > 1:
            for i in reversed(range(self.sequence_length-1)):
                self.observation[0][i+1] = self.observation[0][i]
                self.observation[1][i+1] = self.observation[1][i]
                self.observation[2][i+1] = self.observation[2][i]
            
        self.observation[0][0] = numpy.clip(line_position*1000.0/40.0,   -1.0, 1.0)
        self.observation[1][0] = numpy.clip(left_speed/100.0,            -1.0, 1.0)
        self.observation[2][0] = numpy.clip(right_speed/100.0,           -1.0, 1.0)

        return self.observation

    def get(self):
        return self.observation

    def _reset(self):
        self.observation = numpy.zeros((self.channels, self.sequence_length))


class ObservationFrames:

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


   