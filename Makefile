FILES = ./build/kernel.asm.o \
./build/isr80h/process.o \
./build/kernel.o \
./build/loader/formats/elf/elfloader.o \
./build/loader/formats/elf/elf.o \
./build/keyboard/classic.o \
./build/keyboard/keyboard.o \
./build/isr80h/io.o \
./build/task/process.o\
./build/isr80h/isr80h.o \
./build/task/task.asm.o \
./build/task/tss.asm.o \
./build/task/task.o  \
./build/disk/disk.o \
./build/fs/fs.o \
./build/string/string.o \
./build/idt/idt.asm.o ./build/idt/idt.o \
./build/memory/memory.o \
./build/io/io.asm.o \
./build/gdt/gdt.o \
./build/gdt/gdt.asm.o \
./build/memory/heap/heap.o \
./build/memory/heap/kheap.o \
./build/memory/paging/paging.o \
./build/memory/paging/paging.asm.o\
./build/isr80h/heap.o \
./build/fs/fat/diskfs.o \
./build/fs/fat/fat16fs.o \
./crtbegin.o \
./crtend.o

INCLUDES = -I./src
FLAGS = -g -ffreestanding -falign-jumps -falign-functions -falign-labels -falign-loops -fstrength-reduce -fomit-frame-pointer -finline-functions -Wno-unused-function -fno-builtin -Werror -Wno-unused-label -Wno-cpp -Wno-unused-parameter -nostdlib -nostartfiles -nodefaultlibs -Wall -O0 -Iinc
CFLAGS= -O2 -g -std=gnu++11 -nostdinc++ -fno-rtti
CPPFLAGS  = -O2 -g -std=gnu++11 -nostdinc++ -fno-rtti
CPPFLAGS += -finline-functions -ffreestanding -nostdlib
CPPFLAGS += -Wall -Wextra -fno-exceptions -Warray-bounds
CPPFLAGS += -Wno-write-strings -Wno-unused-variable -Wno-unused-parameter
CPPFLAGS += -DKERNEL -fno-leading-underscore -nostartfiles -fpic -g -fno-pie

all: ./bin/boot.bin ./bin/kernel.bin user_programs
	rm -rf ./bin/os.bin
	dd if=./bin/boot.bin >> ./bin/os.bin
	#//dd if=./bin/stagetwo.bin >> ./bin/os.bin
	dd if=./bin/kernel.bin >> ./bin/os.bin
	dd if=/dev/zero bs=1048576 count=25 >> ./bin/os.bin
	sudo mount -t vfat ./bin/os.bin /mnt/d
	# Copy a file over
	sudo cp ./hello.txt /mnt/d
	sudo cp ./src/programs/blank/blank.elf /mnt/d
	sudo cp ./src/programs/shell/shell.elf /mnt/d
	sudo cp ./src/programs/cat/cat.elf /mnt/d
	sudo umount /mnt/d

./crtbegin.o: ./src/crti.asm
	nasm -f elf ./src/crti.asm -o ./crtbegin.o

./crtend.o: ./src/crtn.asm
	nasm -f elf ./src/crtn.asm -o ./crtend.o

./smollos.o: ./src/programs/stdlib/smollos.c
	i686-elf-gcc $(INCLUDES) $(FLAGS) -std=gnu99 -c ./src/programs/stdlib/smollos.c -o ./smollos.o

./smollos.asm.o: ./src/programs/stdlib/smollos.asm
	nasm -f elf ./src/programs/stdlib/smollos.asm -o ./smollos.asm.o

./bin/kernel.bin: $(FILES)
	i686-elf-gcc -g -r $(FILES) -o ./build/kernelfull.o
	i686-elf-gcc $(CPPFLAGS) -T ./src/linker.ld -o ./bin/kernel.bin -ffreestanding -O0 -nostdlib ./build/kernelfull.o

./bin/boot.bin: ./src/boot/boot.asm
	nasm -f bin ./src/boot/boot.asm -o ./bin/boot.bin

