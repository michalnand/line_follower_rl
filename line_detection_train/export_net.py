import torch
import numpy

from models.net_1.model import Model


class ExportNetwork:
    def __init__(self, model, input_height, input_width, input_channels, network_prefix = "LineNetwork"):

        input_shape = (input_channels, input_height, input_width)

        self.network_prefix = network_prefix

        max_required_memory = input_shape[0]*input_shape[1]*input_shape[2]
        total_macs          = 0

        code_weights = ""
        code_network = ""
        for i in range(len(model.layers)):
            layer = model.layers[i]
            
            if isinstance(layer, torch.nn.Linear):
                code, output_shape, required_memory, macs = self.export_Linear(layer, input_shape, i)

                code_network+= code[0]
                code_weights+= code[1]

                total_macs+= macs

            elif isinstance(layer, torch.nn.Conv2d):
                code, output_shape, required_memory, macs = self.export_Conv2d(layer, input_shape, i)

                code_network+= code[0]
                code_weights+= code[1]

                total_macs+= macs

                if i == 0:
                    input_channels = layer.weight.shape[1]

            elif isinstance(layer, torch.nn.ReLU):
                code, output_shape, required_memory, macs = self.export_ReLU(layer, input_shape, i)

                code_network+= code[0]
                code_weights+= code[1]

                total_macs+= macs

            

            input_shape = output_shape

            if required_memory > max_required_memory:
                max_required_memory = required_memory


        print("required memory for one buffer = ", max_required_memory, "[bytes]")
        print("total MACS                     = ", total_macs)


        self.code_h = ""
        self.code_h+= "#ifndef _" + self.network_prefix + "_H_\n"
        self.code_h+= "#define _" + self.network_prefix + "_H_\n"
        self.code_h+= "\n\n"
        self.code_h+= "#include <ModelInterface.h>"
        self.code_h+= "\n\n"
        self.code_h+= "class " + self.network_prefix + " : public ModelInterface\n"
        self.code_h+= "{\n"
        self.code_h+= "\tpublic:\n"
        self.code_h+= "\t\t " + self.network_prefix + "();\n"
        self.code_h+= "\t\t " + "void forward();\n"
        self.code_h+= "};\n"

        self.code_h+= "\n\n"
        self.code_h+= "#endif\n"

        self.code_cpp = ""
        self.code_cpp+= "#include <" + self.network_prefix + ".h>\n"
        self.code_cpp+= "#include <Linear.h>\n"
        self.code_cpp+= "#include <Conv2d.h>\n"
        self.code_cpp+= "#include <ReLU.h>\n"
        self.code_cpp+= "\n\n"
        self.code_cpp+= code_weights + "\n\n"


        self.code_cpp+= self.network_prefix + "::" + self.network_prefix + "()\n"
        self.code_cpp+= "\t: ModelInterface()\n"
        self.code_cpp+= "{\n"
        self.code_cpp+= "\t" + "init_buffer(" + str(max_required_memory) + ");\n"
        self.code_cpp+= "\t" + "input_channels = "  + str(input_channels) + ";\n"
        self.code_cpp+= "\t" + "input_height = "  + str(input_height) + ";\n"
        self.code_cpp+= "\t" + "input_width = "   + str(input_width) + ";\n"
        self.code_cpp+= "\t" + "output_channels = " + str(output_shape[0]) + ";\n"

        if len(output_shape) > 1:
            self.code_cpp+= "\t" + "output_height = " + str(output_shape[1]) + ";\n"
        else:
            self.code_cpp+= "\t" + "output_height = " + str(1) + ";\n"

        if len(output_shape) > 2:
            self.code_cpp+= "\t" + "output_width = " + str(output_shape[2]) + ";\n"
        else:
            self.code_cpp+= "\t" + "output_width = " + str(1) + ";\n"

        self.code_cpp+= "}\n\n"


        self.code_cpp+= "void " + self.network_prefix + "::" + "forward()\n"
        self.code_cpp+= "{\n"
        self.code_cpp+= code_network
        self.code_cpp+= "\tswap_buffer();" + "\n"
        self.code_cpp+= "}\n" 

        #print(self.code_cpp)

        cpp_file = open("../embedded_neural_nework_test/" + self.network_prefix + ".cpp", "w")
        cpp_file.write(self.code_cpp)
        cpp_file.close() 
                
        h_file = open("../embedded_neural_nework_test/" + self.network_prefix + ".h", "w")
        h_file.write(self.code_h)
        h_file.close()

    def export_Linear(self, layer, input_shape, layer_num):        
        layer_id = self.network_prefix + "_" + "layer_" + str(layer_num)

        weights      = layer.weight.data.detach().to("cpu").numpy()
        kernel_shape = weights.shape

        bias = layer.bias.data.detach().to("cpu").numpy()

        weights_quant, bias_quant, scale = self.quantize(weights, bias)

        scale_round = int(scale*128)

        input_size      = weights.shape[1]
        output_size     = weights.shape[0]
        
        #layer call code
        code_network = "\tLinear(" + "\t" + "output_buffer(), input_buffer()," + "\n"
        code_network+= "\t\t" + layer_id + "_bias" + ", " + layer_id + "_weights" + ", " + "\n"
        code_network+= "\t\t" + str(scale_round) + ", " 
        code_network+= str(input_size) + ", "
        code_network+= str(output_size) + ");\n"
        code_network+= "\tswap_buffer();" + "\n\n"

        #weights
        code_weight = "const int8_t " + layer_id + "_weights[] = {" + "\n"
        for j in range(output_size):
            for i in range(input_size):
                code_weight+= str(weights_quant[j][i]) + ", " 
                  
            code_weight+= "\n"

        code_weight+= "};\n\n"
        
        #bias
        code_weight+= "const int8_t "  + layer_id + "_bias[] = {" + "\n"
        for i in range(len(bias)):
            code_weight+= str(bias_quant[i]) + ", " 
        code_weight+= "};\n\n\n"


        code = (code_network, code_weight)
        macs = 2*output_size*input_size + 2*output_size


        print("export_Linear :")
        print("output_size    ", output_size)
        print("input_size     ", input_size)
        print("macs           ", macs)
        print("\n\n")


        return code, (output_size, ), output_size, macs



    def export_Conv2d(self, layer, input_shape, layer_num):
        layer_id = self.network_prefix + "_" + "layer_" + str(layer_num)

        weights = layer.weight.data.detach().to("cpu").numpy()
        kernel_shape = weights.shape

        bias    = layer.bias.data.detach().to("cpu").numpy()

        weights_quant, bias_quant, scale = self.quantize(weights, bias)

        scale_rounded = int(scale*128)


        output_channels = kernel_shape[0]
        input_height    = input_shape[1]
        input_width     = input_shape[2]
        input_channels  = kernel_shape[1]
        kernel_size     = kernel_shape[2]
        kernel_stride   = layer.stride[0]

        output_shape    = (output_channels, input_height//kernel_stride, input_width//kernel_stride)

        #layer call code
        code_network = "\tConv2d(" + "\t" + "output_buffer(), input_buffer()," + "\n"
        code_network+= "\t\t" + layer_id + "_bias" + ", " + layer_id + "_weights" + ", " + "\n"
        code_network+= "\t\t" + str(scale_rounded) + ", " 
        code_network+= str(output_channels) + ", "
        code_network+= str(input_channels) + ", "
        code_network+= str(input_height) + ", "
        code_network+= str(input_width) + ", "
        code_network+= str(kernel_size) + ", "
        code_network+= str(kernel_stride) + ");\n"
        code_network+= "\tswap_buffer();" + "\n\n"

        #weights
        code_weight = "const int8_t " + layer_id + "_weights[] = {" + "\n"
        for k in range(kernel_shape[0]):
            for kh in range(kernel_shape[2]):
                for kw in range(kernel_shape[3]):
                    for ch in range(kernel_shape[1]):
                        code_weight+= str(weights_quant[k][ch][kh][kw]) + ", " 
                        
                    if ch > 1:
                        code_weight+= "\n"

            if kernel_shape[1] == 1:
                code_weight+= "\n"

        code_weight+= "};\n\n"
        
        #bias
        code_weight+= "const int8_t "  + layer_id + "_bias[] = {" + "\n"
        for i in range(len(bias)):
            code_weight+= str(bias_quant[i]) + ", " 
        code_weight+= "};\n\n\n"


        code = (code_network, code_weight)
        
        required_memory       = output_shape[0]*output_shape[1]*output_shape[2]

        macs = 2*output_channels*(kernel_size**2)*input_channels*output_shape[1]*output_shape[2] #convolution
        macs+= 2*output_channels*output_shape[1]*output_shape[2]    #bias



        print("export_Conv2d :")
        print("output_channels ", output_channels)
        print("input_height    ", input_height)
        print("input_width     ", input_width)
        print("input_channels  ", input_channels)
        print("kernel_size     ", kernel_size)
        print("stride          ", kernel_stride)
        print("output_shape    ", output_shape)
        print("macs            ", macs)
        print("\n\n")



        return code, output_shape, required_memory, macs
    
    def export_ReLU(self, layer, input_shape, layer_num):
        
        output_shape = input_shape

        size         = numpy.prod(output_shape)
        code_network = "\tReLU(" + "\t" + "output_buffer(), input_buffer(), " + str(size) + ");\n"
        code_network+= "\tswap_buffer();" + "\n\n"

        code = (code_network, "", "")

        macs = 4*size

        print("export_ReLU :")
        print("IO shape        ", output_shape)
        print("macs            ", macs)
        print("\n\n")
      
        return code, output_shape, size, macs


    def quantize(self, weights, bias):
        tmp         = numpy.concatenate([weights.flatten(), bias.flatten()])
        scale       = numpy.std(tmp)*2
        
        result_weights  = numpy.clip((weights*128)/scale, -127, 127).astype(numpy.int8)
        result_bias     = numpy.clip((bias*128)/scale, -127, 127).astype(numpy.int8)
 
        return result_weights, result_bias, scale
        

            
 

model_input_height      = 96
model_input_width       = 96
model_output_channels   = 1

model = Model((1, model_input_height, model_input_width), model_output_channels)
model.load("models/net_1/")

export = ExportNetwork(model, model_input_height, model_input_width, 1)