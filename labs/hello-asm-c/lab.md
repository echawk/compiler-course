
## Goal

Your task for this lab is to better understand how high level language
constructs language can be represented in assembly.

This lab includes the following files:

```
.
├── Makefile
├── hello-as.s
└── hello-c.c
```

The hello-as.s and hello-c.c are implementations of hello world in
their respective langauges. However, the C version has been carefully
crafted to have nearly the same assemly as the pure assembly one.

Using these files to help you better understand how C gets translated,
translate the following C code blocks into assembly.

### Question 1
```
#include <unistd.h>
int main() {
	while(1) {
		syscall(1, STDOUT_FILENO, "yes\n", sizeof(char) * 4);
	}
}
```


### Question 2

```
#include <unistd.h>
int main() {
	int n = 0;
	while(n < 10) {
		if (n % 2 == 0)
			syscall(1, STDOUT_FILENO, "even\n", sizeof(char) * 5);
		n++;
	}
}
```


### Question 3

```
#include <unistd.h>
int main() {
	char *status = "F";
	char *fail = "Failure";
	char *success = "Success";
	switch (*status) {
		case 'F':
			syscall(1, STDOUT_FILENO, fail, sizeof(char) * 7);
			return 1;
		case 'S':
			syscall(1, STDOUT_FILENO, success, sizeof(char) * 7);
			return 0;
		default:
			return 1;
	}
}
```

### Question 4

```
//todo: do-while
```


For bonus points, write a basic version of printf that takes
a single character pointer, and prints the string. You are
*not* allowed to use any other header files other than `unistd.h`, ie no `string.h`.

Signature: `void printf(char *msg);



