#include "lcd.h"
#include "font.h"

#define   USE_SYNC_GPIO    1
//#define   USE_SYNC_GPIO    0



//--------------------------------------------------------------
// Display Timing
//--------------------------------------------------------------
#define  RK043FN48H_HSYNC            ((uint16_t)41)   /* Horizontal synchronization */
#define  RK043FN48H_HBP              ((uint16_t)13)   /* Horizontal back porch      */
#define  RK043FN48H_HFP              ((uint16_t)32)   /* Horizontal front porch     */
#define  RK043FN48H_VSYNC            ((uint16_t)10)   /* Vertical synchronization   */
#define  RK043FN48H_VBP              ((uint16_t)2)    /* Vertical back porch        */
#define  RK043FN48H_VFP              ((uint16_t)2)    /* Vertical front porch       */
#define  RK043FN48H_FREQUENCY_DIVIDER    5            /* LCD Frequency divider      */


//--------------------------------------------------------------
// Display-Pin
//--------------------------------------------------------------
#define LCD_DISP_PIN                    GPIO_PIN_12
#define LCD_DISP_GPIO_PORT              GPIOI
#define LCD_DISP_GPIO_CLK_ENABLE()      __HAL_RCC_GPIOI_CLK_ENABLE()
#define LCD_DISP_GPIO_CLK_DISABLE()     __HAL_RCC_GPIOI_CLK_DISABLE()

//--------------------------------------------------------------
// Backlight-Pin
//--------------------------------------------------------------
#define LCD_BL_CTRL_PIN                  GPIO_PIN_3
#define LCD_BL_CTRL_GPIO_PORT            GPIOK
#define LCD_BL_CTRL_GPIO_CLK_ENABLE()    __HAL_RCC_GPIOK_CLK_ENABLE()
#define LCD_BL_CTRL_GPIO_CLK_DISABLE()   __HAL_RCC_GPIOK_CLK_DISABLE()





#define  LCD_MAXX           ((uint16_t)480)
#define  LCD_MAXY           ((uint16_t)272)
#define  LCD_PIXEL          LCD_MAXX*LCD_MAXY

#define  LCD_INIT_PAUSE   16600 //  1ms



/*
#define  LCD_FRAME_BUFFER    ((uint32_t)0xC0000000)
*/

#define  LCD_FRAME_OFFSET   ((uint32_t)(LCD_PIXEL*2))


#define  RK043FN48H_WIDTH    LCD_MAXX
#define  RK043FN48H_HEIGHT   LCD_MAXY


LCD lcd;

LCD::LCD()
{

}

LCD::~LCD()
{

}

void LCD::init(uint32_t *frame_buffer_address)
{
  frame_buffer = (uint32_t)frame_buffer_address;
  // beim init auf Landscape-Mode
  LCD_DISPLAY_MODE=LANDSCAPE;
  // init vom SDRAM
  // init dvom LCD
  lcd_480x272_init();

  aktCursorX = 0;
  aktCursorY = 0;
  aktCursorPos = 0;

  LCD_CurrentFrameBuffer  = frame_buffer;
  LCD_CurrentLayer = 0;
  LCD_CurrentOrientation=0;


  LayerInit_Fullscreen();

  SetLayer_1();
  FillLayer(RGB_COL_BLACK);
  SetLayer_2();
  FillLayer(RGB_COL_BLACK);

  SetLayer_1();

  Refresh();

}

uint32_t LCD::get_width()
{
  return RK043FN48H_WIDTH;
}

uint32_t LCD::get_height()
{
  return RK043FN48H_HEIGHT;
}

