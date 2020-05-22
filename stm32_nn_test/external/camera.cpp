#include "camera.h"

DCMI_HandleTypeDef camera_dcmi;
DMA_HandleTypeDef camera_hdma_handler;
volatile uint32_t camera_refresh = 0;

#define CAMERA_QQVGA_RES_X        160
#define CAMERA_QQVGA_RES_Y        120

#define CAMERA_VGA_RES_X          640
#define CAMERA_VGA_RES_Y          480
#define CAMERA_480_RES_X          480
#define CAMERA_272_RES_Y          272


#ifdef __cplusplus
extern "C" {
#endif

void DMA2_Stream1_IRQHandler()
{
  HAL_DMA_IRQHandler(&camera_hdma_handler);
}

void DCMI_IRQHandler()
{
  HAL_DCMI_IRQHandler(&camera_dcmi);
}


void HAL_DCMI_FrameEventCallback(DCMI_HandleTypeDef *dcmi)
{ 
  (void)dcmi;
  camera_refresh = 1;
}

#ifdef __cplusplus
}
#endif



/* Initialization sequence for QQVGA resolution (160x120) */
const unsigned char OV9655_QQVGA[][2]=
{
  {0x00, 0x00},
  {0x01, 0x80},
  {0x02, 0x80},
  {0x03, 0x02},
  {0x04, 0x03},
  {0x09, 0x01},
  {0x0b, 0x57},
  {0x0e, 0x61},
  {0x0f, 0x40},
  {0x11, 0x01},
  {0x12, 0x62},
  {0x13, 0xc7},
  {0x14, 0x3a},
  {0x16, 0x24},
  {0x17, 0x18},
  {0x18, 0x04},
  {0x19, 0x01},
  {0x1a, 0x81},
  {0x1e, 0x00},
  {0x24, 0x3c},
  {0x25, 0x36},
  {0x26, 0x72},
  {0x27, 0x08},
  {0x28, 0x08},
  {0x29, 0x15},
  {0x2a, 0x00},
  {0x2b, 0x00},
  {0x2c, 0x08},
  {0x32, 0xa4},
  {0x33, 0x00},
  {0x34, 0x3f},
  {0x35, 0x00},
  {0x36, 0x3a},
  {0x38, 0x72},
  {0x39, 0x57},
  {0x3a, 0xcc},
  {0x3b, 0x04},
  {0x3d, 0x99},
  {0x3e, 0x0e},
  {0x3f, 0xc1},
  {0x40, 0xc0},
  {0x41, 0x41},
  {0x42, 0xc0},
  {0x43, 0x0a},
  {0x44, 0xf0},
  {0x45, 0x46},
  {0x46, 0x62},
  {0x47, 0x2a},
  {0x48, 0x3c},
  {0x4a, 0xfc},
  {0x4b, 0xfc},
  {0x4c, 0x7f},
  {0x4d, 0x7f},
  {0x4e, 0x7f},
  {0x4f, 0x98},
  {0x50, 0x98},
  {0x51, 0x00},
  {0x52, 0x28},
  {0x53, 0x70},
  {0x54, 0x98},
  {0x58, 0x1a},
  {0x59, 0x85},
  {0x5a, 0xa9},
  {0x5b, 0x64},
  {0x5c, 0x84},
  {0x5d, 0x53},
  {0x5e, 0x0e},
  {0x5f, 0xf0},
  {0x60, 0xf0},
  {0x61, 0xf0},
  {0x62, 0x00},
  {0x63, 0x00},
  {0x64, 0x02},
  {0x65, 0x20},
  {0x66, 0x00},
  {0x69, 0x0a},
  {0x6b, 0x5a},
  {0x6c, 0x04},
  {0x6d, 0x55},
  {0x6e, 0x00},
  {0x6f, 0x9d},
  {0x70, 0x21},
  {0x71, 0x78},
  {0x72, 0x22},
  {0x73, 0x02},
  {0x74, 0x10},
  {0x75, 0x10},
  {0x76, 0x01},
  {0x77, 0x02},
  {0x7A, 0x12},
  {0x7B, 0x08},
  {0x7C, 0x16},
  {0x7D, 0x30},
  {0x7E, 0x5e},
  {0x7F, 0x72},
  {0x80, 0x82},
  {0x81, 0x8e},
  {0x82, 0x9a},
  {0x83, 0xa4},
  {0x84, 0xac},
  {0x85, 0xb8},
  {0x86, 0xc3},
  {0x87, 0xd6},
  {0x88, 0xe6},
  {0x89, 0xf2},
  {0x8a, 0x24},
  {0x8c, 0x80},
  {0x90, 0x7d},
  {0x91, 0x7b},
  {0x9d, 0x02},
  {0x9e, 0x02},
  {0x9f, 0x7a},
  {0xa0, 0x79},
  {0xa1, 0x40},
  {0xa4, 0x50},
  {0xa5, 0x68},
  {0xa6, 0x4a},
  {0xa8, 0xc1},
  {0xa9, 0xef},
  {0xaa, 0x92},
  {0xab, 0x04},
  {0xac, 0x80},
  {0xad, 0x80},
  {0xae, 0x80},
  {0xaf, 0x80},
  {0xb2, 0xf2},
  {0xb3, 0x20},
  {0xb4, 0x20},
  {0xb5, 0x00},
  {0xb6, 0xaf},
  {0xb6, 0xaf},
  {0xbb, 0xae},
  {0xbc, 0x7f},
  {0xbd, 0x7f},
  {0xbe, 0x7f},
  {0xbf, 0x7f},
  {0xbf, 0x7f},
  {0xc0, 0xaa},
  {0xc1, 0xc0},
  {0xc2, 0x01},
  {0xc3, 0x4e},
  {0xc6, 0x05},
  {0xc7, 0x82},
  {0xc9, 0xe0},
  {0xca, 0xe8},
  {0xcb, 0xf0},
  {0xcc, 0xd8},
  {0xcd, 0x93},
  {0x12, 0x63},
  {0x40, 0x10},
};


