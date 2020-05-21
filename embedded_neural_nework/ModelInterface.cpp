#include <ModelInterface.h>

ModelInterface::ModelInterface()
{

}

ModelInterface::~ModelInterface()
{

}

void ModelInterface::forward()
{

}

int8_t* ModelInterface::input_buffer()
{
    if (swapped)
        return buffer_b;
    else
        return buffer_a;
}

int8_t* ModelInterface::output_buffer()
{
    if (swapped)
        return buffer_a;
    else
        return buffer_b;
}

void ModelInterface::init_buffer(unsigned int size)
{
    swapped  = false;
    buffer_a = new int8_t[size];
    buffer_b = new int8_t[size];

    for (unsigned int i = 0; i < size; i++)
        buffer_a[i] = 0;
    for (unsigned int i = 0; i < size; i++)
        buffer_b[i] = 0;
}

void ModelInterface::swap_buffer()
{
    swapped = !swapped;
}