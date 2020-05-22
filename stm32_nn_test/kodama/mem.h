#ifndef _MEM_H_
#define _MEM_H_


class Mem
{
  friend class CTest;

  private:
    unsigned char *mem_ptr;

  public:
    Mem();
    ~Mem();

    void init();

    void print();

    void *malloc(unsigned int size);
    void free(void *p);

  private:
    void clean();
};


extern Mem mem;

void * operator new(unsigned int size);
void operator delete(void * p);

void* operator new[](unsigned int size) noexcept;
void operator delete[](void *p) noexcept;


#endif
