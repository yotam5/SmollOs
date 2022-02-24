#ifndef PATHPARSER_h
#define PATHPARSER_h

struct path_root
{
    int drive_number;
    struct path_part* first;
};

struct path_part{
    const char* part;
    struct path_part* next;
};

#endif