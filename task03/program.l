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
