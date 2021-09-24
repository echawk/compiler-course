## Goal

Your task for this lab is to create a reverse polish notation
compiler for a stack-based virtual machine (defined below).

For those who need a refresher on RPN, this is how it looks:

```
7 22 3 + 5 * 4 + 3 -
```

The above operation expressed in infix notation is:

```
3 - (4 + (5 * (3 + 22 + 7)))
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

**PUSH** - pushes a value onto the stack

**ADD** - adds all values in the stack and leaves the result at the top of the stack

**SUB** - subtracts the top of the stack from every value left in the stack and leaves result at the top of the stack

**MUL** - multiplies all values in the stack and leaves the result at the top of the stack

**DIV** - floor divides the top of the stack from every value left in the stack and leaves the result at the top of the stack


Do **not** worry about implementing floating point arithmetic or negative numbers, this is
out of scope for this lab.
