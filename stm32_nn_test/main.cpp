
#include <device/core.h>
#include <kodama.h>

#include <external/sdram.h>
#include <external/lcd.h>
#include <external/camera.h>

#include <image_processing.h>

#include <LineNetwork.h>

void modules_init()
{
  Gpio<TGPIOI, 1, GPIO_MODE_OUT> led;
  led = 1;

  terminal.init();
  mem.init();

  terminal << "\n\n\n";
  terminal << "terminal ready\n";

  mem.print();

  sdram.init();
  if (sdram.init() == 0)
    terminal << "SD RAM test OK with size " << sdram.get_size() << "\n";
  else
    terminal << "SD RAM test FAILED with size " << sdram.get_size() << "\n";


  terminal << "initialising LCD\n";

  unsigned int frame_buffer_size = (lcd.get_width()*lcd.get_height()*2*sizeof(uint16_t))/sizeof(uint32_t);
  uint32_t *frame_buffer = sdram.allocate(frame_buffer_size);

  terminal << "frame buffer start address" << (uint32_t)frame_buffer << " size" << frame_buffer_size << "\n";

  lcd.init(frame_buffer);

  terminal << "initialising LCD DONE\n";

  terminal << "initialising Timer\n";
  timer.init();
  for (unsigned int i = 0; i < 10; i++)
  {
    led = 1;
    timer.delay_ms(50);
    led = 0;
    timer.delay_ms(50);
  }

  terminal << "initialising Timer done\n";
}







int main()
{
    core_init();

    modules_init();

    Camera cam;
    cam.init();

    uint32_t frame_buffer_size  = (cam.get_width()*cam.get_height()*2*sizeof(uint16_t))/sizeof(uint32_t);
    uint32_t *camera_buffer     = sdram.allocate(frame_buffer_size);
 
    cam.stream_start(camera_buffer);

    LineNetwork model;

    float d_time = 100.0;
 
    while (1)
    {
      if (cam.need_refresh())
      {
        lcd.FillLayer(RGB_COL_BLACK);
   
        
        IP_FromCamera(model.input_buffer(), cam, model.input_height, model.input_width, true);
        IP_ToDisplay(lcd, model.input_buffer(), model.input_height, model.input_width, 0, 0);

        auto time_start = timer.get_time();
        model.forward();
        auto time_stop = timer.get_time();

        IP_ResultToDisplay(lcd, model.output_buffer(), model.output_height, model.output_width, 16, 0, model.input_width + 4);

        d_time = 0.8*d_time + 0.2*0.001*(time_stop - time_start);
          
        float fps = 1.0/(0.001 + d_time);
                                    
        unsigned int line = 220;
        lcd.Puts(5, line, "FPS = ");  lcd.PutInt(150, line, fps); 
        lcd.Refresh();
      }
    }
    
    while (1)
    {
       
    }

    return 0;
}