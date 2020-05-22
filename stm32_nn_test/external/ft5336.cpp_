#include "ft5336.h"
#include "ft5336_regs.h"

#define FT5336_ADDRESS   ((unsigned char)0x70) //try (0x70 << 1) ???


FT5336::FT5336()
{

}

FT5336::~FT5336()
{

}

int FT5336::init(CI2C_Interface *i2c_)
{
  this->i2c = i2c_;
  timer.delay_ms(200);

  clear_result();
  detected_count = 0;

  unsigned char res = i2c->read_reg(FT5336_ADDRESS, FT5336_CHIP_ID_REG);

  if (res != FT5336_ID_VALUE)
    return -1;

  return 0;
}

void FT5336::read()
{
  clear_result();

  unsigned int count = detect_touch();
  detected_count = count;

  for (unsigned int i = 0; i < count; i++)
    result[i] = get_touch_result(i);
}

unsigned int FT5336::get_detected_count()
{
  return detected_count;
}

unsigned char FT5336::detect_touch()
{
  unsigned char count_res = 0;

  // Read register FT5336_TD_STAT_REG to check number of touches detection
  count_res = i2c->read_reg(FT5336_ADDRESS, FT5336_TD_STAT_REG);
  count_res &= FT5336_TD_STAT_MASK;

  // If invalid number of touch detected, set it to zero
  if(count_res > MAX_TOUCH_COUNT)
    count_res = 0;

  return count_res;
}

void FT5336::clear_result()
{
  for (unsigned int i = 0; i < MAX_TOUCH_COUNT; i++)
  {
    result[i].x = 0;
    result[i].y = 0;
    result[i].pressed = false;
  }
}





sTouchResult FT5336::get_touch_result(unsigned int touch_id)
{
  sTouchResult point;
  point.x = 0;
  point.x = 0;
  point.pressed = true;



  unsigned char regAddressXLow = 0;
  unsigned char regAddressXHigh = 0;
  unsigned char regAddressYLow = 0;
  unsigned char regAddressYHigh = 0;

  switch(touch_id)
  {
    case 0 :
      regAddressXLow  = FT5336_P1_XL_REG;
      regAddressXHigh = FT5336_P1_XH_REG;
      regAddressYLow  = FT5336_P1_YL_REG;
      regAddressYHigh = FT5336_P1_YH_REG;
      break;

    case 1 :
      regAddressXLow  = FT5336_P2_XL_REG;
      regAddressXHigh = FT5336_P2_XH_REG;
      regAddressYLow  = FT5336_P2_YL_REG;
      regAddressYHigh = FT5336_P2_YH_REG;
      break;

    case 2 :
      regAddressXLow  = FT5336_P3_XL_REG;
      regAddressXHigh = FT5336_P3_XH_REG;
      regAddressYLow  = FT5336_P3_YL_REG;
      regAddressYHigh = FT5336_P3_YH_REG;
      break;

    case 3 :
      regAddressXLow  = FT5336_P4_XL_REG;
      regAddressXHigh = FT5336_P4_XH_REG;
      regAddressYLow  = FT5336_P4_YL_REG;
      regAddressYHigh = FT5336_P4_YH_REG;
      break;

    case 4 :
      regAddressXLow  = FT5336_P5_XL_REG;
      regAddressXHigh = FT5336_P5_XH_REG;
      regAddressYLow  = FT5336_P5_YL_REG;
      regAddressYHigh = FT5336_P5_YH_REG;
      break;

    case 5 :
      regAddressXLow  = FT5336_P6_XL_REG;
      regAddressXHigh = FT5336_P6_XH_REG;
      regAddressYLow  = FT5336_P6_YL_REG;
      regAddressYHigh = FT5336_P6_YH_REG;
      break;

    case 6 :
      regAddressXLow  = FT5336_P7_XL_REG;
      regAddressXHigh = FT5336_P7_XH_REG;
      regAddressYLow  = FT5336_P7_YL_REG;
      regAddressYHigh = FT5336_P7_YH_REG;
      break;

    case 7 :
      regAddressXLow  = FT5336_P8_XL_REG;
      regAddressXHigh = FT5336_P8_XH_REG;
      regAddressYLow  = FT5336_P8_YL_REG;
      regAddressYHigh = FT5336_P8_YH_REG;
      break;

    case 8 :
      regAddressXLow  = FT5336_P9_XL_REG;
      regAddressXHigh = FT5336_P9_XH_REG;
      regAddressYLow  = FT5336_P9_YL_REG;
      regAddressYHigh = FT5336_P9_YH_REG;
      break;

    case 9 :
      regAddressXLow  = FT5336_P10_XL_REG;
      regAddressXHigh = FT5336_P10_XH_REG;
      regAddressYLow  = FT5336_P10_YL_REG;
      regAddressYHigh = FT5336_P10_YH_REG;
      break;

    default :
      break;

    }

    unsigned char tmp;
    uint16_t tmp_pos;

    // Read low part of X position
    tmp = i2c->read_reg(FT5336_ADDRESS, regAddressXLow);
    tmp_pos = (tmp & FT5336_TOUCH_POS_LSB_MASK) >> FT5336_TOUCH_POS_LSB_SHIFT;

    // Read high part of X position
    tmp = i2c->read_reg(FT5336_ADDRESS, regAddressXHigh);
    tmp_pos |= ((tmp & FT5336_TOUCH_POS_MSB_MASK) >> FT5336_TOUCH_POS_MSB_SHIFT) << 8;

    // Send back ready X position to caller
    point.x = tmp_pos;

    // Read low part of Y position
    tmp = i2c->read_reg(FT5336_ADDRESS, regAddressYLow);
    tmp_pos = (tmp & FT5336_TOUCH_POS_LSB_MASK) >> FT5336_TOUCH_POS_LSB_SHIFT;

    // Read high part of Y position
    tmp = i2c->read_reg(FT5336_ADDRESS, regAddressYHigh);
    tmp_pos |= ((tmp & FT5336_TOUCH_POS_MSB_MASK) >> FT5336_TOUCH_POS_MSB_SHIFT) << 8;

    // Send back ready Y position to caller
    point.y = tmp_pos;

    point.pressed = true;

    return point;
}
