import xml.etree.ElementTree as ET
import os
import numpy
import json

import matplotlib.pyplot as plt


class TrackPlaneGenerator():
    
    def __init__(self, base_points_count = 1024, width = 15.0):

        self.base_points_count  = base_points_count
        self.width              = width/1000.0
        self.decimal_places     = 7

        points = []

        self.pi = 3.141591654

        p_curve_change = 0.3 #0.01 .. 0.2
        dr_max         = 0.04


        dphi         = 2.0*self.pi/self.base_points_count
        if numpy.random.randint(2) == 1:
            dphi = -dphi
 
        line_curve_mode = "right"

        r_max       = 2.0
        r_initial   = r_max/2
        r           = r_initial
        dr          = 0.0
        dr_smooth   = 0.0
        
        phi = 0.0
        k = 0.05

        for i in range(self.base_points_count):
            
            t = numpy.exp(10*(i/self.base_points_count - 1.0))
            rw = t*r_initial + (1.0 - t)*r

            x = rw*numpy.sin(phi)
            y = rw*numpy.cos(phi)


            if numpy.random.rand() < p_curve_change:
                rnd = numpy.random.randint(2)
                if rnd == 0:
                    line_curve_mode = "right"
                    dr = numpy.random.rand()*dr_max + 0.001
                elif rnd == 1:
                    line_curve_mode = "left"
                    dr = -(numpy.random.rand()*dr_max + 0.001)
                else:
                    line_curve_mode = "sraight"
                    dr = self._calc_dr_for_straight(r, dphi, dphi)

                    

            dr_smooth = (1.0 - k)*dr_smooth + k*dr
            r = numpy.clip(r + dr_smooth, 0.1*r_max, r_max)
            

            phi+= dphi

            points.append([x, y])

        self.points = numpy.asarray(points)

    def show(self, file_name = None):
        
        tmp = numpy.transpose(self.points)

        plt.clf()
        plt.plot(tmp[0], tmp[1])

        if file_name is not None:
            plt.savefig(file_name)
        else:
            plt.show()

    def save(self, idx, path = "./models_tracks/"):

        color_idx = numpy.random.randint(2)

        if color_idx == 0:
            plane_color = [1, 1, 1, 1]
            line_color  = [0, 0, 0, 1]
        elif color_idx == 1:
            plane_color = [0, 0, 0, 1]
            line_color  = [1, 1, 1, 1]

        file_name_prefix = path + str(idx)

        self._save_obj(file_name_prefix)
        self._save_urdf(plane_color, line_color, file_name_prefix)
        self._save_json(file_name_prefix)
        self.show(file_name_prefix + ".png")

    def _save_json(self, file_name_prefix):
        json_data = {}
        json_data["points_count"] = len(self.points)
        json_data["points"] = []

        for i in range(len(self.points)):
            points = [round(self.points[i][0], self.decimal_places), round(self.points[i][1], self.decimal_places)]
            json_data["points"].append(points)

        outfile = open(file_name_prefix + ".json", "w")
        json.dump(json_data, outfile)

    def _save_obj(self, file_name_prefix):

        f = open(file_name_prefix + ".obj" , "w") 

        idx_current = 1

        for i in range(self.base_points_count-3):
            
            points_now   = self._get_points(self.width, self.points[i + 0], self.points[i + 1])
            points_next  = self._get_points(self.width, self.points[i + 1], self.points[i + 2])

            points = []
            points.append(points_now[0])
            points.append(points_next[1])
            
            points_str, idx_current = self._get_obj(points, idx_current)

            f.write(points_str)
        
        f.flush()
        os.fsync(f)
        f.close()

    def _save_urdf(points, plane_color = [10, 11, 12, 13], line_color = [1, 2, 3, 4], file_name_prefix = "./models_tracks/file"):
        tree = ET.parse("./models/" + "track_plane_template.urdf")
        root = tree.getroot()

        #change file name
        root[1][1][0][0].attrib['filename'] = file_name_prefix + ".obj"
        

        #change line color
        line_color_str = map(str, line_color)    
        line_color_str = ' '.join(line_color_str)     
        root[1][1][1][0].attrib['rgba'] = line_color_str
    

        #change plane color
        plane_color_str = map(str, plane_color)    
        plane_color_str = ' '.join(plane_color_str)     
        root[0][1][1][0].attrib['rgba'] = plane_color_str
    
        tree.write(file_name_prefix + ".urdf")

    def _get_points(self, width, start_point, end_point):

        x0 = start_point[0]
        y0 = start_point[1]

        x1 = end_point[0]
        y1 = end_point[1]
        
        #vector
        vx = x1 - x0
        vy = y1 - y0

        #perpindicular vector
        vxp = vy
        vyp = -vx

        #normalise vector
        length = (vxp**2 + vyp**2)**0.5

        vxp = vxp / length
        vyp = vyp / length

        points = []

        points.append([x0 + vxp*0.5*width, y0 + vyp*0.5*width])
        points.append([x0 - vxp*0.5*width, y0 - vyp*0.5*width])
        points.append([x1 + vxp*0.5*width, y1 + vyp*0.5*width])
        points.append([x1 - vxp*0.5*width, y1 - vyp*0.5*width])

        return points

    def _get_obj(self, points, idx_start = 1):
        idx_end = len(points) + idx_start
        
        result = ""

        for i in range(len(points)):
            result+= "v " + str(round(points[i][0], self.decimal_places)) + " " + str(round(points[i][1], self.decimal_places)) + " " + str(0.0) + "\n"

          
        result+= "f " + str(idx_start + 0) + " " + str(idx_start + 2) + " " + str(idx_start + 1) + "\n"
        result+= "f " + str(idx_start + 2) + " " + str(idx_start + 3) + " " + str(idx_start + 1) + "\n"


        return result, idx_end

if __name__ == "__main__":
    for i in range(32):
        generator = TrackPlaneGenerator(1024, 15.0)
        generator.save(i)

    generator = TrackPlaneGenerate(1024, 15.0)
    generator.save(1000)
    generator.show()
