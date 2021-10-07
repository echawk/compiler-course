#include <unistd.h>
int main() {
	char *msg = "Hello World\n";
	syscall(1, STDOUT_FILENO, msg, sizeof(char) * 12);
	return 0;
}
