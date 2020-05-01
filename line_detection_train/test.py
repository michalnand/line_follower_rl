from dataset import Dataset
from models.net_1.model import Model

import numpy

from PIL import Image, ImageDraw

root_path = "/Users/michal/dataset/background/"
#root_path = "/home/michal/dataset/background/"

def show(input, output):

    width    = input.shape[1]
    height   = input.shape[0]
    input_rgb = numpy.array([input, input, input])

    image = Image.fromarray(output*255)
    image = image.resize((width, height), Image.ANTIALIAS)
    output_upscaled = numpy.array(image)/255.0


    input_rgb[1] = 0.5*input_rgb[1] + 0.5*output_upscaled

    result = input_rgb
    result = numpy.rollaxis(result, 0, 2)
    result = numpy.rollaxis(result, 2, 1)


    result = (result*255).astype(dtype=numpy.uint8)
    image = Image.fromarray(result)
    image.show()


size = 96
dataset = Dataset(size, size, 100, 100, root_path)


model = Model(dataset.training.input_shape, dataset.training.output_shape[0])

model.load("models/net_1/")

batch_size = 10



input, target = dataset.testing.get_batch()

prediction = model.forward(input)


for i in range(batch_size):
    input_np        = input[i][0].detach().numpy()
    
    target_np       = numpy.clip(target[i][0].detach().numpy(), 0, 1)
    prediction_np   = numpy.clip(prediction[i][0].detach().numpy(), 0, 1)

    target_np       = numpy.round(target_np, 3)
    prediction_np   = numpy.round(prediction_np, 3)

    print("target = ")
    print(target_np, "\n")
    print("target = ")
    print(prediction_np, "\n")
    print("\n\n\n\n")
   
 
    show(input_np, prediction_np)