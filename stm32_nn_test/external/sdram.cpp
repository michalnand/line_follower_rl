#include "sdram.h"

class SDRam sdram;

#define SDRAM_MAX_ADR        ((uint32_t)0x800000)     // max = 8MBytes
#define SDRAM_START_ADR      ((uint32_t)0xC0000000)


//--------------------------------------------------------------
// defines
//--------------------------------------------------------------
#define SDRAM_MEMORY_WIDTH               FMC_SDRAM_MEM_BUS_WIDTH_16
#define SDCLOCK_PERIOD                   FMC_SDRAM_CLOCK_PERIOD_2
#define SDRAM_TIMEOUT                    ((uint32_t)0xFFFF)
#define REFRESH_COUNT                    ((uint32_t)0x0603)


//--------------------------------------------------------------
// defines
//--------------------------------------------------------------
#define SDRAM_MODEREG_BURST_LENGTH_1             ((uint16_t)0x0000)
#define SDRAM_MODEREG_BURST_LENGTH_2             ((uint16_t)0x0001)
#define SDRAM_MODEREG_BURST_LENGTH_4             ((uint16_t)0x0002)
#define SDRAM_MODEREG_BURST_LENGTH_8             ((uint16_t)0x0004)
#define SDRAM_MODEREG_BURST_TYPE_SEQUENTIAL      ((uint16_t)0x0000)
#define SDRAM_MODEREG_BURST_TYPE_INTERLEAVED     ((uint16_t)0x0008)
#define SDRAM_MODEREG_CAS_LATENCY_2              ((uint16_t)0x0020)
#define SDRAM_MODEREG_CAS_LATENCY_3              ((uint16_t)0x0030)
#define SDRAM_MODEREG_OPERATING_MODE_STANDARD    ((uint16_t)0x0000)
#define SDRAM_MODEREG_WRITEBURST_MODE_PROGRAMMED ((uint16_t)0x0000)
#define SDRAM_MODEREG_WRITEBURST_MODE_SINGLE     ((uint16_t)0x0200)
//--------------------------------------------------------------
// File     : stm32_ub_sdram.c
// Datum    : 12.07.2015
// Version  : 1.0
// Autor    : UB
// EMail    : mc-4u(@)t-online.de
// Web      : www.mikrocontroller-4u.de
// CPU      : STM32F746
// IDE      : OpenSTM32
// GCC      : 4.9 2015q2
// Module   : CubeHAL
// Funktion : Externes SDRAM [8MByte]
//            Typ = MT48LC4M32B2B5-7
//            Der Zugriff erfolgt ueber den FMC-Controller
//
// Hinweis  : Das SDRAM benutzt die CPU-Pins :
//             PC0  = SDCKE0 (CKE)      PF0  = A0
//             PH3  = SDNE0  (/CS)      PF1  = A1
//             PH5  = SDNWE  (/WE)      PF2  = A2
//             PD0  = D2                PF3  = A3
//             PD1  = D3                PF4  = A4
//             PD8  = D13               PF5  = A5
//             PD9  = D14               PF11 = SDNRAS (/RAS)
//             PD10 = D15               PF12 = A6
//             PD14 = D0                PF13 = A7
//             PD15 = D1                PF14 = A8
//             PE0  = NBL0   (LDQM)     PF15 = A9
//             PE1  = NBL1   (UDQM)     PG0  = A10
//             PE7  = D4                PG1  = A11
//             PE8  = D5                PG4  = BA0    (BANK A0)
//             PE9  = D6                PG5  = BA1    (BANK A1)
//             PE10 = D7                PG8  = SDCLK  (CLK)
//             PE11 = D8                PG15 = SDNCAS (/CAS)
//             PE12 = D9
//             PE13 = D10
//             PE14 = D11
//             PE15 = D12
//
//--------------------------------------------------------------



SDRam::SDRam()
{

}

SDRam::~SDRam()
{

}

int SDRam::init(bool full_test)
{
  int result = 0;
  ram_init();

  uint32_t value_input_init = 0xCAFE1234;
  if (full_test)
  {
    uint32_t value_input;

    value_input = value_input_init;
    for (unsigned int i = 0; i < get_size(); i+= 4)
    {
      value_input = 27*value_input + 55;
      Write32b(i, value_input);
    }

    value_input = value_input_init;
    for (unsigned int i = 0; i < get_size(); i+= 4)
    {
      value_input = 27*value_input + 55;
      uint32_t value_output = Read32b(i);

      if (value_input != value_output)
        result = -1;
    }
  }
  else
  {
    Write32b(0, value_input_init);
    if (value_input_init != Read32b(0))
      result = -1;
    else
      result = 0;
  }

  for (unsigned int i = 0; i < get_size(); i+= 4)
    Write32b(i, 0);

  sd_mem_ptr = get_start_address();

  return result;
}

