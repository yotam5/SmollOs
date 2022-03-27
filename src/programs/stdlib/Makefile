FILES=./start.o ./smollos.o ./stdlib.o
INCLUDES=
FLAGS = -g

all: ${FILES}
	i686-elf-ld -m elf_i386 -relocatable ${FILES} -o ./stdlib.elf

./stdlib.o: ./stdlib.cpp
	i686-elf-gcc  -I./ $(FLAGS) -std=gnu++11 -c ./stdlib.cpp -o ./stdlib.o


./start.o: ./start.asm
	nasm -f elf ./start.asm -o ./start.o

./smollos.o: ./smollos.asm
	nasm -f elf ./smollos.asm -o ./smollos.o

clean:
	rm -rf ${FILES}
	rm ./stdlib.elf