void LCD::lcd_480x272_init()
{
  /* Select the used LCD */

  /* The RK043FN48H LCD 480x272 is selected */
  /* Timing Configuration */
  hLtdcHandler.Init.HorizontalSync = (RK043FN48H_HSYNC - 1);
  hLtdcHandler.Init.VerticalSync = (RK043FN48H_VSYNC - 1);
  hLtdcHandler.Init.AccumulatedHBP = (RK043FN48H_HSYNC + RK043FN48H_HBP - 1);
  hLtdcHandler.Init.AccumulatedVBP = (RK043FN48H_VSYNC + RK043FN48H_VBP - 1);
  hLtdcHandler.Init.AccumulatedActiveH = (RK043FN48H_HEIGHT + RK043FN48H_VSYNC + RK043FN48H_VBP - 1);
  hLtdcHandler.Init.AccumulatedActiveW = (RK043FN48H_WIDTH + RK043FN48H_HSYNC + RK043FN48H_HBP - 1);
  hLtdcHandler.Init.TotalHeigh = (RK043FN48H_HEIGHT + RK043FN48H_VSYNC + RK043FN48H_VBP + RK043FN48H_VFP - 1);
  hLtdcHandler.Init.TotalWidth = (RK043FN48H_WIDTH + RK043FN48H_HSYNC + RK043FN48H_HBP + RK043FN48H_HFP - 1);

  /* LCD clock configuration */
  lcd_480x272_ClockConfig();

  /* Initialize the LCD pixel width and pixel height */
  hLtdcHandler.LayerCfg->ImageWidth  = RK043FN48H_WIDTH;
  hLtdcHandler.LayerCfg->ImageHeight = RK043FN48H_HEIGHT;

  /* Background value */
  hLtdcHandler.Init.Backcolor.Blue = 0;
  hLtdcHandler.Init.Backcolor.Green = 0;
  hLtdcHandler.Init.Backcolor.Red = 0;

  /* Polarity */
  hLtdcHandler.Init.HSPolarity = LTDC_HSPOLARITY_AL;
  hLtdcHandler.Init.VSPolarity = LTDC_VSPOLARITY_AL;
  hLtdcHandler.Init.DEPolarity = LTDC_DEPOLARITY_AL;
  hLtdcHandler.Init.PCPolarity = LTDC_PCPOLARITY_IPC;
  hLtdcHandler.Instance = LTDC;

  if(HAL_LTDC_GetState(&hLtdcHandler) == HAL_LTDC_STATE_RESET)
  {
    /* Initialize the LCD Msp: this __weak function can be rewritten by the application */
    lcd_480x272_MspInit();
  }
  HAL_LTDC_Init(&hLtdcHandler);

  /* Assert display enable LCD_DISP pin */
  HAL_GPIO_WritePin(LCD_DISP_GPIO_PORT, LCD_DISP_PIN, GPIO_PIN_SET);

  /* Assert backlight LCD_BL_CTRL pin */
  HAL_GPIO_WritePin(LCD_BL_CTRL_GPIO_PORT, LCD_BL_CTRL_PIN, GPIO_PIN_SET);
}


void LCD::LayerInit_Fullscreen()
{
  LTDC_LayerCfgTypeDef  layer_cfg;

  // Layer 0
  layer_cfg.WindowX0 = 0;
  layer_cfg.WindowX1 = LCD_MAXX;
  layer_cfg.WindowY0 = 0;
  layer_cfg.WindowY1 = LCD_MAXY;
  layer_cfg.PixelFormat = LTDC_PIXEL_FORMAT_RGB565;
  layer_cfg.FBStartAdress = frame_buffer;
  layer_cfg.Alpha = 255;
  layer_cfg.Alpha0 = 0;
  layer_cfg.Backcolor.Blue = 0;
  layer_cfg.Backcolor.Green = 0;
  layer_cfg.Backcolor.Red = 0;
  layer_cfg.BlendingFactor1 = LTDC_BLENDING_FACTOR1_PAxCA;
  layer_cfg.BlendingFactor2 = LTDC_BLENDING_FACTOR2_PAxCA;
  layer_cfg.ImageWidth = LCD_MAXX;
  layer_cfg.ImageHeight = LCD_MAXY;
  HAL_LTDC_ConfigLayer(&hLtdcHandler, &layer_cfg, 0);

  // Layer 1
  layer_cfg.WindowX0 = 0;
  layer_cfg.WindowX1 = LCD_MAXX;
  layer_cfg.WindowY0 = 0;
  layer_cfg.WindowY1 = LCD_MAXY;
  layer_cfg.PixelFormat = LTDC_PIXEL_FORMAT_RGB565;
  layer_cfg.FBStartAdress = frame_buffer+LCD_FRAME_OFFSET;
  layer_cfg.Alpha = 255;
  layer_cfg.Alpha0 = 0;
  layer_cfg.Backcolor.Blue = 0;
  layer_cfg.Backcolor.Green = 0;
  layer_cfg.Backcolor.Red = 0;
  layer_cfg.BlendingFactor1 = LTDC_BLENDING_FACTOR1_PAxCA;
  layer_cfg.BlendingFactor2 = LTDC_BLENDING_FACTOR2_PAxCA;
  layer_cfg.ImageWidth = LCD_MAXX;
  layer_cfg.ImageHeight = LCD_MAXY;
  HAL_LTDC_ConfigLayer(&hLtdcHandler, &layer_cfg, 1);
}