uint32_t* SDRam::get_start_address()
{
  return (uint32_t*)SDRAM_START_ADR;
}

uint32_t SDRam::get_size()
{
  return SDRAM_MAX_ADR;
}


uint32_t* SDRam::allocate(unsigned int size)
{
  uint32_t *result = sd_mem_ptr;
  sd_mem_ptr+= size;

  return result;
}


void SDRam::Write8b(uint32_t adr, uint8_t value)
{
  *(uint8_t*) (SDRAM_START_ADR + adr) = value;
}

uint8_t SDRam::Read8b(uint32_t adr)
{
  uint8_t result=0;

  result = *(__IO uint8_t*)(SDRAM_START_ADR + adr);

  return(result);
}

void SDRam::Write16b(uint32_t adr, uint16_t value)
{
  *(uint16_t*) (SDRAM_START_ADR + adr) = value;
}

uint16_t SDRam::Read16b(uint32_t adr)
{
  uint16_t result=0;

  result = *(__IO uint16_t*)(SDRAM_START_ADR + adr);

  return(result);
}


void SDRam::Write32b(uint32_t adr, uint32_t value)
{
  *(uint32_t*) (SDRAM_START_ADR + adr) = value;
}

uint32_t SDRam::Read32b(uint32_t adr)
{
  uint32_t result=0;

  result = *(__IO uint32_t*)(SDRAM_START_ADR + adr);

  return(result);
}

void SDRam::WriteBuffer32b(uint32_t* ptrBuffer, uint32_t startAdr, uint32_t lenBuffer)
{
  HAL_SDRAM_Write_32b(&sdramHandle, (uint32_t *)(startAdr+SDRAM_START_ADR), ptrBuffer, lenBuffer);
}

void SDRam::ReadBuffer32b(uint32_t* ptrBuffer, uint32_t startAdr, uint32_t lenBuffer)
{
  HAL_SDRAM_Read_32b(&sdramHandle, (uint32_t *)(startAdr+SDRAM_START_ADR), ptrBuffer, lenBuffer);
}

void SDRam::WriteBuffer32bDMA(uint32_t* ptrBuffer, uint32_t startAdr, uint32_t lenBuffer)
{
  HAL_SDRAM_Write_DMA(&sdramHandle, (uint32_t *)(startAdr+SDRAM_START_ADR), ptrBuffer, lenBuffer);
}

void SDRam::ram_init()
{
  /* SDRAM device configuration */
  sdramHandle.Instance = FMC_SDRAM_DEVICE;

  /* Timing configuration for 100Mhz as SD clock frequency (System clock is up to 200Mhz) */
  Timing.LoadToActiveDelay    = 2;
  Timing.ExitSelfRefreshDelay = 7;
  Timing.SelfRefreshTime      = 4;
  Timing.RowCycleDelay        = 7;
  Timing.WriteRecoveryTime    = 2;
  Timing.RPDelay              = 2;
  Timing.RCDDelay             = 2;

  sdramHandle.Init.SDBank             = FMC_SDRAM_BANK1;
  sdramHandle.Init.ColumnBitsNumber   = FMC_SDRAM_COLUMN_BITS_NUM_8;
  sdramHandle.Init.RowBitsNumber      = FMC_SDRAM_ROW_BITS_NUM_12;
  sdramHandle.Init.MemoryDataWidth    = SDRAM_MEMORY_WIDTH;
  sdramHandle.Init.InternalBankNumber = FMC_SDRAM_INTERN_BANKS_NUM_4;
  sdramHandle.Init.CASLatency         = FMC_SDRAM_CAS_LATENCY_2;
  sdramHandle.Init.WriteProtection    = FMC_SDRAM_WRITE_PROTECTION_DISABLE;
  sdramHandle.Init.SDClockPeriod      = SDCLOCK_PERIOD;
  sdramHandle.Init.ReadBurst          = FMC_SDRAM_RBURST_ENABLE;
  sdramHandle.Init.ReadPipeDelay      = FMC_SDRAM_RPIPE_DELAY_0;

  /* SDRAM controller initialization */
  msp_init();

  HAL_SDRAM_Init(&sdramHandle, &Timing);

  /* SDRAM initialization sequence */
  ram_initialization_sequence(REFRESH_COUNT);
}


