# Final Project

Your goal for the final project is to produce a compiler for a
real programming language. This language can be one of your own
design, or you can try implementing an already existing language.

You have the following options for the language that you write the
compiler in:

* C
* C++
* C#/Java (discouraged)

Or if you are going for bonus points:

* Haskell
* Ocaml
* Standard ML
* Lisp/Scheme

The choice of implementation langauge is up to you, the compiler
designer. Pick wisely.

## Targets

### C Family

You will have to target either x86 directly, or use a compiler
backend like [qbe](http://c9x.me/compile/) or [llvm](https://llvm.org/).

There is a **strong** recommendation that you use qbe instead of llvm
for this project.

However, if you use one of these backends, more will be expected from
your compiler.

### Functional Family

If you are using one of the functional languages, you will only need
to implement x86, with more basic language features.

## Language Features

The programming language that you choose to implement must have
the following language constructs:

* variable assignment
* if-else statements
* while loop
* ... TODO

## Journaling

In order to keep track of your compiler's progress, you will need
to keep a journal detailing the work that you have done, as well
as design decisions and important bug fixes, and how you solved them.

This journal is meant to be a record for you and the instructor.

