#include "tensor.h"

 
#include <kodama.h>

Tensor::Tensor(unsigned int height, unsigned int width, unsigned int channels, unsigned int kernels)
{
    this->m_height    = height;
    this->m_width     = width;
    this->m_channels  = channels;

    this->m_kernels   = kernels; 


    this->m_size = this->m_kernels*this->m_width*this->m_height*this->m_channels;

    this->data = new int8_t[this->m_size];

    this->clear();
} 

Tensor::~Tensor()
{

}


void Tensor::clear(int8_t value)
{   
    for (unsigned int i = 0; i < this->m_size; i++)
        this->data[i] = value; 
} 

void Tensor::set_random(unsigned int seed)
{
    unsigned int rnd = seed;
    for (unsigned int i = 0; i < this->m_size; i++)
    {
        rnd = 1103515245*rnd + 12345;
        this->data[i] = (rnd>>8)%256 - 127;
    }
}
 

void Tensor::from_camera(uint32_t *camera_buffer, unsigned int camera_width, unsigned int camera_height)
{
    this->clear();

    unsigned int start_x = (camera_width - width())/2;
    unsigned int start_y = (camera_height - height())/2; 
    
    int mean = 0;
    unsigned int pixels = 0;  

    for (unsigned int y = 0; y < height(); y++)
        for (unsigned int x = 0; x < width(); x++)
        {
            unsigned int    idx_input = (y + start_y)*camera_width + x + start_x;
            int             pixel     = ((((uint16_t*)camera_buffer)[idx_input])&0xFF00)>>8;
            
            mean+=          pixel;
            pixels++;
        }
        
    mean = mean / pixels; 
     
    for (unsigned int y = 0; y < height(); y++)
        for (unsigned int x = 0; x < width(); x++)
        {
            unsigned int    idx_input = (y + start_y)*camera_width + x + start_x;
            int             pixel     = ((((uint16_t*)camera_buffer)[idx_input])&0xFF00)>>8;

            int v                     = pixel - mean;
            
            if (v > 127) 
                v = 127;

            if (v < -127)
                v = -127; 

            this->set(v, y, x, 0, 0);
        } 
}

void Tensor::set(int8_t value, unsigned int y, unsigned int x, unsigned int ch, unsigned int k)
{
    unsigned int idx = ((k*m_height + y)*m_width + x)*m_channels + ch;

    this->data[idx] = value; 
} 

int8_t Tensor::get(unsigned int y, unsigned int x, unsigned int ch, unsigned int k)
{
    unsigned int idx = ((k*m_height + y)*m_width + x)*m_channels + ch;

    return this->data[idx];
}

int8_t Tensor::mean()
{
    int32_t sum = 0;
    for (unsigned int i = 0; i < this->m_size; i++)
        sum+= this->data[i];

    int8_t result = sum / this->m_size;

    return result;
}