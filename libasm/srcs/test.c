#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>

int main() {
	int fd = open("a.out", O_WRONLY);
	if (fd < 0) {
		perror("Cannot open file");
		return 1;
	}

	lseek(fd, 4503, SEEK_SET);
	unsigned char buf[5] = {0xe8, 0x74, 0x00, 0x00, 0x00};
	int written = write(fd, buf, 5);
	if (written != 5) {
		perror("write failed");
		return 1;
	}
	close(fd);
}
