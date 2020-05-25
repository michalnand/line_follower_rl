#ifndef _CAMERA_H_
#define _CAMERA_H_


#include <kodama.h>

#include <camera_defs.h> 

#define RESOLUTION_96_96                ((unsigned int)0)
#define RESOLUTION_160_120              ((unsigned int)1)
#define RESOLUTION_192_192              ((unsigned int)2)
#define RESOLUTION_480_272              ((unsigned int)3)
#define RESOLUTION_640_480              ((unsigned int)4)

class Camera
{
  protected:
    class Gpio<TGPIOH, 13, GPIO_MODE_OUT> dcmi_pwr_en;                   //PH13 power enable
    class TI2C<DCIM_I2C_GPIO, DCIM_I2C_SDA, DCIM_I2C_SCL, 100> i2c_dcmi;  //i2c bus for camera control

    uint32_t res_x, res_y;
    uint32_t *m_buffer;

  public:
    Camera();
    ~Camera();

    int init(unsigned int resolution = RESOLUTION_192_192);
    void stream_start(uint32_t *buffer);
    void snapshot_start(uint32_t *buffer);
    uint32_t need_refresh();

    uint32_t get_width();
    uint32_t get_height();
    uint32_t *get_buffer();
    
    uint32_t get_buffer_size();

  private:
    void delay_loops(unsigned int loops);
    void MspInit();

  private:
    void send_init_sequence_qqvga();
    void send_init_sequence_vga();
};

#endif
