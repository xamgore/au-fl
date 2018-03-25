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

Разделители `;` обязательны. Блоки определяются с помощью фигурных скобок. В функциях разрешены параметры по умолчанию, ссылающиеся на левые параметры. Функции — объекты высших порядков. Массивов нет, вместо них лямбда-термы. В общем что-то java подобное. Пример-демонстрация.

```kotlin
fun fib(n, acc=n) {
  if n <= 1 {
    return acc; // no cast to String is needed
  } else {
    return fib(n - 1, n + acc);
  }
}


if argc > 0 {
  n := argv(0); // argv — is a function, not an array
  write(n, fib(n));
} else {
  write(-1);
}
```
