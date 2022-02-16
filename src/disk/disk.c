#include "../io/io.h"
#include "../disk/disk.h"
#include "../memory/memory.h"
#include "../config.h"
#include "../status.h"

struct disk disk;

//reads from the disk
int disk_read_sector(int lba, int total, void *buf){
	outb(0x1F6,(lba >> 24) | 0xE0);
	outb(0x1F2,total);
	outb(0x1F3,(unsigned char)(lba & 0xff));
	outb(0x1F4,(unsigned char)(lba >> 8));
	outb(0x1F5,(unsigned char)(lba >> 16));
	outb(0x1F7,0x20);

	//2 bytes at a time, wating for the drive
	unsigned short* ptr = (unsigned short*) buf;
	for(int b = 0; b < total;b++){ //wait for buffer to be ready
		char c = insb(0x1F7);
		while(!(c&0x08)){
			c = insb(0x1F7);
		}

		//copy from hard disk to memory
		for(int i = 0; i < 256;i++){
			*ptr = insw(0x1F0);
			ptr++;
		}
	}
	return 0;
}

void disk_search_and_init()
{
	memset(&disk, 0, sizeof(disk));
	disk.type = SMOLLOS_DISK_TYPE_REAL;
	disk.sector_size = SmollOs_SECTOR_SIZE;
}

struct disk* disk_get(int index)
{
	if(index != 0){ //invalid disk
		return 0;
	}
	return &disk;
}

int disk_read_block(struct disk* idisk, unsigned int lba, int total, void* buf)
{
	if(idisk != &disk)
	{
		if(idisk != &disk){
			return -EIO;
		}
	}
	return disk_read_sector(lba, total, buf);
}