#ifndef _CAMERA_DEFS_H_
#define _CAMERA_DEFS_H_

#define DCIM_I2C_GPIO         TGPIOB
#define DCIM_I2C_SDA          9
#define DCIM_I2C_SCL          8

#define  OV9655_I2C_ADDRESS             ((uint8_t)0x60)
#define  OV9655_ID                       0x96


#define OV9655_SENSOR_PIDH              0x0A
#define OV9655_SENSOR_PIDL              0x0B
#define OV9655_SENSOR_COM7              0x12
#define OV9655_SENSOR_TSLB              0x3A
#define OV9655_SENSOR_MTX1              0x4F
#define OV9655_SENSOR_MTX2              0x50
#define OV9655_SENSOR_MTX3              0x51
#define OV9655_SENSOR_MTX4              0x52
#define OV9655_SENSOR_MTX5              0x53
#define OV9655_SENSOR_MTX6              0x54
#define OV9655_SENSOR_BRTN              0x55
#define OV9655_SENSOR_CNST1             0x56
#define OV9655_SENSOR_CNST2             0x57


#define OV9655_BRIGHTNESS_LEVEL0        0xB0     /* Brightness level -2         */
#define OV9655_BRIGHTNESS_LEVEL1        0x98     /* Brightness level -1         */
#define OV9655_BRIGHTNESS_LEVEL2        0x00     /* Brightness level 0          */
#define OV9655_BRIGHTNESS_LEVEL3        0x18     /* Brightness level +1         */
#define OV9655_BRIGHTNESS_LEVEL4        0x30     /* Brightness level +2         */

#define OV9655_BLACK_WHITE_BW           0xCC000000000000  /* Black and white effect      */
#define OV9655_BLACK_WHITE_NEGATIVE     0xEC808000008080  /* Negative effect             */
#define OV9655_BLACK_WHITE_BW_NEGATIVE  0xEC000000000000  /* BW and Negative effect      */
#define OV9655_BLACK_WHITE_NORMAL       0xCC808000008080  /* Normal effect               */

#define OV9655_CONTRAST_LEVEL0          0x30     /* Contrast level -2           */
#define OV9655_CONTRAST_LEVEL1          0x38     /* Contrast level -1           */
#define OV9655_CONTRAST_LEVEL2          0x40     /* Contrast level 0            */
#define OV9655_CONTRAST_LEVEL3          0x50     /* Contrast level +1           */
#define OV9655_CONTRAST_LEVEL4          0x60     /* Contrast level +2           */

#define OV9655_COLOR_EFFECT_NONE        0xCC808000008080  /* No color effect             */
#define OV9655_COLOR_EFFECT_ANTIQUE     0xCC000020F00000  /* Antique effect              */
#define OV9655_COLOR_EFFECT_BLUE        0xCC000000000060  /* Blue effect                 */
#define OV9655_COLOR_EFFECT_GREEN       0xCC000000008000  /* Green effect                */
#define OV9655_COLOR_EFFECT_RED         0xCC600000000000  /* Red effect                  */


#define RESOLUTION_96_96_X          ((unsigned int)96)
#define RESOLUTION_96_96_Y          ((unsigned int)96)

#define RESOLUTION_160_120_X        ((unsigned int)160)
#define RESOLUTION_160_120_Y        ((unsigned int)120)

#define RESOLUTION_192_192_X        ((unsigned int)192)
#define RESOLUTION_192_192_Y        ((unsigned int)192)

#define RESOLUTION_480_272_X        ((unsigned int)480)
#define RESOLUTION_480_272_Y        ((unsigned int)272)

#define RESOLUTION_640_480_X        ((unsigned int)640)
#define RESOLUTION_640_480_Y        ((unsigned int)480)

#endif