./bin/stagetwo.bin: ./src/boot/stagetwo.asm
	nasm -f bin ./src/boot/stagetwo.asm -o ./bin/stagetwo.bin

./build/kernel.asm.o: ./src/kernel.asm
	nasm -f elf -g ./src/kernel.asm -o ./build/kernel.asm.o

./build/kernel.o: ./src/kernel.cpp
	i686-elf-gcc $(INCLUDES) $(CPPFLAGS) -std=gnu++11 -c ./src/kernel.cpp -o ./build/kernel.o

./build/idt/idt.asm.o: ./src/idt/idt.asm
	nasm -f elf -g ./src/idt/idt.asm -o ./build/idt/idt.asm.o

./build/loader/formats/elf/elf.o: ./src/loader/formats/elf/elf.c
	i686-elf-gcc $(INCLUDES) -I./src/loader/formats $(FLAGS) -std=gnu99 -c ./src/loader/formats/elf/elf.c -o ./build/loader/formats/elf/elf.o

./build/loader/formats/elf/elfloader.o: ./src/loader/formats/elf/elfloader.c
	i686-elf-gcc $(INCLUDES) -I./src/loader/formats $(FLAGS) -std=gnu99 -c ./src/loader/formats/elf/elfloader.c -o ./build/loader/formats/elf/elfloader.o

./build/gdt/gdt.o: ./src/gdt/gdt.c
	i686-elf-gcc $(INCLUDES) -I./src/gdt $(FLAGS) -std=gnu99 -c ./src/gdt/gdt.c -o ./build/gdt/gdt.o

./build/gdt/gdt.asm.o: ./src/gdt/gdt.asm
	nasm -f elf -g ./src/gdt/gdt.asm -o ./build/gdt/gdt.asm.o

./build/isr80h/isr80h.o: ./src/isr80h/isr80h.cpp
	i686-elf-gcc $(INCLUDES) -I./src/isr80h $(CPPFLAGS) -std=gnu++11 -c ./src/isr80h/isr80h.cpp -o ./build/isr80h/isr80h.o

./build/isr80h/heap.o: ./src/isr80h/heap.c
	i686-elf-gcc $(INCLUDES) -I./src/isr80h $(FLAGS) -std=gnu99 -c ./src/isr80h/heap.c -o ./build/isr80h/heap.o

./build/isr80h/io.o: ./src/isr80h/io.c
	i686-elf-gcc $(INCLUDES) -I./src/isr80h $(FLAGS) -std=gnu99 -c ./src/isr80h/io.c -o ./build/isr80h/io.o

./build/isr80h/process.o: ./src/isr80h/process.cpp
	i686-elf-gcc $(INCLUDES) -I./src/isr80h $(CPPFLAGS) -std=gnu++11 -c ./src/isr80h/process.cpp -o ./build/isr80h/process.o


./build/keyboard/keyboard.o: ./src/keyboard/keyboard.c
	i686-elf-gcc $(INCLUDES) -I./src/keyboard $(FLAGS) -std=gnu99 -c ./src/keyboard/keyboard.c -o ./build/keyboard/keyboard.o


./build/keyboard/classic.o: ./src/keyboard/classic.c
	i686-elf-gcc $(INCLUDES) -I./src/keyboard $(FLAGS) -std=gnu99 -c ./src/keyboard/classic.c -o ./build/keyboard/classic.o


./build/idt/idt.o: ./src/idt/idt.c
	i686-elf-gcc $(INCLUDES) -I./src/idt $(FLAGS) -std=gnu99 -c ./src/idt/idt.c -o ./build/idt/idt.o

./build/memory/memory.o: ./src/memory/memory.c
	i686-elf-gcc $(INCLUDES) -I./src/memory $(FLAGS) -std=gnu99 -c ./src/memory/memory.c -o ./build/memory/memory.o


./build/task/process.o: ./src/task/process.cpp
	i686-elf-gcc $(INCLUDES) -I./src/task $(CPPFLAGS) -std=gnu++11 -c  ./src/task/process.cpp -o ./build/task/process.o


