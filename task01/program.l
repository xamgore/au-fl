fun fib(n, acc=n) {
  if n <= 1 {
    return acc; // no cast to String is needed
  } else {
    return fib(n - 1, n + acc);
  }
}


if argc > 0 {
  n = argv(0); // argv — is a function, not an array
  write(fib(n));
} else {
  write(-1);
}
