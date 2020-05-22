#include "usart.h"
// #include "gpio.h"

#include "stm32f7xx.h"
#include "stm32f7xx_hal.h"


//use usart1, on pins PA9 and PA10
#define USART      USART1


#define    COM1_BAUD            115200
#define    COM1_TX_PORT         GPIOA
#define    COM1_TX_PIN          GPIO_PIN_9
#define    COM1_RX_PORT         GPIOB
#define    COM1_RX_PIN          GPIO_PIN_7




Usart::Usart()
{


}

Usart::~Usart()
{


}

void Usart::init()
{
  __GPIOA_CLK_ENABLE();
  __GPIOB_CLK_ENABLE();

  // UART Clock Enable
  __HAL_RCC_USART1_CLK_ENABLE();


  GPIO_InitTypeDef gpio_init_structure;

  // GPIO TX
  gpio_init_structure.Pin = COM1_TX_PIN;
  gpio_init_structure.Mode = GPIO_MODE_AF_PP;
  gpio_init_structure.Speed = GPIO_SPEED_FAST;
  gpio_init_structure.Pull = GPIO_PULLUP;
  gpio_init_structure.Alternate = GPIO_AF7_USART1;
  HAL_GPIO_Init(COM1_TX_PORT, &gpio_init_structure);

  // GPIO RX
  gpio_init_structure.Pin = COM1_RX_PIN;
  gpio_init_structure.Mode = GPIO_MODE_AF_PP;
  gpio_init_structure.Alternate = GPIO_AF7_USART1;
  HAL_GPIO_Init(COM1_RX_PORT, &gpio_init_structure);

  UART_HandleTypeDef UartHandle1;
  // UART init
  UartHandle1.Instance = USART;
  UartHandle1.Init.BaudRate     = COM1_BAUD;
  UartHandle1.Init.WordLength   = UART_WORDLENGTH_8B;
  UartHandle1.Init.StopBits     = UART_STOPBITS_1;
  UartHandle1.Init.Parity       = UART_PARITY_NONE;
  UartHandle1.Init.HwFlowCtl    = UART_HWCONTROL_NONE;
  UartHandle1.Init.Mode         = UART_MODE_TX_RX;
  UartHandle1.Init.OverSampling = UART_OVERSAMPLING_8;
  UartHandle1.Init.OneBitSampling = UART_ONEBIT_SAMPLING_DISABLED;
  UartHandle1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  HAL_UART_Init(&UartHandle1);
}

void Usart::put_char(char c)
{
  while( !(USART->ISR & USART_ISR_TXE) )
		__asm("nop");

	USART->TDR = c;
}

char Usart::get_char()
{
  unsigned int c;
  while ( (c = ischar()) == NO_CHAR)
    __asm("nop");

  return c;

  return 0;
}

unsigned int Usart::ischar()
{
  if (USART->ISR & USART_ISR_RXNE)
  {
    return USART->RDR;
  }

  return NO_CHAR;
}



/*

#define UART_RX_BUFFER_SIZE   8

unsigned int g_uart_wr_ptr, g_uart_rd_ptr;
unsigned char g_uart_rx_buffer[UART_RX_BUFFER_SIZE];

void USART_ITConfig(USART_TypeDef* USARTx, uint32_t USART_IT, FunctionalState NewState)
{
  uint32_t usartreg = 0, itpos = 0, itmask = 0;
  uint32_t usartxbase = 0;


  usartxbase = (uint32_t)USARTx;

  usartreg = (((uint16_t)USART_IT) >> 0x08);

  itpos = USART_IT & ((uint32_t)0x000000FF);
  itmask = (((uint32_t)0x01) << itpos);

  if (usartreg == 0x02)
  {
    usartxbase += 0x04;
  }
  else if (usartreg == 0x03)
  {
    usartxbase += 0x08;
  }
  else
  {
  }
  if (NewState != DISABLE)
  {
    *(__IO uint32_t*)usartxbase  |= itmask;
  }
  else
  {
    *(__IO uint32_t*)usartxbase &= ~itmask;
  }
}
*/
