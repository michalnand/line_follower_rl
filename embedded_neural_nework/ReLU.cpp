#include <ReLU.h>


void ReLU(  int8_t *output_buffer, 
            int8_t *input_buffer, 
            unsigned int size)
{
    while (size > 0)
    {
        if (*input_buffer < 0)
            *output_buffer = 0;
        else
            *output_buffer = *input_buffer;  

        output_buffer+= 1;
        input_buffer+= 1;
        size--;
    }
}
