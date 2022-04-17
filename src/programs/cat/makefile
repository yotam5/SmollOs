FILES=./cat.o
INCLUDES= -I../stdlib
CFLAGS= -O2 -g -std=gnu++11 -nostdinc++ -fno-rtti
CPPFLAGS  = -O2 -g -std=gnu++11 -nostdinc++ -fno-rtti
CPPFLAGS += -finline-functions -ffreestanding -nostdlib
CPPFLAGS += -Wall -Wextra -fno-exceptions -Warray-bounds
CPPFLAGS += -Wno-write-strings -Wno-unused-variable -Wno-unused-parameter
CPPFLAGS += -DKERNEL -fno-leading-underscore -nostartfiles -fpic -g

all: ${FILES}
	i686-elf-gcc -T ./linker.ld -o ./cat.elf ${CPPFLAGS} ${FILES} ../stdlib/stdlib.elf

./cat.o: ./cat.cpp
	i686-elf-gcc ${INCLUDES}  -I./$(CPPFLAGS) -c ./cat.cpp -o ./cat.o

clean:
	rm -rf ${FILES}
	rm ./cat.elf || true