ELF = bin/embedded_neural_nework_test.elf


CXX_SRCS+= $(shell find  ../embedded_neural_nework -name '*.cpp')
CXX_SRCS+= $(shell find  . -name '*.cpp')

INC = -I .
INC+= -I ../embedded_neural_nework/

CXX = g++
LD  = g++

CXXFLAGS = -c -O3 -Wall -Wextra -pedantic -std=c++11
CXX_OBJS = $(CXX_SRCS:.cpp=.o)

all: $(ELF)

$(ELF): $(CXX_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(CXX_OBJS)

%.o: %.cpp
	$(CXX) $(INC) $(CXXFLAGS) $< -o $@

clean:
	rm $(CXX_OBJS) -rf