void LCD::SetLayer_1()
{
  LCD_CurrentFrameBuffer = frame_buffer;
  LCD_CurrentLayer = 0;
}



void LCD::SetLayer_2()
{
  LCD_CurrentFrameBuffer = frame_buffer + LCD_FRAME_OFFSET;
  LCD_CurrentLayer = 1;
}



void LCD::FillLayer(uint16_t color)
{
  uint32_t index = 0;

  for (index = 0x00; index < LCD_FRAME_OFFSET; index+=2)
  {
    *(volatile uint16_t*)(LCD_CurrentFrameBuffer + index) = color;
  }
}



void LCD::SetTransparency(uint8_t transparency)
{
  if (LCD_CurrentLayer == 0)
  {
    HAL_LTDC_SetAlpha(&hLtdcHandler, transparency, 0);
  }
  else
  {
    HAL_LTDC_SetAlpha(&hLtdcHandler, transparency, 1);
  }
}


void LCD::SetCursor2Draw(uint16_t xpos, uint16_t ypos)
{
  if (xpos > get_width()-1)
    xpos = get_width()-1;

  if (ypos > get_height()-1)
    ypos = get_height()-1;
  aktCursorX=xpos;
  aktCursorY=ypos;

  aktCursorPos=LCD_CurrentFrameBuffer+(2*((aktCursorY*LCD_MAXX)+aktCursorX));
}

void LCD::SetCursor3Draw(int16_t xpos, int16_t ypos, int16_t zpos)
{
  int16_t tmp_x = xpos - (zpos*7)/10;
  int16_t tmp_y = ypos - (zpos*7)/10;

  if (tmp_x < 0)
    tmp_x = 0;

  if (tmp_y < 0)
    tmp_y = 0;

  if (tmp_x >= (int)(get_width()-1))
    tmp_x = get_width()-1;

  if (tmp_y >= (int)(get_height()-1))
    tmp_y = get_height()-1;

  SetCursor2Draw(tmp_x, tmp_y);
}




void LCD::DrawPixel(uint16_t color)
{
  *(volatile uint16_t*)(aktCursorPos)=color;

  if(LCD_DISPLAY_MODE==LANDSCAPE)
  {
    aktCursorX++;
    if(aktCursorX>=LCD_MAXX)
    {
      aktCursorX=0;
      aktCursorY++;
      if(aktCursorY>=LCD_MAXY) aktCursorY=0;
    }
  }
  else
  {
    aktCursorY++;
    if(aktCursorY>=LCD_MAXY)
    {
      aktCursorY=0;
      aktCursorX++;
      if(aktCursorX>=LCD_MAXX) aktCursorX=0;
    }
  }

  aktCursorPos=LCD_CurrentFrameBuffer+(2*((aktCursorY*LCD_MAXX)+aktCursorX));
}

void LCD::DrawPixel(uint8_t r, uint8_t g, uint8_t b)
{
  unsigned int tmp = (b >> 3) | ((g >> 2) << 5) | ((r >> 3) << 11);
    DrawPixel(tmp);
}

