#ifndef _KODAMA_CONFIG_H_
#define _KODAMA_CONFIG_H_


#include "stm32f7xx.h"
#include "stm32f7xx_hal.h"

//used GPIO ports
#define TGPIOA    ((unsigned char)0)
#define TGPIOB    ((unsigned char)1)
#define TGPIOC    ((unsigned char)2)
#define TGPIOD    ((unsigned char)3)
#define TGPIOE    ((unsigned char)4)
#define TGPIOF    ((unsigned char)5)
#define TGPIOG    ((unsigned char)6)
#define TGPIOH    ((unsigned char)7)
#define TGPIOI    ((unsigned char)8)
#define TGPIOJ    ((unsigned char)9)
#define TGPIOK    ((unsigned char)10)

 
//count of virtual timers
#define TIMERS_COUNT    ((unsigned int)32)


//basic i2c configuration
#define I2C_PORT      TGPIOF
#define I2C_SDA_PIN   7
#define I2C_SCL_PIN   6
#define I2C_SPEED     20    //loops delay for i2c -> higher number, slower bus

#endif
