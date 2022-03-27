FILES=./start.o ./smollos.o ./smollos.asm.o ./memory.o ./string.o ./stdlib.o ./stdio.o
INCLUDES=-I./
CFLAGS= -g -ffreestanding -falign-jumps -falign-functions -falign-labels -falign-loops -fstrength-reduce -fomit-frame-pointer -finline-functions -Wno-unused-function -fno-builtin -Werror -Wno-unused-label -Wno-cpp -Wno-unused-parameter -nostdlib -nostartfiles -nodefaultlibs -Wall -O0 -Iinc
CPPFLAGS  = -O2 -g -std=gnu++11 -nostdinc++ -fno-rtti
CPPFLAGS += -finline-functions -ffreestanding -nostdlib
CPPFLAGS += -Wall -Wextra -fno-exceptions -Warray-bounds
CPPFLAGS += -Wno-write-strings -Wno-unused-variable -Wno-unused-parameter
CPPFLAGS += -DKERNEL -fno-leading-underscore -nostartfiles -fpic -g

all: ${FILES}
	i686-elf-ld -m elf_i386 -relocatable ${FILES} -o ./stdlib.elf

./start.o: ./start.asm
	nasm -f elf ./start.asm -o ./start.o

./smollos.asm.o: ./smollos.asm
	nasm -f elf ./smollos.asm -o ./smollos.asm.o

./smollos.o: ./smollos.cpp
	i686-elf-gcc $(CPPFLAGS) -std=gnu++11 -c ./smollos.cpp -o ./smollos.o

./memory.o: ./memory.c
	i686-elf-gcc ${INCLUDES}  $(CFLAGS) -std=gnu99 -c ./memory.c -o ./memory.o

./string.o: ./string.c
	i686-elf-gcc ${INCLUDES} $(CFLAGS) -std=gnu99 -c ./string.c -o ./string.o

./stdlib.o: ./stdlib.cpp
	i686-elf-gcc ${INCLUDES} $(CPPFLAGS) -std=gnu++11 -c ./stdlib.cpp -o ./stdlib.o

./stdio.o: ./stdio.cpp
	i686-elf-gcc ${INCLUDES} $(CPPFLAGS) -std=gnu++11 -c ./stdio.cpp -o ./stdio.o

clean:
	rm -rf ${FILES}
	rm ./stdlib.elf