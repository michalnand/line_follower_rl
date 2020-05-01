#ifndef _TENSOR_H_
#define _TENSOR_H_

#include <stdint.h>

class Tensor
{
    public:
        Tensor(unsigned int height, unsigned int width, unsigned int channels = 1, unsigned int kernels = 1);
        virtual ~Tensor(); 

        void clear(int8_t value = 0);
        void set_random(unsigned int seed = 0);

        void from_camera(uint32_t *camera_buffer, unsigned int camera_width, unsigned int camera_height);

        void set(int8_t value, unsigned int y, unsigned int x, unsigned int ch = 0, unsigned int k = 0);
        int8_t get(unsigned int y, unsigned int x, unsigned int ch = 0, unsigned int k = 0);

        int8_t mean();

        unsigned int width()
        {
            return this->m_width;
        }

        unsigned int height()
        {
            return this->m_height;
        }

        unsigned int channels()
        {
            return this->m_channels;
        }

        unsigned int kernels()
        {
            return this->m_kernels;
        }

        int8_t* get_data()
        {
            return this->data;
        }

    private:
        unsigned int m_kernels, m_height, m_width, m_channels;
        unsigned int m_size;
 
        int8_t *data;
};

#endif 