/* Initialization sequence for VGA resolution (640x480)*/
const unsigned char OV9655_VGA[][2]=
{
  {0x00, 0x00},
  {0x01, 0x80},
  {0x02, 0x80},
  {0xb5, 0x00},
  {0x35, 0x00},
  {0xa8, 0xc1},
  {0x3a, 0xcc},
  {0x3d, 0x99},
  {0x77, 0x02},
  {0x13, 0xe7},
  {0x26, 0x72},
  {0x27, 0x08},
  {0x28, 0x08},
  {0x2c, 0x08},
  {0xab, 0x04},
  {0x6e, 0x00},
  {0x6d, 0x55},
  {0x00, 0x11},
  {0x10, 0x7b},
  {0xbb, 0xae},
  {0x11, 0x03},
  {0x72, 0x00},
  {0x3e, 0x0c},
  {0x74, 0x3a},
  {0x76, 0x01},
  {0x75, 0x35},
  {0x73, 0x00},
  {0xc7, 0x80},
  {0x62, 0x00},
  {0x63, 0x00},
  {0x64, 0x02},
  {0x65, 0x20},
  {0x66, 0x01},
  {0xc3, 0x4e},
  {0x33, 0x00},
  {0xa4, 0x50},
  {0xaa, 0x92},
  {0xc2, 0x01},
  {0xc1, 0xc8},
  {0x1e, 0x04},
  {0xa9, 0xef},
  {0x0e, 0x61},
  {0x39, 0x57},
  {0x0f, 0x48},
  {0x24, 0x3c},
  {0x25, 0x36},
  {0x12, 0x63},
  {0x03, 0x12},
  {0x32, 0xff},
  {0x17, 0x16},
  {0x18, 0x02},
  {0x19, 0x01},
  {0x1a, 0x3d},
  {0x36, 0xfa},
  {0x69, 0x0a},
  {0x8c, 0x8d},
  {0xc0, 0xaa},
  {0x40, 0xd0},
  {0x43, 0x14},
  {0x44, 0xf0},
  {0x45, 0x46},
  {0x46, 0x62},
  {0x47, 0x2a},
  {0x48, 0x3c},
  {0x59, 0x85},
  {0x5a, 0xa9},
  {0x5b, 0x64},
  {0x5c, 0x84},
  {0x5d, 0x53},
  {0x5e, 0x0e},
  {0x6c, 0x0c},
  {0xc6, 0x85},
  {0xcb, 0xf0},
  {0xcc, 0xd8},
  {0x71, 0x78},
  {0xa5, 0x68},
  {0x6f, 0x9e},
  {0x42, 0xc0},
  {0x3f, 0x82},
  {0x8a, 0x23},
  {0x14, 0x3a},
  {0x3b, 0xcc},
  {0x34, 0x3d},
  {0x41, 0x40},
  {0xc9, 0xe0},
  {0xca, 0xe8},
  {0xcd, 0x93},
  {0x7a, 0x20},
  {0x7b, 0x1c},
  {0x7c, 0x28},
  {0x7d, 0x3c},
  {0x7e, 0x5a},
  {0x7f, 0x68},
  {0x80, 0x76},
  {0x81, 0x80},
  {0x82, 0x88},
  {0x83, 0x8f},
  {0x84, 0x96},
  {0x85, 0xa3},
  {0x86, 0xaf},
  {0x87, 0xc4},
  {0x88, 0xd7},
  {0x89, 0xe8},
  {0x4f, 0x98},
  {0x50, 0x98},
  {0x51, 0x00},
  {0x52, 0x28},
  {0x53, 0x70},
  {0x54, 0x98},
  {0x58, 0x1a},
  {0x6b, 0x5a},
  {0x90, 0x92},
  {0x91, 0x92},
  {0x9f, 0x90},
  {0xa0, 0x90},
  {0x16, 0x24},
  {0x2a, 0x00},
  {0x2b, 0x00},
  {0xac, 0x80},
  {0xad, 0x80},
  {0xae, 0x80},
  {0xaf, 0x80},
  {0xb2, 0xf2},
  {0xb3, 0x20},
  {0xb4, 0x20},
  {0xb6, 0xaf},
  {0x29, 0x15},
  {0x9d, 0x02},
  {0x9e, 0x02},
  {0x9e, 0x02},
  {0x04, 0x03},
  {0x05, 0x2e},
  {0x06, 0x2e},
  {0x07, 0x2e},
  {0x08, 0x2e},
  {0x2f, 0x2e},
  {0x4a, 0xe9},
  {0x4b, 0xdd},
  {0x4c, 0xdd},
  {0x4d, 0xdd},
  {0x4e, 0xdd},
  {0x70, 0x06},
  {0xa6, 0x40},
  {0xbc, 0x02},
  {0xbd, 0x01},
  {0xbe, 0x02},
  {0xbf, 0x01},
};










