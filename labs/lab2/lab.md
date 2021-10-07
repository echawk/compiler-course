## Goal

Your task for this lab is to create a reverse polish notation
compiler for a stack-based virtual machine (defined below).

For those who need a refresher on RPN, this is how it looks:

```
7 22 + 3 + 5 * 4 + 3 -
```

The above operation expressed in infix notation is:

```
//fixme
```

## Front End

Your compiler shall have a front end, which will read in a single line of
reverse polish notation (either from standard input or as arguments provided
on the command line), and emit bytecode instructions for your virtual machine.

What is more important than getting the right answer in this lab is getting the
structure of a compiler down.

'A' level labs should have a clear separation of parts, from the scanner, to the tokenizer,
to the lexer, to the parser, etc.

If you wish to see an example of what this is supposed to do, see the file 'frontend.sh'
It is important to note that this frontend does **not** emit bytecode, but instead effectively
emits assembly.

## Objectives

* To implement a stack based virtual machine
* To implement a tiny compiler front end

## Virtual Machine

The virtual machine shall implement the following instructions:

**PUSH** - pushes a value onto the top of the stack

**ADD** - adds the top two values in the stack and leaves the result at the top of the stack

**SUB** - subtracts the top of the stack in the stack and leaves result at the top of the stack

**MUL** - multiplies the top two values stack and leaves the result at the top of the stack

**DIV** - floor divides the top of the stack by the next value in the stack and leaves the result at the top of the stack

In addition to the above 5 instructions, you also have to implement the following:

**SQRT** - returns the floored sqrt of the top of the stack

**FACT** - returns the facotrial of the top of the stack

Do **not** worry about implementing floating point arithmetic or negative numbers, this is
out of scope for this lab.

## Extra Credit

* implement floating point numbers
* emit x86 assembly instead of the above VM for your front end (make sure the assembly *actually works*)
