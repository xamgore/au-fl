/**
 * Fibonacci numbers
 * Implementation uses an optional accumulator parameter
 * @return n-th Fibonacci number
 */
fun fib(n, acc=n) {
  if n <= 1 {
    return(acc); // return is a superglobal function
  } else {
    return(fib(n - 1, n + acc));
  }
}

fun pow(n, p) {
  return(n**p**3 * 4 / 5 + 4 * 3 - 1);
}


if argc > 0 && true != false {
  n = argv(0); // argv — is a superglobal function
  while true do write(fib(n));
} else {
  write(-1-2-3);
}
