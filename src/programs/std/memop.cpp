#include "./memop.h"

void *operator new(size_t size) {
	return smollos_malloc(size);
}

void *operator new(size_t size, void* ptr) {
	return ptr;
}

void *operator new[](size_t size) {
	return smollos_malloc(size);
}

void *operator new[](size_t size, void* ptr) {
	return ptr;
}

void operator delete(void *p) {
	smollos_free(p);
}

void operator delete[](void *p) {
	smollos_free(p);
}
void operator delete(void *p, size_t size)
{
    smollos_free(p);
}

void operator delete[](void *p, size_t size)
{
    smollos_free(p);
}

extern "C" void __cxa_pure_virtual() {
	// Do nothing or print an error message.
}