#include "mem.h"
#include <terminal.h>

extern unsigned int __heap_start__;

Mem mem;

Mem::Mem()
{
  init();
}

Mem::~Mem()
{

}

void Mem::init()
{
  mem_ptr = (unsigned char*)(&__heap_start__);
}

void Mem::print()
{
  terminal.printf("heap start 0x%x, current 0x%x \n", &__heap_start__, mem_ptr);

  terminal.printf("\n");
}

void *Mem::malloc(unsigned int size)
{
  unsigned char *mem_res = mem_ptr;
  mem_ptr+= size;
  return (void*)mem_res;
}

void Mem::free(void *p)
{
    (void)p;
}

void Mem::clean()
{
  mem_ptr = (unsigned char*)(&__heap_start__);
}


void * operator new(unsigned int size)
{
    return mem.malloc(size);
}

void operator delete(void *p)
{
  mem.free(p);
}

void* operator new[](unsigned int size)
{
    return operator new(size); // Same as regular new
}

void operator delete[](void *p)
{
    operator delete(p); // Same as regular delete
}
