## Goal

Your goal for this lab is to parse statements into an abstract syntax tree.

## Language

The language you will be parsing looks like the following:

```
let a = 5;
let b = "five";
a == 5;
if (a == 5) {
  let c = 10;
}
let d = True;
```

The language most closely resembles the [monkey](https://monkeylang.org/) language, and it may serve as a useful reference.


## Tools

You are allowed to either hand roll your own lexer and parser, or you may use `lex` and `yacc`.
At this point, you may either use C, C++, or any language from the functional family, such as Haskell, Lisp, SML, Scheme, etc.


## Extra Credit

Lisp-ify the above language:

```
(let a 5)
(let b "five")
(= a 5)
(if (= a "five")
    (let c 10))
(let d True)
```

And write a parser for it.