Camera::Camera()
{

}

Camera::~Camera()
{

}

int Camera::init()
{
  camera_refresh = 0;
  res_x = 0;
  res_y = 0;

  dcmi_pwr_en = 1;
  delay_loops(10000000);

  dcmi_pwr_en = 0;
  delay_loops(10000000);

 //read and check camera ID register
 i2c_dcmi.read_reg(OV9655_I2C_ADDRESS, OV9655_SENSOR_PIDH);

 /*
 if(i2c_dcmi.read_reg(OV9655_I2C_ADDRESS, OV9655_SENSOR_PIDH) != OV9655_ID)
  return -1;
*/
 //init DCMI
 camera_dcmi.Init.CaptureRate      = DCMI_CR_ALL_FRAME;
 camera_dcmi.Init.HSPolarity       = DCMI_HSPOLARITY_LOW;
 camera_dcmi.Init.SynchroMode      = DCMI_SYNCHRO_HARDWARE;
 camera_dcmi.Init.VSPolarity       = DCMI_VSPOLARITY_HIGH;
 camera_dcmi.Init.ExtendedDataMode = DCMI_EXTEND_DATA_8B;
 camera_dcmi.Init.PCKPolarity      = DCMI_PCKPOLARITY_RISING;
 camera_dcmi.Instance              = DCMI;


 __HAL_RCC_DCMI_CLK_ENABLE();

 MspInit();
 HAL_DCMI_Init(&camera_dcmi);


 // 160x120 QQVGA resolution

 res_x = CAMERA_QQVGA_RES_X;
 res_y = CAMERA_QQVGA_RES_Y;
 send_init_sequence_qqvga();
 HAL_DCMI_DisableCROP(&camera_dcmi);


/*
 // For 480x272 resolution, the OV9655 sensor is set to VGA resolution
 // as OV9655 doesn't supports 480x272 resolution,
// then DCMI is configured to output a 480x272 cropped window
res_x = CAMERA_480_RES_X;
res_y = CAMERA_272_RES_Y;
send_init_sequence_vga();

HAL_DCMI_ConfigCROP(&camera_dcmi,           // Crop in the middle of the VGA picture
                    (CAMERA_VGA_RES_X - res_x)/2,
                    (CAMERA_VGA_RES_Y - res_y)/2,
                    (res_x * 2) - 1,
                     res_y - 1);
HAL_DCMI_EnableCROP(&camera_dcmi);
*/
 return 0;
}


