#ifndef _IMAGE_PROCESSING_H_
#define _IMAGE_PROCESSING_H_


#include <stdint.h>
#include <external/camera.h>
#include <external/lcd.h>


void IP_FromCamera(     int8_t* destination_buffer, 
                        Camera &camera,
                        unsigned int destination_height, 
                        unsigned int destination_width,
                        bool white_balance = true);


void IP_ToDisplay(  LCD &display_,
                    int8_t* source_buffer, 
                    unsigned int source_height, 
                    unsigned int source_width,
                    unsigned int y_ofs = 0,
                    unsigned int x_ofs = 0);


void IP_ResultToDisplay(    LCD &display_,
                            int8_t* source_buffer, 
                            unsigned int source_height, 
                            unsigned int source_width,
                            unsigned int upscale,
                            unsigned int y_ofs = 0,
                            unsigned int x_ofs = 0);


#endif