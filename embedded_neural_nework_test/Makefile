ELF = bin/embedded_neural_nework_test.elf


CXX_SRCS+= $(shell find  ../embedded_neural_nework -name '*.cpp')
CXX_SRCS+= $(shell find  . -name '*.cpp')

INC = -I .
INC+= -I ../embedded_neural_nework/

CXX = g++
LD  = g++

OBJDUMP = objdump
SIZE = size

OPTIM_FLAGS = -O3  -march=native
CXXFLAGS = -c $(OPTIM_FLAGS) -Wall -Wextra -pedantic -std=c++17 -Wno-unused-command-line-argument
CXX_OBJS = $(CXX_SRCS:.cpp=.o)

LDFLAGS = $(OPTIM_FLAGS) -Wall -Wextra -pedantic -std=c++17 -Wno-unused-command-line-argument

CXXFLAGS+= `pkg-config --cflags --libs /usr/local/Cellar/opencv/4.3.0_3/lib/pkgconfig/opencv4.pc`
LDFLAGS+=  `pkg-config --cflags --libs /usr/local/Cellar/opencv/4.3.0_3/lib/pkgconfig/opencv4.pc`

all: $(ELF)

$(ELF): $(CXX_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(CXX_OBJS)
	$(OBJDUMP) --disassemble $(ELF) > $(ELF).asm
	$(SIZE) $(ELF)

%.o: %.cpp
	$(CXX) $(INC) $(CXXFLAGS) $< -o $@

clean:
	rm $(CXX_OBJS) -rf
