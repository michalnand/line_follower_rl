#ifndef _CONV_2D_H_
#define _CONV_2D_H_

#include <stdint.h>

void conv2D(    int8_t *output_buffer, 
                int8_t *input_buffer, 
                int8_t *bias_buffer,
                int8_t *kernel, 

                unsigned int output_channels,
                unsigned int height, 
                unsigned int width,
                unsigned int input_channels,
                
                unsigned int stride = 1,
                bool relu = false);




#endif