void Camera::delay_loops(unsigned int loops)
{
  while (loops--)
    __asm("nop");
}

void Camera::MspInit()
{
  GPIO_InitTypeDef gpio_init_structure;

  /*** Enable peripherals and GPIO clocks ***/
  /* Enable DCMI clock */
  __HAL_RCC_DCMI_CLK_ENABLE();

  /* Enable DMA2 clock */
  __HAL_RCC_DMA2_CLK_ENABLE();

  /* Enable GPIO clocks */
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOG_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();

  /*** Configure the GPIO ***/
  /* Configure DCMI GPIO as alternate function */
  gpio_init_structure.Pin       = GPIO_PIN_4 | GPIO_PIN_6;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Pull      = GPIO_PULLUP;
  gpio_init_structure.Speed     = GPIO_SPEED_HIGH;
  gpio_init_structure.Alternate = GPIO_AF13_DCMI;
  HAL_GPIO_Init(GPIOA, &gpio_init_structure);

  gpio_init_structure.Pin       = GPIO_PIN_3;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Pull      = GPIO_PULLUP;
  gpio_init_structure.Speed     = GPIO_SPEED_HIGH;
  gpio_init_structure.Alternate = GPIO_AF13_DCMI;
  HAL_GPIO_Init(GPIOD, &gpio_init_structure);

  gpio_init_structure.Pin       = GPIO_PIN_5 | GPIO_PIN_6;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Pull      = GPIO_PULLUP;
  gpio_init_structure.Speed     = GPIO_SPEED_HIGH;
  gpio_init_structure.Alternate = GPIO_AF13_DCMI;
  HAL_GPIO_Init(GPIOE, &gpio_init_structure);

  gpio_init_structure.Pin       = GPIO_PIN_9;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Pull      = GPIO_PULLUP;
  gpio_init_structure.Speed     = GPIO_SPEED_HIGH;
  gpio_init_structure.Alternate = GPIO_AF13_DCMI;
  HAL_GPIO_Init(GPIOG, &gpio_init_structure);

  gpio_init_structure.Pin       = GPIO_PIN_9 | GPIO_PIN_10  | GPIO_PIN_11  |\
                                  GPIO_PIN_12 | GPIO_PIN_14;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Pull      = GPIO_PULLUP;
  gpio_init_structure.Speed     = GPIO_SPEED_HIGH;
  gpio_init_structure.Alternate = GPIO_AF13_DCMI;
  HAL_GPIO_Init(GPIOH, &gpio_init_structure);

  /*** Configure the DMA ***/
  /* Set the parameters to be configured */
  camera_hdma_handler.Init.Channel             = DMA_CHANNEL_1;
  camera_hdma_handler.Init.Direction           = DMA_PERIPH_TO_MEMORY;
  camera_hdma_handler.Init.PeriphInc           = DMA_PINC_DISABLE;
  camera_hdma_handler.Init.MemInc              = DMA_MINC_ENABLE;
  camera_hdma_handler.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
  camera_hdma_handler.Init.MemDataAlignment    = DMA_MDATAALIGN_WORD;
  camera_hdma_handler.Init.Mode                = DMA_CIRCULAR;
  camera_hdma_handler.Init.Priority            = DMA_PRIORITY_HIGH;
  camera_hdma_handler.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;
  camera_hdma_handler.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
  camera_hdma_handler.Init.MemBurst            = DMA_MBURST_SINGLE;
  camera_hdma_handler.Init.PeriphBurst         = DMA_PBURST_SINGLE;

  camera_hdma_handler.Instance = DMA2_Stream1;


  /* Associate the initialized DMA handle to the DCMI handle */
  __HAL_LINKDMA(&camera_dcmi, DMA_Handle, camera_hdma_handler);

  /*** Configure the NVIC for DCMI and DMA ***/
  /* NVIC configuration for DCMI transfer complete interrupt */
  HAL_NVIC_SetPriority(DCMI_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DCMI_IRQn);

  /* NVIC configuration for DMA2D transfer complete interrupt */
  HAL_NVIC_SetPriority(DMA2_Stream1_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream1_IRQn);

  /* Configure the DMA stream */
  HAL_DMA_Init(camera_dcmi.DMA_Handle);
}

