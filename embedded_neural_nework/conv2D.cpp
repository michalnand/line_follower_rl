#include <Conv2d.h>

template<const unsigned int kernel_size, const unsigned int input_channels, class io_data_type, class acc_data_type >
acc_data_type microkernel(const io_data_type *input,  const io_data_type *kernel)
{
    acc_data_type result = 0;

    unsigned int input_idx  = 0; 
    unsigned int kernel_idx = 0;
    
    if (input_channels%32 == 0)
    {
        for (unsigned int i = 0; i < kernel_size*input_channels; i+=32)
        {                    
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
        } 
    }
    else if (input_channels%16 == 0)
    {
        for (unsigned int i = 0; i < kernel_size*input_channels; i+=16)
        {    
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++; 
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
        }
    }
    else if (input_channels%8 == 0)
    {
        for (unsigned int i = 0; i < kernel_size*input_channels; i+=8)
        {    
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
        } 
    }
    else if (input_channels%4 == 0)
    {
        for (unsigned int i = 0; i < kernel_size*input_channels; i+=4)
        {    
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
        } 
    }
    else
    {
        if (kernel_size == 3)
        {
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
        }
        else
        {
            result+= (acc_data_type)kernel[kernel_idx]*(acc_data_type)input[input_idx]; kernel_idx++; input_idx++;
        }
    }
   
    return result;
}


template<   unsigned int kernel_size, 
            unsigned int input_channels, 
            class io_data_type, 
            class acc_data_type>
void Conv2d_kernel(     io_data_type *output_buffer, 
                        io_data_type *input_buffer, 
                        const io_data_type *bias_buffer,
                        const io_data_type *kernel, 
                        int32_t       scale,

                        unsigned int output_channels,
                        unsigned int height, 
                        unsigned int width,
                        unsigned int stride)
{

    unsigned int k_half         = (kernel_size - 1)/2;
    unsigned int input_size_y   = height    - 2*k_half;
    unsigned int input_size_x   = width     - 2*k_half;
    
    for (unsigned int filter = 0; filter < output_channels; filter++)
        for (unsigned int y = 0; y < input_size_y-stride/2; y+= stride)
            for (unsigned int x = 0; x < input_size_x-stride/2; x+= stride)
            {
                unsigned int kernel_idx = filter*kernel_size*kernel_size*input_channels;

                const io_data_type *kernel_ =  &(kernel[kernel_idx]);

                int32_t result = 0;

                for (unsigned int ky = 0; ky < kernel_size; ky++)
                { 
                    unsigned int input_idx  = ((y + ky)*width + x)*input_channels;     

                    io_data_type *input_buffer_ = &(input_buffer[input_idx]);              
                    
                    result+= microkernel<kernel_size, input_channels, io_data_type, acc_data_type>(input_buffer_, kernel_);
                    kernel_+= kernel_size*input_channels;
                }
                
                result = ((result + bias_buffer[kernel_idx])*scale)/(128*128);
               
                if (result > 127) 
                    result = 127;
                
                if (result < -127)
                    result = -127;
 
                unsigned int x_output = x/stride + k_half - stride/2;
                unsigned int y_output = y/stride + k_half - stride/2;

                unsigned int output_idx     = ((y_output)*(width/stride) + x_output)*output_channels + filter;
                output_buffer[output_idx]   = result; 
            }
}



template<   unsigned int kernel_size, 
            class io_data_type, 
            class acc_data_type>
void Conv2d_kernel1(     io_data_type *output_buffer, 
                        io_data_type *input_buffer, 
                        const io_data_type *bias_buffer,
                        const io_data_type *kernel, 
                        int32_t       scale,

                        unsigned int output_channels,
                        unsigned int height, 
                        unsigned int width,
                        unsigned int stride)
{

    unsigned int k_half         = (kernel_size - 1)/2;
    unsigned int input_size_y   = height    - 2*k_half;
    unsigned int input_size_x   = width     - 2*k_half;
    
    for (unsigned int filter = 0; filter < output_channels; filter++)
    {
        unsigned int kernel_idx = filter*kernel_size*kernel_size;
        const io_data_type *kernel_ =  &(kernel[kernel_idx]);

        for (unsigned int y = 0; y < input_size_y-stride/2; y+= stride)
            for (unsigned int x = 0; x < input_size_x-stride/2; x+= stride)
            {
                unsigned int input_idx  = y*width + x;  
                const io_data_type *input_ =  &(input_buffer[input_idx]);
   
                int32_t result = 0; 

                if (kernel_size == 3)
                {
                    result+= (acc_data_type)kernel_[0]*(acc_data_type)input_[0 + 0*width];
                    result+= (acc_data_type)kernel_[1]*(acc_data_type)input_[1 + 0*width];
                    result+= (acc_data_type)kernel_[2]*(acc_data_type)input_[2 + 0*width];

                    result+= (acc_data_type)kernel_[3]*(acc_data_type)input_[0 + 1*width];
                    result+= (acc_data_type)kernel_[4]*(acc_data_type)input_[1 + 1*width];
                    result+= (acc_data_type)kernel_[5]*(acc_data_type)input_[2 + 1*width];
 
                    result+= (acc_data_type)kernel_[6]*(acc_data_type)input_[0 + 2*width];
                    result+= (acc_data_type)kernel_[7]*(acc_data_type)input_[0 + 2*width];
                    result+= (acc_data_type)kernel_[8]*(acc_data_type)input_[0 + 2*width];
                }
  
                result = ((result + bias_buffer[kernel_idx])*scale)/(128*128);
               
                if (result > 127) 
                    result = 127;
                
                if (result < -127)
                    result = -127;
 
                unsigned int x_output = x/stride + k_half - stride/2;
                unsigned int y_output = y/stride + k_half - stride/2;

                unsigned int output_idx     = ((y_output)*(width/stride) + x_output)*output_channels + filter;
                output_buffer[output_idx]   = result; 
            }
    }
}


