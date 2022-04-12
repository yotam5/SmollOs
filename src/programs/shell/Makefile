FILES=./shell.o
INCLUDES= -I../stdlib
CFLAGS= -g -ffreestanding -falign-jumps -falign-functions -falign-labels -falign-loops -fstrength-reduce -fomit-frame-pointer -finline-functions -Wno-unused-function -fno-builtin -Werror -Wno-unused-label -Wno-cpp -Wno-unused-parameter -nostdlib -nostartfiles -nodefaultlibs -Wall -O0 -Iinc
CPPFLAGS  = -Os -g -std=gnu++11 -nostdinc++ -fno-rtti
CPPFLAGS += -finline-functions -ffreestanding -nostdlib
CPPFLAGS += -Wall -Wextra -fno-exceptions -Warray-bounds
CPPFLAGS += -Wno-write-strings -Wno-unused-variable -Wno-unused-parameter
CPPFLAGS += -DKERNEL -fno-leading-underscore -nostartfiles -fpic 

all: ${FILES}
	i686-elf-gcc -T ./linker.ld -o ./shell.elf ${CPPFLAGS} ${FILES} ../std/memop.o ../stdlib/stdlib.elf

./shell.o: ./shell.cpp
	i686-elf-gcc ${INCLUDES} $(CPPFLAGS) -c ./shell.cpp -o ./shell.o

clean:
	rm -rf ${FILES}
	rm ./shell.elf || true