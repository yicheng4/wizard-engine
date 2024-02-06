#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <sys/stat.h>

// Define __ARMEB__ manually for testing if needed
// #define __ARMEB__



int main(void) {
	// Print the size of the struct stat
    printf("Size of struct stat: %zu bytes\n", sizeof(unsigned short));

    // Print the offset of each member within struct stat
    printf("Offset of st_dev: %zu\n", offsetof(struct stat, st_dev));
    printf("Offset of st_ino: %zu\n", offsetof(struct stat, st_ino));
    printf("Offset of st_mode: %zu\n", offsetof(struct stat, st_mode));
    printf("Offset of st_nlink: %zu\n", offsetof(struct stat, st_nlink));
    printf("Offset of st_uid: %zu\n", offsetof(struct stat, st_uid));
    printf("Offset of st_gid: %zu\n", offsetof(struct stat, st_gid));
    printf("Offset of st_rdev: %zu\n", offsetof(struct stat, st_rdev));
    printf("Offset of st_size: %zu\n", offsetof(struct stat, st_size));
    printf("Offset of st_blksize: %zu\n", offsetof(struct stat, st_blksize));
    printf("Offset of st_blocks: %zu\n", offsetof(struct stat, st_blocks));
    printf("Offset of st_atime: %zu\n", offsetof(struct stat, st_atim.tv_sec));
    printf("Offset of st_mtime: %zu\n", offsetof(struct stat, st_mtim.tv_sec));
    printf("Offset of st_ctime: %zu\n", offsetof(struct stat, st_ctim.tv_sec));
#ifdef __x86_64__
    printf("Offset of __glibc_reserved: %zu\n", offsetof(struct stat, __glibc_reserved));
#endif
	return 0;
}