void SDRam::ram_initialization_sequence(uint32_t RefreshCount)
{
  __IO uint32_t tmpmrd = 0;

  /* Step 1: Configure a clock configuration enable command */
  Command.CommandMode            = FMC_SDRAM_CMD_CLK_ENABLE;
  Command.CommandTarget          = FMC_SDRAM_CMD_TARGET_BANK1;
  Command.AutoRefreshNumber      = 1;
  Command.ModeRegisterDefinition = 0;

  /* Send the command */
  HAL_SDRAM_SendCommand(&sdramHandle, &Command, SDRAM_TIMEOUT);

  /* Step 2: Insert 100 us minimum delay */
  /* Inserted delay is equal to 1 ms due to systick time base unit (ms) */
  //HAL_Delay(1);

  unsigned int loops = 216000;
  while (loops--)
    __asm("nop");

  /* Step 3: Configure a PALL (precharge all) command */
  Command.CommandMode            = FMC_SDRAM_CMD_PALL;
  Command.CommandTarget          = FMC_SDRAM_CMD_TARGET_BANK1;
  Command.AutoRefreshNumber      = 1;
  Command.ModeRegisterDefinition = 0;

  /* Send the command */
  HAL_SDRAM_SendCommand(&sdramHandle, &Command, SDRAM_TIMEOUT);

  /* Step 4: Configure an Auto Refresh command */
  Command.CommandMode            = FMC_SDRAM_CMD_AUTOREFRESH_MODE;
  Command.CommandTarget          = FMC_SDRAM_CMD_TARGET_BANK1;
  Command.AutoRefreshNumber      = 8;
  Command.ModeRegisterDefinition = 0;

  /* Send the command */
  HAL_SDRAM_SendCommand(&sdramHandle, &Command, SDRAM_TIMEOUT);

  /* Step 5: Program the external memory mode register */
  tmpmrd = (uint32_t)SDRAM_MODEREG_BURST_LENGTH_1          |\
	                     SDRAM_MODEREG_BURST_TYPE_SEQUENTIAL   |\
	                     SDRAM_MODEREG_CAS_LATENCY_2           |\
	                     SDRAM_MODEREG_OPERATING_MODE_STANDARD |\
	                     SDRAM_MODEREG_WRITEBURST_MODE_SINGLE;

  Command.CommandMode            = FMC_SDRAM_CMD_LOAD_MODE;
  Command.CommandTarget          = FMC_SDRAM_CMD_TARGET_BANK1;
  Command.AutoRefreshNumber      = 1;
  Command.ModeRegisterDefinition = tmpmrd;

  /* Send the command */
  HAL_SDRAM_SendCommand(&sdramHandle, &Command, SDRAM_TIMEOUT);

  /* Step 6: Set the refresh rate counter */
  /* Set the device refresh rate */
  HAL_SDRAM_ProgramRefreshRate(&sdramHandle, RefreshCount);
}

void SDRam::msp_init()
{


  GPIO_InitTypeDef gpio_init_structure;

  /* Enable FMC clock */
  __HAL_RCC_FMC_CLK_ENABLE();

  /* Enable GPIOs clock */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOG_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();

  /* Common GPIO configuration */
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Pull      = GPIO_PULLUP;
  gpio_init_structure.Speed     = GPIO_SPEED_FAST;
  gpio_init_structure.Alternate = GPIO_AF12_FMC;

  /* GPIOC configuration */
  gpio_init_structure.Pin   = GPIO_PIN_3;
  HAL_GPIO_Init(GPIOC, &gpio_init_structure);

  /* GPIOD configuration */
  gpio_init_structure.Pin   = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_3 | GPIO_PIN_8 | GPIO_PIN_9 |
                              GPIO_PIN_10 | GPIO_PIN_14 | GPIO_PIN_15;
  HAL_GPIO_Init(GPIOD, &gpio_init_structure);

  /* GPIOE configuration */
  gpio_init_structure.Pin   = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_7| GPIO_PIN_8 | GPIO_PIN_9 |\
                              GPIO_PIN_10 | GPIO_PIN_11 | GPIO_PIN_12 | GPIO_PIN_13 | GPIO_PIN_14 |\
                              GPIO_PIN_15;
  HAL_GPIO_Init(GPIOE, &gpio_init_structure);

  /* GPIOF configuration */
  gpio_init_structure.Pin   = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2| GPIO_PIN_3 | GPIO_PIN_4 |\
                              GPIO_PIN_5 | GPIO_PIN_11 | GPIO_PIN_12 | GPIO_PIN_13 | GPIO_PIN_14 |\
                              GPIO_PIN_15;
  HAL_GPIO_Init(GPIOF, &gpio_init_structure);

  /* GPIOG configuration */
  gpio_init_structure.Pin   = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_4| GPIO_PIN_5 | GPIO_PIN_8 |\
                              GPIO_PIN_15;
  HAL_GPIO_Init(GPIOG, &gpio_init_structure);

  /* GPIOH configuration */
  gpio_init_structure.Pin   = GPIO_PIN_3 | GPIO_PIN_5;
  HAL_GPIO_Init(GPIOH, &gpio_init_structure);
}
