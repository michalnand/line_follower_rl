#ifndef _LINEAR_H_
#define _LINEAR_H_

#include <stdint.h>

void Linear(    int8_t *output_buffer, 
                int8_t *input_buffer, 

                const int8_t *bias, 
                const int8_t *weights, 
                int8_t scale,

                unsigned int input_size,
                unsigned int output_size);


 

#endif