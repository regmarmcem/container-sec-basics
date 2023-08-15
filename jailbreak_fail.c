#include <stdio.h>
#include <sys/stat.h>
#include <sys/types.h>

void main(int argc, char *argv[])
{
    chroot("../../../../../../../../../../");
    execv("/bin/bash", argv);
}