./build/task/task.o: ./src/task/task.c
	i686-elf-gcc $(INCLUDES) -I./src/task $(FLAGS) -std=gnu99 -c -Os ./src/task/task.c -o ./build/task/task.o

./build/task/task.asm.o: ./src/task/task.asm
	nasm -f elf -g ./src/task/task.asm -o ./build/task/task.asm.o

./build/task/tss.asm.o: ./src/task/tss.asm
	nasm -f elf -g ./src/task/tss.asm -o ./build/task/tss.asm.o

./build/io/io.asm.o: ./src/io/io.asm
	nasm -f elf -g ./src/io/io.asm -o ./build/io/io.asm.o

./build/memory/heap/heap.o: ./src/memory/heap/heap.c
	i686-elf-gcc $(INCLUDES) -I./src/memory/heap $(FLAGS) -std=gnu99 -c ./src/memory/heap/heap.c -o ./build/memory/heap/heap.o

./build/memory/heap/kheap.o: ./src/memory/heap/kheap.c
	i686-elf-gcc $(INCLUDES) -I./src/memory/heap $(FLAGS) -std=gnu99 -c ./src/memory/heap/kheap.c -o ./build/memory/heap/kheap.o

./build/memory/paging/paging.o: ./src/memory/paging/paging.c
	i686-elf-gcc $(INCLUDES) -I./src/memory/paging $(FLAGS) -std=gnu99 -c ./src/memory/paging/paging.c -o ./build/memory/paging/paging.o

./build/memory/paging/paging.asm.o: ./src/memory/paging/paging.asm
	nasm -f elf -g ./src/memory/paging/paging.asm -o ./build/memory/paging/paging.asm.o

./build/disk/disk.o: ./src/disk/disk.c
	i686-elf-gcc $(INCLUDES) -I./src/disk $(FLAGS) -std=gnu99 -c -Os ./src/disk/disk.c -o ./build/disk/disk.o

./build/fs/fat/diskfs.o: ./src/fs/fat/fatfs/diskio.c
	i686-elf-gcc $(INCLUDES) -I./src/fs -I./src/fat $(FLAGS) -s -Os -std=gnu99 -c ./src/fs/fat/fatfs/diskio.c -o ./build/fs/fat/diskfs.o

./build/fs/fat/fat16fs.o: ./src/fs/fat/fatfs/ff.c
	i686-elf-gcc $(INCLUDES) -I./src/fs -I./src/fat $(FLAGS) -s -Os -std=gnu99 -c ./src/fs/fat/fatfs/ff.c -o ./build/fs/fat/fat16fs.o

./build/fs/fs.o: ./src/fs/fs.c
	i686-elf-gcc $(INCLUDES) -I./src/fs $(FLAGS) -std=gnu99 -c ./src/fs/fs.c -o ./build/fs/fs.o

./build/string/string.o: ./src/string/string.c
	i686-elf-gcc $(INCLUDES) -I./src/string $(FLAGS) -std=gnu99 -c ./src/string/string.c -o ./build/string/string.o

user_programs:
	cd ./src/programs/stdlib && $(MAKE) all
	cd ./src/programs/std && $(MAKE) all
	cd ./src/programs/blank && $(MAKE) all
	cd ./src/programs/shell && $(MAKE) all
	cd ./src/programs/cat && $(MAKE) all

user_programs_clean:
	cd ./src/programs/stdlib && $(MAKE) clean
	cd ./src/programs/blank && $(MAKE) clean
	cd ./src/programs/shell && $(MAKE) clean
	cd ./src/programs/std && $(MAKE) clean
	cd ./src/programs/cat && $(MAKE) clean

clean: user_programs_clean
	rm -rf ./bin/boot.bin
	rm -rf ./bin/kernel.bin
	rm -rf ./bin/os.bin
	rm -rf ./bin/stagetwo.bin
	rm -rf ${FILES}
	rm -rf ./build/kernelfull.o