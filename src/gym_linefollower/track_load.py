import numpy
import json
import pybullet

class TrackLoad:
    def __init__(self, pb_client, file_name_prefix):
        
        self.pi = 3.141592654
        self.points = self._load_json(file_name_prefix + ".json")
        self.urfd_model = pb_client.loadURDF(file_name_prefix + ".urdf")

    def _load_json(self, file_name):

        with open(file_name) as f:
            json_data = json.load(f)
        
        points_count = json_data["points_count"]
        points = numpy.zeros((points_count, 2))
        for i in range(points_count):
            points[i][0] = json_data["points"][i][0]
            points[i][1] = json_data["points"][i][1]

        return points

    
    def get_length(self):
        return len(self.points)

    def get_start(self, idx = 20):
        dx = self.points[idx + 1][0] - self.points[idx][0]
        dy = self.points[idx + 1][1] - self.points[idx][1]

        yaw = numpy.arctan2(dy, dx)

        point       = [self.points[idx][0], self.points[idx][1], 0.05]
        orientation = [yaw, 0.0, 0.0]
        return [point, orientation]

    def get_start_random(self):
        idx = numpy.random.randint((self.get_length()*80)//100) + 20
        return self.get_start(idx)

    def get_closest(self, x, y):
        position = [x, y]

        dif         = self.points - position
        distances   = (numpy.sum((dif**2), axis = 1))**0.5

        closest_idx         = numpy.argmin(distances)
        closest_distance    = distances[closest_idx]

        return closest_idx, closest_distance