void LCD::DrawPixel(int xpos, int ypos, uint8_t r, uint8_t g, uint8_t b)
{
  unsigned int tmp = (b >> 3) | ((g >> 2) << 5) | ((r >> 3) << 11);

  SetCursor2Draw(xpos, ypos);
  DrawPixel(tmp);
}

void LCD::swap(int* a,int* b)
{
	int t=*a;
	*a=*b;
	*b=t;
}

void LCD::DrawLine(int xpos_start, int ypos_start,
                    int xpos_end, int ypos_end,
                    uint8_t r, uint8_t g, uint8_t b)
{
  int dx, dy;
  int d, incry, incre, incrne;
  int slopegt1=0;

  dx = xpos_start - xpos_end;
  if (dx < 0)
    dx = -dx;

  dy = ypos_start-ypos_end;
  if (dy < 0)
    dy = -dy;

  if(dy > dx)
  {
  	swap(&xpos_start,&ypos_start);
  	swap(&xpos_end,&ypos_end);
  	swap(&dx,&dy);
  	slopegt1=1;
  }

  if(xpos_start > xpos_end)
  {
  	swap(&xpos_start,&xpos_end);
  	swap(&ypos_start,&ypos_end);
  }
  if(ypos_start>ypos_end)
  	incry=-1;
  else
  	incry=1;

  d=2*dy-dx;
  incre=2*dy;
  incrne=2*(dy-dx);

  while(xpos_start < xpos_end)
  {
  	if(d<=0)
  		d+=incre;
  	else
  	{
  		d+=incrne;
  		ypos_start+=incry;
  	}
  	xpos_start++;

  	if(slopegt1)
  		SetCursor2Draw(ypos_start, xpos_start);
  	else
  		SetCursor2Draw(xpos_start, ypos_start);

    DrawPixel(r, g, b);
  }
}

void LCD::DrawRectangle(int xpos, int ypos, int width, int height, uint8_t r, uint8_t g, uint8_t b, bool centered)
{
  for (int y = 0; y < height; y++)
    for (int x = 0; x < width; x++)
    {
      int x_ = x + xpos;
      int y_ = y + ypos;

      if (centered)
      {
        x_-= width/2;
        y_-= height/2;
      }

      if (x_ < 0)
        x_ = 0;

      if (y_ < 0)
        y_ = 0;
      DrawPixel(x_, y_, r, g, b);
    }
}

void LCD::PlotGraph(struct sGraph graph)
{
  int x_max = graph.x_points[0];
  int x_min = graph.x_points[0];

  int y_max = graph.y_points[0];
  int y_min = graph.y_points[0];

  for (unsigned int i = 0; i < graph.points_count; i++)
  {
    if (graph.x_points[i] > x_max)
      x_max = graph.x_points[i];
    if (graph.x_points[i] < x_min)
      x_min = graph.x_points[i];

    if (graph.y_points[i] > y_max)
      y_max = graph.y_points[i];
    if (graph.y_points[i] < y_min)
      y_min = graph.y_points[i];
  }

  int xs = map(x_min, x_max, 0, get_width(), graph.x_points[0]);
  int ys = map(y_min, y_max, 0, get_height(), graph.y_points[0]);

  for (unsigned int i = 1; i < graph.points_count; i++)
  {
    int x = map(x_min, x_max, 0, get_width(), graph.x_points[i]);
    int y = map(y_min, y_max, 0, get_height(), graph.y_points[i]);

    DrawLine(xs, ys, x, y, graph.r, graph.g, graph.b);
    xs = x;
    ys = y;
    //DrawPixel(x, y, graph.r, graph.g, graph.b);
  }
}

uint16_t LCD::GetPixel()
{
  uint16_t color = *(volatile uint16_t*)(aktCursorPos);
  return color;
}




void LCD::SetMode(LCD_MODE_t mode)
{
  if(mode==PORTRAIT)
  {
    LCD_DISPLAY_MODE=PORTRAIT;
  }
  else
  {
    LCD_DISPLAY_MODE=LANDSCAPE;
  }
}



void LCD::Rotate_0()
{
  LCD_CurrentOrientation=0;
}


