### Как запустить

```bash
git clone https://github.com/xamgore/au-fl.git strebz
cd strebz/task05

# install dependencies
cabal install alex happy parsec

# run tests to ensure everything works as expected
alex Lexer.x -o Lexer.hs && happy ./Parser.y -o Parser.hs && runhaskell Parser.hs --test

# run preferred file
runhaskell Parser.hs /path/to/file.txt
```

### Синтаксический сахар

##### one line functions
```kotlin
fun one() => 1;

// actually is
fun one() {
  return(1);
}
```

##### multi bindings
```kotlin
a = b = c = 3;

// actually is
c = 3;
b = c;
a = b;
```

##### for

```kotlin
for i in [1, 10] do {
  …
}

// actually is
i = 1;
e$i = 10;
while (i <= e$i) do {
  …
}
```


### Конкретный синтаксис

Пример можно посмотреть в файле `program.test.l`

```kotlin
fun fib(n, acc=n) {
  if n <= 1 {
    return(acc); // return is a superglobal function
  } else {
    return(fib(n - 1, n + acc));
  }
}


if argc > 0 {
  n = argv(0); // argv — is a superglobal function
  while true write(fib(n));
} else {
  write(-1);
}
```

##### Формально

```kotlin
// operator
+, −, ∗, /, %, ==, !=, >, >=, <, <=, &&, ||, **
```

```kotlin
// id
[_a-z][_a-z0-9]*
```

```kotlin
// expr
id | id(args) | float-number | expr operator expr | (expr)
```

```kotlin
// if-statement
if expression block else block
```

```kotlin
// while-loop
while expression do block
```

```kotlin
// for-loop
for id in [expression, expression] do block
```

```kotlin
// block
{ statements } | statement
```

```kotlin
// statements
statement statements?
```

```kotlin
// statement
id(args); | if-statement | while-loop | id = expr; | id = id = … = id = expr;
```

```kotlin
// arg
id | id=expr
```

```kotlin
// args
arg | arg, args
```

```kotlin
// func
fun id(args) block

fun id(args) => expression;
```

```kotlin
// definitions
func | func definitions
```

```kotlin
// program
definitions statements
```

```kotlin
// comentary, can occur anywere, so are ignored in this document
"// ignored until EOL"
| "/* any sequence of chars until the first */"
```
