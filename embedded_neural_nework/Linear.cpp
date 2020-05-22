#include <Linear.h>



int32_t dot_kernel(int8_t *va, int8_t *vb, unsigned int size)
{
    int32_t result     = 0;
    unsigned int idx   = 0;
    
    while (size >= 32)
    {                  
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;

        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;

        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;

        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;

        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;

        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;

        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;

        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        
        size-= 32;
    }

    while (size >= 16)
    {                  
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
       
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;

        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        
        size-= 16;
    }

    while (size >= 8)
    {                  
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
       
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;

        size-= 8;
    }

    while (size != 0)
    {                  
        result+= (int16_t)va[idx]*(int16_t)vb[idx]; idx++;
        size--;
    }

    return result;
}
 
void Linear(    int8_t *output_buffer, 
                int8_t *input_buffer, 
                
                int8_t *weights, 
                int8_t *bias, 
                int8_t scale,

                unsigned int input_size,
                unsigned int output_size)
{
    for (unsigned int j = 0; j < output_size; j++)
    {
        int32_t result = dot_kernel(input_buffer, weights + j*input_size, input_size);

        result = ((result + bias[j])*scale)/(128*128);

        if (result > 127)
            result = 127;

        if (result < -127)
            result = -127;

        output_buffer[j] = result;
    }
}