void LCD::Rotate_180()
{
  LCD_CurrentOrientation=1;
}


void LCD::Copy_Layer1_to_Layer2()
{
  uint32_t index;
  uint32_t input = frame_buffer;
  uint32_t output = frame_buffer + LCD_FRAME_OFFSET;

  for (index = 0 ; index < LCD_FRAME_OFFSET;index+=2)
  {
    *(volatile uint16_t*)(output + index) = *(volatile uint16_t*)(input + index);
  }
}



void LCD::Copy_Layer2_to_Layer1()
{
  uint32_t index;
  uint32_t input = frame_buffer + LCD_FRAME_OFFSET;
  uint32_t output = frame_buffer;

  for (index = 0 ; index < LCD_FRAME_OFFSET;index+=2)
  {
    *(volatile uint16_t*)(output + index) = *(volatile uint16_t*)(input + index);
  }
}



void LCD::Refresh()
{
  if(LCD_CurrentLayer==0)
  {
    SetLayer_2();
    SetTransparency(0);
  }
  else
  {
    SetTransparency(255);
    SetLayer_1();
  }
}

void LCD::Puts(int xpos, int ypos, char *str, uint8_t r,  uint8_t g,  uint8_t b)
{
  unsigned int ptr = 0;
  while (str[ptr] != '\0')
  {
    PutCh(xpos + ptr*FONT_MEDIUM_WIDTH/2, ypos, str[ptr], r, g, b);
    ptr++;
  }
}

void LCD::PutInt(int xpos, int ypos, int value)
{
  char flag = 0, s[12];
	unsigned char ptr;

	if (value < 0)
 	{
  		value = -value;
		flag = 1;
	}

	s[11] = '\0';
	ptr = 10;

	do
	{
    	s[ptr] = '0' + (value%10);
    	value/= 10;
    	ptr--;
	}
    while (value != 0);

	if (flag)
		s[ptr] = '-';
	else
		ptr++;

  Puts(xpos, ypos, s+ ptr);
}

void LCD::PutCh(int xpos, int ypos, unsigned int c, uint8_t rc,  uint8_t gc,  uint8_t bc)
{
  if (c < ' ')
    c = ' ';

  c-= ' ';

  unsigned int font_width   = FONT_MEDIUM_WIDTH;
  unsigned int font_height  = FONT_MEDIUM_HEIGHT;

  uint32_t idx = (uint32_t)c*font_width*(font_height>>3);

	for (unsigned int j = 0; j < font_height; j++)
		for (unsigned int i = 0; i < font_width; i++)
		{
			uint32_t tmp_x = font_height - j + xpos;
			uint32_t tmp_y = i + ypos;

			uint8_t b = font_medium_data[idx + i + 8*(j/8)];
			uint8_t shift = j;

      if (b&(1<<shift))
        DrawPixel(tmp_x, tmp_y, rc, gc, bc);
      else
        DrawPixel(tmp_x, tmp_y, 0, 0, 0);
		}
}



int LCD::map(int source_min, int source_max, int dest_min, int dest_max, int value)
{
  int result = 0;

  if (source_max != source_min)
  {
    result+= ((dest_max - dest_min)*value)/(source_max - source_min);
    result+= dest_max - ((dest_max - dest_min)*source_max)/(source_max - source_min);
  }

  return result;
}














void LCD::lcd_480x272_ClockConfig()
{
  static RCC_PeriphCLKInitTypeDef  periph_clk_init_struct;

  /* RK043FN48H LCD clock configuration */
  /* PLLSAI_VCO Input = HSE_VALUE/PLL_M = 1 Mhz */
  /* PLLSAI_VCO Output = PLLSAI_VCO Input * PLLSAIN = 192 Mhz */
  /* PLLLCDCLK = PLLSAI_VCO Output/PLLSAIR = 192/5 = 38.4 Mhz */
  /* LTDC clock frequency = PLLLCDCLK / LTDC_PLLSAI_DIVR_4 = 38.4/4 = 9.6Mhz */
  periph_clk_init_struct.PeriphClockSelection = RCC_PERIPHCLK_LTDC;
  periph_clk_init_struct.PLLSAI.PLLSAIN = 192;
  periph_clk_init_struct.PLLSAI.PLLSAIR = RK043FN48H_FREQUENCY_DIVIDER;
  periph_clk_init_struct.PLLSAIDivR = RCC_PLLSAIDIVR_4;
  HAL_RCCEx_PeriphCLKConfig(&periph_clk_init_struct);
}


