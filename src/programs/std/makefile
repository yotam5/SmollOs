FILES=./memop.o ./string.o ./vga.o ./vector.o
INCLUDES= -I../stdlib
CFLAGS= -g -ffreestanding -falign-jumps -falign-functions -falign-labels -falign-loops -fstrength-reduce -fomit-frame-pointer -finline-functions -Wno-unused-function -fno-builtin -Werror -Wno-unused-label -Wno-cpp -Wno-unused-parameter -nostdlib -nostartfiles -nodefaultlibs -Wall -O0 -Iinc
CPPFLAGS  = -O2 -g -std=gnu++11 -nostdinc++ -fno-rtti
CPPFLAGS += -finline-functions -ffreestanding -nostdlib
CPPFLAGS += -Wall -Wextra -fno-exceptions -Warray-bounds
CPPFLAGS += -Wno-write-strings -Wno-unused-variable -Wno-unused-parameter
CPPFLAGS += -DKERNEL -fno-leading-underscore -nostartfiles -fpic -g

all: ${FILES}

./string.o: ./string.cpp
	i686-elf-gcc ${INCLUDES} $(CPPFLAGS) -c ./string.cpp -o ./string.o

./memop.o: ./memop.cpp
	i686-elf-gcc ${INCLUDES} $(CPPFLAGS) -c ./memop.cpp -o ./memop.o

./vga.o: ./vga.cpp
	i686-elf-gcc ${INCLUDES} $(CPPFLAGS) -c ./vga.cpp -o ./vga.o 

./vector.o: ./vector.cpp
	i686-elf-gcc ${INCLUDES} $(CPPFLAGS) -c ./vector.cpp -o ./vector.o 


clean:
	rm -rf ${FILES}
	rm ./memop.o || true
	rm ./string.o || true
	rm ./vga.o || true