### Лексер

Для работы требуется установить `alex` и `parsec`, скомпилировать `Lexer.x` и запустить `Lexer.hs`.

```bash
$ cabal install alex
$ cabal install parsec

# Lives in ~/.cabal/bin
$ alex Lexer.x

$ runhaskell Lexer.hs path/to/source/file.txt
```


В моём случае cabal не захотел ставить alex, поэтому я установил его через пакетный менеджер (но у меня Arch, а не Ubuntu).


### Конкретный синтаксис

Пример-демонстрация

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
  write(fib(n));
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
id | id(args) | float-number | expr operator expr | id = expr | (expr)
                                                   ^ right associative
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
// block
{ statements } | statement
```

```kotlin
// statements
statement statements?
```

```kotlin
// statement
expr; | if-statement | while-loop | block
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
