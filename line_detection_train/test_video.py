import numpy
import cv2
import torch
import time
from models.net_1.model import Model


model_input_width  = 512 #96
model_input_height = 512 #96

model = Model((1, model_input_height, model_input_width), 2)
model.load("models/net_1/")

cap = cv2.VideoCapture("/Users/michal/Movies/line_path_video.mp4")
input_width  = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
input_height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))


'''
#cap = cv2.VideoCapture(0)
input_width        = 640
input_height       = 480
cap.set(cv2.CAP_PROP_FRAME_WIDTH,input_width)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT,input_height)
'''

def get_prediction(frame, threshold = 0.25):
    frame_grayscale   = numpy.array(cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY))
    frame_resized     = cv2.resize(frame_grayscale, (model_input_width, model_input_height), interpolation = cv2.INTER_AREA)
    
    frame_normalised = numpy.clip(frame_resized/255.0, 0, 1)

    frame_tensor = torch.zeros((1, 1, model_input_height, model_input_width)).to(model.device)
    frame_tensor[0][0] = torch.from_numpy(frame_normalised).to(model.device)

    prediction_tensor  = model.forward(frame_tensor)


    prediction_np      = numpy.clip(prediction_tensor[0].detach().to("cpu").numpy(), 0, 1)
    prediction_np      = (prediction_np > threshold)*numpy.ones(prediction_np.shape)

    if prediction_tensor.shape[1] == 1:
        prediction_np = prediction_np[0]

    return prediction_np


fps = 0.0

frame_count = 0

output = None
output = cv2.VideoWriter("output_video.avi",cv2.VideoWriter_fourcc('M','J','P','G'), 25, (input_width,input_height))


while cap.isOpened():
    ret, frame      = cap.read()
    if ret == False:
        break


    time_start = time.time()
    prediction_np   = get_prediction(frame)
    time_stop = time.time()

    prediction_np   = cv2.resize(prediction_np, (input_width, input_height), interpolation = cv2.INTER_CUBIC)
    prediction_np   = numpy.clip(prediction_np, 0, 1)

    b, g, r = cv2.split(frame)

    r = r/255.0
    g = g/255.0
    b = b/255.0

    k = 0.4

    r = (1.0 - k)*r 
    g = (1.0 - k)*g  + k*prediction_np
    b = (1.0 - k)*b


    r = (r*255).astype(dtype=numpy.uint8)
    g = (g*255).astype(dtype=numpy.uint8)
    b = (b*255).astype(dtype=numpy.uint8)

    result = cv2.merge((b,g,r))




    k = 0.05
    fps = (1.0 - k)*fps + k*1.0/(time_stop - time_start + 0.0000001)
    text = "FPS = " + str(round(fps, 1))

    result = cv2.putText(result, text, (30, 30), cv2.FONT_HERSHEY_SIMPLEX ,  1, (255, 0, 0), 2, cv2.LINE_AA) 

    if frame_count%2 == 0:
        if output is not None:
            output.write(result)

    cv2.imshow('frame', result)

    frame_count+= 1


    if cv2.waitKey(1) & 0xFF == 27:
        break

cap.release()
if output is not None:
    output.release()
cv2.destroyAllWindows()

