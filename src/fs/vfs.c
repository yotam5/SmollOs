#include "./vfs.h"
#include <stdint.h>
#include <stddef.h>
#include "../kernel.h"
typedef struct fd_entry_t
{
  int type;
  void* payload;
} fd_entry_t;

fs_node_t* fs_root = 0;
fd_entry_t devtable[1024];
static int _fd_counter = 0;

uint32_t read_fs(fs_node_t* node, uint32_t offset,uint32_t size,uint8_t* buffer)
{
    if(node->read != 0)
    {
        return node->read(node,offset,size,buffer);
    }
    return 0;
}

uint32_t write_fs(fs_node_t *node, uint32_t offset, uint32_t size, uint8_t *buffer)
{
    if(node->write != 0){
        return node->write(node,offset,size,buffer);
    }
    return 0;
}

void open_fs(fs_node_t *node, uint8_t read, uint8_t write)
{
    if(node->open != 0){
        return node->open(node);
    }
}

void close_fs(fs_node_t *node)
{
    if(node->close!=0)
    {
        node->close(node);
    }
}
struct dirent *readdir_fs(fs_node_t *node, uint32_t index) {
	if ((node->flags & FS_DIRECTORY) && node->readdir) {
		struct dirent *ret = node->readdir(node, index);
		return ret;
	} else {
		return (struct dirent *)NULL;
	}
}


fs_node_t *finddir_fs(fs_node_t *node, char *name) {
	if ((node->flags & FS_DIRECTORY) && node->finddir) {
		fs_node_t *ret = node->finddir(node, name);
		return ret;
	} else {
		return (fs_node_t *)NULL;
	}
}

FILE* initrd_open(const char* filename,const char* mode)
{
    fs_node_t* file = finddir_fs(fs_root, filename);
    FILE* stream = (FILE*)kmalloc(sizeof(FILE));
    stream->node = file;
    stream->fpos = 0;
    stream->start_sector = -1;

    fd_entry_t file_fd;
    file_fd.type = 0;
    file_fd.payload = stream;
    devtable[_fd_counter] = file_fd;
    stream->fd = _fd_counter;
    ++_fd_counter;
    return stream;
}

FILE* fopen(const char* filename, const char* mode)
{
    return initrd_open(filename,mode);
}

int open(const char* filename,const char* flag)
{
    FILE* f = fopen(filename,flag);
    return f->fd;
}