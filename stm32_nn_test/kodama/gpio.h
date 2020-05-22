#ifndef _GPIO_H_
#define _GPIO_H_

#include <kodama.h>


#define GPIO_MODE_OUT             0       //push-pull output mode
#define GPIO_MODE_IN_FLOATING     1       //input mode
#define GPIO_MODE_IN_PULLUP       2       //input mode with pullup
#define GPIO_MODE_AF              3       //alternate function
#define GPIO_MODE_AN              4       //analog input




template <const unsigned char gpio, unsigned char pin, unsigned char mode = GPIO_MODE_OUT> class Gpio
{
  private:

    GPIO_TypeDef *GPIOx;

  public:
    Gpio()
    {
      #ifdef TGPIOA
      __GPIOA_CLK_ENABLE();
      #endif

      #ifdef TGPIOB
      __GPIOB_CLK_ENABLE();
      #endif

      #ifdef TGPIOC
      __GPIOC_CLK_ENABLE();
      #endif

      #ifdef TGPIOD
      __GPIOD_CLK_ENABLE();
      #endif

      #ifdef TGPIOE
      __GPIOE_CLK_ENABLE();
      #endif

      #ifdef TGPIOF
      __GPIOF_CLK_ENABLE();
      #endif

      #ifdef TGPIOG
      __GPIOG_CLK_ENABLE();
      #endif

      #ifdef TGPIOH
      __GPIOH_CLK_ENABLE();
      #endif

      #ifdef TGPIOI
      __GPIOI_CLK_ENABLE();
      #endif

      #ifdef TGPIOJ
      __GPIOJ_CLK_ENABLE();
      #endif

      #ifdef TGPIOK
      __GPIOK_CLK_ENABLE();
      #endif

      GPIOx = nullptr;

      #ifdef TGPIOA
      if (gpio == TGPIOA)
        GPIOx = GPIOA;
      #endif

      #ifdef TGPIOB
      if (gpio == TGPIOB)
        GPIOx = GPIOB;
      #endif

      #ifdef TGPIOC
      if (gpio == TGPIOC)
        GPIOx = GPIOC;
      #endif

      #ifdef TGPIOD
      if (gpio == TGPIOD)
        GPIOx = GPIOD;
      #endif

      #ifdef TGPIOE
      if (gpio == TGPIOE)
        GPIOx = GPIOE;
      #endif

      #ifdef TGPIOF
      if (gpio == TGPIOF)
        GPIOx = GPIOF;
      #endif

      #ifdef TGPIOG
      if (gpio == TGPIOG)
        GPIOx = GPIOG;
      #endif

      #ifdef TGPIOH
      if (gpio == TGPIOH)
        GPIOx = GPIOH;
      #endif

      #ifdef TGPIOI
      if (gpio == TGPIOI)
        GPIOx = GPIOI;
      #endif

      #ifdef TGPIOJ
      if (gpio == TGPIOJ)
        GPIOx = GPIOJ;
      #endif

      #ifdef TGPIOK
      if (gpio == TGPIOK)
        GPIOx = GPIOK;
      #endif

      set_mode(mode);
    }

    inline void set_mode(const unsigned char pin_mode)
    {
      if (pin_mode == GPIO_MODE_OUT)
      {
        //gpio speed 50MHz
        GPIOx->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR0 << (pin * 2));
        GPIOx->OSPEEDR |= ((uint32_t)(0x03) << (pin * 2));

        //push-pull output
        GPIOx->OTYPER &= ~((GPIO_OTYPER_OT_0) << ((uint16_t)pin));
        GPIOx->OTYPER |= (uint16_t)(((uint16_t)0x00) << ((uint16_t)pin));

        //pin as output
        GPIOx->MODER  &= ~(GPIO_MODER_MODER0 << (pin * 2));
        GPIOx->MODER |= (((uint32_t)0x01) << (pin * 2));
      }

      //input mode, no pull-up
      if (pin_mode == GPIO_MODE_IN_FLOATING)
      {
        //gpio speed 50MHz
        GPIOx->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR0 << (pin * 2));
        GPIOx->OSPEEDR |= ((uint32_t)(0x03) << (pin * 2));

        //pin as output
        GPIOx->MODER  &= ~(GPIO_MODER_MODER0 << (pin * 2));
        GPIOx->MODER |= (((uint32_t)0x00) << (pin * 2));
      }

      //input mode, pull-up
      if (pin_mode == GPIO_MODE_IN_PULLUP)
      {
        //gpio speed 50MHz
        GPIOx->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR0 << (pin * 2));
        GPIOx->OSPEEDR |= ((uint32_t)(0x03) << (pin * 2));

        //pin as output
        GPIOx->MODER  &= ~(GPIO_MODER_MODER0 << (pin * 2));
        GPIOx->MODER |= (((uint32_t)0x00) << (pin * 2));

        //pullup enable
        uint32_t tmpreg = GPIOx->PUPDR;
      //   tmpreg &= ~(GPIO_PUPDR_PUPDR0 << ((uint16_t)pin * 2));
        tmpreg |= (((uint32_t)0x01) << (pin * 2));
        GPIOx->PUPDR = tmpreg;
      }

      //alternate function
      if (pin_mode == GPIO_MODE_AF)
      {
        //gpio speed 50MHz
        GPIOx->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR0 << (pin * 2));
        GPIOx->OSPEEDR |= ((uint32_t)(0x03) << (pin * 2));

        //pin as output
        GPIOx->MODER  &= ~(GPIO_MODER_MODER0 << (pin * 2));
        GPIOx->MODER |= (((uint32_t)0x02) << (pin * 2));
      }

      //analog mode
      if (pin_mode == GPIO_MODE_AN)
      {
        //pin as output
        GPIOx->MODER  &= ~(GPIO_MODER_MODER0 << (pin * 2));
        GPIOx->MODER |= (((uint32_t)0x03) << (pin * 2));
      }
    }

    void set_af(unsigned char af)
    {
      uint32_t temp = 0x00;
      uint32_t temp_2 = 0x00;

      temp = ((uint32_t)(af) << ((uint32_t)((uint32_t)pin & (uint32_t)0x07) * 4));
      GPIOx->AFR[pin >> 0x03] &= ~((uint32_t)0xF << ((uint32_t)((uint32_t)pin & (uint32_t)0x07) * 4));

      temp_2 = GPIOx->AFR[pin >> 0x03] | temp;
      GPIOx->AFR[pin >> 0x03] = temp_2;
    }

    void write(int value)
    {
      if (value)
          GPIOx->ODR|= (1<<pin);   //set pin to one
      else
          GPIOx->ODR&= ~(1<<pin);   //set pin to zero
    }

    int read()
    {
      return (GPIOx->IDR&(1<<pin)) != 0;
    }

    Gpio& operator= (int value)
    {
      write(value); return *this;
    }

    Gpio& operator= (Gpio& rhs)
    {
      return write(rhs.read());
    };

    void af_config(uint32_t af_config_mode)
    {
      uint32_t temp = 0x00;
      uint32_t temp_2 = 0x00;

      temp = ((uint32_t)(af_config_mode) << ((uint32_t)((uint32_t)pin & (uint32_t)0x07) * 4));
      GPIOx->AFR[pin >> 0x03] &= ~((uint32_t)0xF << ((uint32_t)((uint32_t)pin & (uint32_t)0x07) * 4));
      temp_2 = GPIOx->AFR[pin >> 0x03] | temp;
      GPIOx->AFR[pin >> 0x03] = temp_2;
    }

    operator int()
    {
      return read();
    };
};

#endif
