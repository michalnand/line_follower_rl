#ifndef _Conv2d_H_
#define _Conv2d_H_

#include <stdint.h>

void Conv2d(    int8_t *output_buffer, 
                int8_t *input_buffer, 
                const int8_t *bias_buffer,
                const int8_t *kernel, 
                int32_t scale,

                unsigned int output_channels,
                unsigned int input_channels,
                unsigned int height, 
                unsigned int width,

                unsigned int kernel_size = 3,
                
                unsigned int stride = 1);




#endif