void Conv2d(    int8_t *output_buffer, 
                int8_t *input_buffer, 
                const int8_t *bias_buffer,
                const int8_t *kernel, 
                int32_t scale,

                unsigned int output_channels,
                unsigned int input_channels,
                unsigned int height, 
                unsigned int width,
                unsigned int kernel_size,
                unsigned int stride)
{
    if (kernel_size == 1)
    {
        if (input_channels == 1) 
        {
            Conv2d_kernel1<1, int8_t, int16_t>( output_buffer, 
                                                input_buffer, 
                                                bias_buffer,
                                                kernel, 
                                                scale,

                                                output_channels,
                                                height, 
                                                width,

                                                stride);
        }
        else if (input_channels == 4) 
        {
            Conv2d_kernel<1, 4, int8_t, int16_t>(   output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel, 
                                                    scale,

                                                    output_channels,
                                                    height, 
                                                    width,

                                                    stride);
        }
        else if (input_channels == 8)
        {
            Conv2d_kernel<1, 8, int8_t, int16_t>(   output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel,
                                                    scale, 

                                                    output_channels,
                                                    height, 
                                                    width,
                                                    
                                                    stride);
        }
        else if (input_channels == 16)
        {
            Conv2d_kernel<1, 16, int8_t, int16_t>(  output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel, 
                                                    scale,

                                                    output_channels,
                                                    height, 
                                                    width,
                                                    
                                                    stride);
        }
        else if (input_channels == 32)
        {
            Conv2d_kernel<1, 32, int8_t, int16_t>(  output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel, 
                                                    scale,

                                                    output_channels,
                                                    height, 
                                                    width,
                                                    
                                                    stride);
        }
        else if (input_channels == 64)
        {
            Conv2d_kernel<1, 64, int8_t, int16_t>(  output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel, 
                                                    scale,

                                                    output_channels,
                                                    height, 
                                                    width,
                                                    
                                                    stride);
        }
    }
    

    if (kernel_size == 3)
    {
        if (input_channels == 1)  
        {
            Conv2d_kernel1<3, int8_t, int16_t>( output_buffer, 
                                                input_buffer, 
                                                bias_buffer,
                                                kernel, 
                                                scale,

                                                output_channels,
                                                height, 
                                                width,

                                                stride);
        }
        
        else if (input_channels == 4) 
        {
            Conv2d_kernel<3, 4, int8_t, int16_t>(   output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel, 
                                                    scale,

                                                    output_channels,
                                                    height, 
                                                    width,

                                                    stride);
        }
        else if (input_channels == 8)
        {
            Conv2d_kernel<3, 8, int8_t, int16_t>(   output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel, 
                                                    scale,

                                                    output_channels,
                                                    height, 
                                                    width,
                                                    
                                                    stride);
        }
        else if (input_channels == 16)
        {
            Conv2d_kernel<3, 16, int8_t, int16_t>(  output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel, 
                                                    scale,

                                                    output_channels,
                                                    height, 
                                                    width,
                                                    
                                                    stride);
        }
        else if (input_channels == 32)
        {
            Conv2d_kernel<3, 32, int8_t, int16_t>(  output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel, 
                                                    scale,

                                                    output_channels,
                                                    height, 
                                                    width,
                                                    
                                                    stride);
        }
        else if (input_channels == 64)
        {
            Conv2d_kernel<3, 64, int8_t, int16_t>(  output_buffer, 
                                                    input_buffer, 
                                                    bias_buffer,
                                                    kernel, 
                                                    scale,

                                                    output_channels,
                                                    height, 
                                                    width,
                                                    
                                                    stride);
        }
    }
}