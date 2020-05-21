#include <ReLU.h>

#define RELU_BLOCK_SIZE     ((unsigned int)8)

void ReLU_kernel(int8_t *output_buffer, int8_t *input_buffer)
{
    if (input_buffer[0] < 0)
        output_buffer[0] = 0;
    else
        output_buffer[0] = input_buffer[0];

    if (input_buffer[1] < 0)
        output_buffer[1] = 0;
    else
        output_buffer[1] = input_buffer[1];

    if (input_buffer[2] < 0)
        output_buffer[2] = 0;
    else
        output_buffer[2] = input_buffer[2];

    if (input_buffer[3] < 0)
        output_buffer[3] = 0;
    else
        output_buffer[3] = input_buffer[3];

    if (input_buffer[4] < 0)
        output_buffer[4] = 0;
    else
        output_buffer[4] = input_buffer[4];

    if (input_buffer[5] < 0)
        output_buffer[5] = 0;
    else
        output_buffer[5] = input_buffer[5];

    if (input_buffer[6] < 0)
        output_buffer[6] = 0;
    else
        output_buffer[6] = input_buffer[6];

    if (input_buffer[7] < 0)
        output_buffer[7] = 0;
    else
        output_buffer[7] = input_buffer[7];   
}


void ReLU(  int8_t *output_buffer, 
            int8_t *input_buffer, 
            unsigned int size)
{
    while (size >= RELU_BLOCK_SIZE)
    {
        ReLU_kernel(output_buffer, input_buffer);

        output_buffer+= RELU_BLOCK_SIZE;
        input_buffer+=  RELU_BLOCK_SIZE;

        size-= RELU_BLOCK_SIZE;
    } 

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
