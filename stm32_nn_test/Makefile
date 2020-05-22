CXX_SRCS+= $(shell find . -name '*.cpp')

CXX_SRCS+= $(shell find  ../embedded_neural_nework -name '*.cpp')
INC_CPP+= -I ../embedded_neural_nework/


C_SRCS = device/startup.c
C_SRCS+= device/system.c
C_SRCS+= device/core.c

#C_SRCS+= main.c

C_SRCS+= $(shell find  ./device/CMSIS -name '*.c')
C_SRCS+= $(shell find  ./device/STM32F7xx_HAL_Driver/Src -name '*.c')



INC = -I .
INC+= -I ./device/CMSIS/
INC+= -I ./device/STM32F7xx_HAL_Driver/Inc/

INC_CPP+= -I ./drivers/
INC_CPP+= -I ./device_cpp/
INC_CPP+= -I ./kodama/
INC_CPP+= -I ./external/
INC_CPP+= -I ./libs_network/

TARGET = -mthumb -mcpu=cortex-m7 -mfloat-abi=softfp -fsingle-precision-constant -DSTM32F746xx


GCCPREFIX=arm-none-eabi-
LDSCRIPT = ./device/ldscript.ld

ELF = bin/main.elf 

CC = $(GCCPREFIX)gcc
CXX = $(GCCPREFIX)g++
LD = $(GCCPREFIX)g++
OBJCOPY = $(GCCPREFIX)objcopy
OBJDUMP = $(GCCPREFIX)objdump
SIZE = $(GCCPREFIX)size


CCFLAGS = -c -O2 -Os -Wall -Wextra -pedantic -std=c99 $(INC)
CCFLAGS+= -Wshadow -Wpointer-arith -Wcast-qual -Wno-unused-variable -Wno-unused-parameter
CCFLAGS+= $(TARGET) -fdata-sections -ffunction-sections

 
CXXFLAGS = -c -O2 -s -Wall -Wextra -pedantic -std=c++11 $(INC) $(INC_CPP) -fno-rtti -fno-exceptions
CXXFLAGS+= -Wshadow -Wpointer-arith -Wcast-qual -Wcast-align
CXXFLAGS+= $(TARGET) -fdata-sections -ffunction-sections

 

LDFLAGS = -T$(LDSCRIPT) $(TARGET) -Wl,--gc-sections --specs=nosys.specs



 



C_OBJS = $(C_SRCS:.c=.o)
CXX_OBJS = $(CXX_SRCS:.cpp=.o)


all: $(ELF)
	$(OBJDUMP) --disassemble -D -z $< > bin/main.asm
	$(OBJCOPY) -O ihex $< bin/main.hex
	$(OBJCOPY) -O binary $< bin/main.bin
	$(SIZE) $(ELF)

$(ELF): $(C_OBJS) $(CXX_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(C_OBJS) $(CXX_OBJS)

%.o: %.c
	$(CC) $(CCFLAGS) $< -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@
 
CLEAN_FILES = $(C_OBJS)
CLEAN_FILES+= $(CXX_OBJS)
CLEAN_FILES+= bin/main*

clean:
	rm $(CLEAN_FILES) -rf
