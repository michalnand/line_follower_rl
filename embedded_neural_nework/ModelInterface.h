#ifndef _MODEL_INTERFACE_H_
#define _MODEL_INTERFACE_H_

#include <stdint.h>

#include <Linear.h>
#include <Conv2d.h>
#include <ReLU.h>



class ModelInterface
{
    public:
        ModelInterface();
        virtual ~ModelInterface();

        virtual void forward();

    public:
        int8_t* input_buffer();
        int8_t* output_buffer();

    protected:
        void init_buffer(unsigned int size);
        void swap_buffer();

    protected:
        bool swapped;
        int8_t *buffer_a, *buffer_b;
};


#endif

