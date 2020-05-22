#ifndef _FL5336_H_
#define _FL5336_H_

#include <kodama.h>

#define MAX_TOUCH_COUNT   ((unsigned int)5)

struct sTouchResult
{
  int x, y;
  bool pressed;
};

class FT5336
{
  private:
    CI2C_Interface *i2c;
    unsigned int detected_count;

  public:
    sTouchResult result[MAX_TOUCH_COUNT];

  public:
    FT5336();
    ~FT5336();

    int init(CI2C_Interface *i2c_);
    void read();

    unsigned int get_detected_count();

  private:
    //return count of touches
    unsigned char detect_touch();

    void clear_result();
    sTouchResult get_touch_result(unsigned int touch_id);
};



#endif
