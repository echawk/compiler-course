
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
```c
#include <unistd.h>
int main() {
	while(1) {
		syscall(1, STDOUT_FILENO, "yes\n", sizeof(char) * 4);
	}
}
```


### Question 2

```c
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

```c
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

```c
#include <unistd.h>
int main() {
	char *str = "Twelve Bits.";
	int i = 0;
	do {
		syscall(1, STDOUT_FILENO, str, sizeof(char) * i);
		syscall(1, STDOUT_FILENO, "\n", sizeof(char));
		i++;
	} while (i < 12);
}
```

### Question 5

Write a basic version of printf that takes a single character pointer, and prints the string.
You are *not* allowed to use any other header files other than `unistd.h`, ie no `string.h`.
Then translate your C file into assembly.

Signature: `void printf(char *msg);`


## Extra Credit

Translate the following into assembly:

```c
send(to, from, count)
register short *to, *from;
register count;
{
    register n = (count + 7) / 8;
    switch (count % 8) {
    case 0: do { *to = *from++;
    case 7:      *to = *from++;
    case 6:      *to = *from++;
    case 5:      *to = *from++;
    case 4:      *to = *from++;
    case 3:      *to = *from++;
    case 2:      *to = *from++;
    case 1:      *to = *from++;
            } while (--n > 0);
    }
}
```