void LCD::lcd_480x272_MspInit()
{
  GPIO_InitTypeDef gpio_init_structure;

  /* Enable the LTDC and DMA2D clocks */
  __HAL_RCC_LTDC_CLK_ENABLE();
  __HAL_RCC_DMA2D_CLK_ENABLE();

  /* Enable GPIOs clock */
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOG_CLK_ENABLE();
  __HAL_RCC_GPIOI_CLK_ENABLE();
  __HAL_RCC_GPIOJ_CLK_ENABLE();
  __HAL_RCC_GPIOK_CLK_ENABLE();
  LCD_DISP_GPIO_CLK_ENABLE();
  LCD_BL_CTRL_GPIO_CLK_ENABLE();

  /*** LTDC Pins configuration ***/
  /* GPIOE configuration */
  gpio_init_structure.Pin       = GPIO_PIN_4;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Pull      = GPIO_NOPULL;
  gpio_init_structure.Speed     = GPIO_SPEED_FAST;
  gpio_init_structure.Alternate = GPIO_AF14_LTDC;
  HAL_GPIO_Init(GPIOE, &gpio_init_structure);

  /* GPIOG configuration */
  gpio_init_structure.Pin       = GPIO_PIN_12;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Alternate = GPIO_AF9_LTDC;
  HAL_GPIO_Init(GPIOG, &gpio_init_structure);

  /* GPIOI LTDC alternate configuration */
#if USE_SYNC_GPIO==1
  gpio_init_structure.Pin       = GPIO_PIN_8 | GPIO_PIN_9 | GPIO_PIN_10 | \
                                  GPIO_PIN_13 | GPIO_PIN_14 | GPIO_PIN_15;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Alternate = GPIO_AF14_LTDC;
  HAL_GPIO_Init(GPIOI, &gpio_init_structure);
#else
  gpio_init_structure.Pin       = GPIO_PIN_8 | \
                                  GPIO_PIN_13 | GPIO_PIN_14 | GPIO_PIN_15;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Alternate = GPIO_AF14_LTDC;
  HAL_GPIO_Init(GPIOI, &gpio_init_structure);
#endif

  /* GPIOJ configuration */
  gpio_init_structure.Pin       = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3 | \
                                  GPIO_PIN_4 | GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_7 | \
                                  GPIO_PIN_8 | GPIO_PIN_9 | GPIO_PIN_10 | GPIO_PIN_11 | \
                                  GPIO_PIN_13 | GPIO_PIN_14 | GPIO_PIN_15;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Alternate = GPIO_AF14_LTDC;
  HAL_GPIO_Init(GPIOJ, &gpio_init_structure);

  /* GPIOK configuration */
  gpio_init_structure.Pin       = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_4 | \
                                  GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_7;
  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
  gpio_init_structure.Alternate = GPIO_AF14_LTDC;
  HAL_GPIO_Init(GPIOK, &gpio_init_structure);

  /* LCD_DISP GPIO configuration */
  gpio_init_structure.Pin       = LCD_DISP_PIN;     /* LCD_DISP pin has to be manually controlled */
  gpio_init_structure.Mode      = GPIO_MODE_OUTPUT_PP;
  HAL_GPIO_Init(LCD_DISP_GPIO_PORT, &gpio_init_structure);

  /* LCD_BL_CTRL GPIO configuration */
  gpio_init_structure.Pin       = LCD_BL_CTRL_PIN;  /* LCD_BL_CTRL pin has to be manually controlled */
  gpio_init_structure.Mode      = GPIO_MODE_OUTPUT_PP;
  HAL_GPIO_Init(LCD_BL_CTRL_GPIO_PORT, &gpio_init_structure);
}