void Camera::stream_start(uint32_t *buffer)
{
  uint32_t size =  get_width()*get_height();
  HAL_DCMI_Start_DMA(&camera_dcmi, DCMI_MODE_CONTINUOUS, (uint32_t)buffer, size);
  this->buffer = buffer;
}

void Camera::snapshot_start(uint32_t *buffer)
{
  uint32_t size =  get_width()*get_height();
  HAL_DCMI_Start_DMA(&camera_dcmi, DCMI_MODE_SNAPSHOT, (uint32_t)buffer, size);
  this->buffer = buffer;
}

uint32_t Camera::need_refresh()
{
  if (camera_refresh)
  {
    camera_refresh = 0;
    return 1;
  }

  return 0;
}

uint32_t Camera::get_width()
{
  return res_x;
}

uint32_t Camera::get_height()
{
  return res_y;
}

uint32_t* Camera::get_buffer()
{
  return buffer;
}


void Camera::send_init_sequence_qqvga()
{
  i2c_dcmi.write_reg(OV9655_I2C_ADDRESS, OV9655_SENSOR_COM7, 0x80);

  delay_loops(20000);

  for(unsigned int i = 0; i < (sizeof(OV9655_QQVGA)/2); i++)
  {
    i2c_dcmi.write_reg(OV9655_I2C_ADDRESS, OV9655_QQVGA[i][0], OV9655_QQVGA[i][1]);
//    delay_loops(2000);
  }
}

void Camera::send_init_sequence_vga()
{
  i2c_dcmi.write_reg(OV9655_I2C_ADDRESS, OV9655_SENSOR_COM7, 0x80);

  delay_loops(20000);

  for(unsigned int i = 0; i < (sizeof(OV9655_VGA)/2); i++)
  {
    i2c_dcmi.write_reg(OV9655_I2C_ADDRESS, OV9655_VGA[i][0], OV9655_VGA[i][1]);
//    delay_loops(2000);
  }
}
