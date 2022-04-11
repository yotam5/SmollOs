FILES=./start.asm.o ./smollos.o ./start.o ./smollos.asm.o ./memory.o ./string.o ./stdlib.o ./stdio.o
INCLUDES=-I./
CFLAGS= -g -ffreestanding -falign-jumps -falign-functions -falign-labels -falign-loops -fstrength-reduce -fomit-frame-pointer -finline-functions -Wno-unused-function -fno-builtin -Werror -Wno-unused-label -Wno-cpp -Wno-unused-parameter -nostdlib -nostartfiles -nodefaultlibs -Wall -O0 -Iinc
CPPFLAGS  = -O2 -g -std=gnu++11 -nostdinc++ -fno-rtti
CPPFLAGS += -finline-functions -ffreestanding -nostdlib
CPPFLAGS += -Wall -Wextra -fno-exceptions -Warray-bounds
CPPFLAGS += -Wno-write-strings -Wno-unused-variable -Wno-unused-parameter
CPPFLAGS += -DKERNEL -fno-leading-underscore -nostartfiles -fpic -g

all: ${FILES}
	i686-elf-ld -m elf_i386 -relocatable ${FILES} -o ./stdlib.elf

./start.asm.o: ./start.asm
	nasm -f elf ./start.asm -o ./start.asm.o

./smollos.asm.o: ./smollos.asm
	nasm -f elf ./smollos.asm -o ./smollos.asm.o

./smollos.o: ./smollos.c
	i686-elf-gcc $(CFLAGS) -std=gnu99 -c ./smollos.c -o ./smollos.o

./memory.o: ./memory.c
	i686-elf-gcc ${INCLUDES}  $(CFLAGS) -std=gnu99 -c ./memory.c -o ./memory.o

./string.o: ./string.c
	i686-elf-gcc ${INCLUDES} $(CFLAGS) -std=gnu99 -c ./string.c -o ./string.o

./start.o: ./start.c
	i686-elf-gcc ${INCLUDES} $(CFLAGS) -std=gnu99 -c ./start.c -o ./start.o


./stdlib.o: ./stdlib.c
	i686-elf-gcc ${INCLUDES} $(CFLAGS) -std=gnu99 -c ./stdlib.c -o ./stdlib.o

./stdio.o: ./stdio.c
	i686-elf-gcc ${INCLUDES} $(CFLAGS) -std=gnu99 -c ./stdio.c -o ./stdio.o

clean:
	rm -rf ${FILES}
	rm ./stdlib.elf || true
	rm ../stdlib.elf || true
	