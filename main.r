calculateFibonacci <- function(maxValue) {
  fibs <- c(0, 1)
  while (TRUE) {
    next_fib <- sum(tail(fibs, 2))
    if (next_fib > maxValue) break
    fibs <- c(fibs, next_fib)
  }
  return(fibs)
}

fibonacciNumbers <- calculateFibonacci(1000)

for (i in 0:1000) {
  if (i %in% fibonacciNumbers) {
    print("fib")
  } else if (i %% 3 == 0 & i %% 5 == 0) {
    print("fizzbuzz!")
  } else if (i %% 3 == 0) {
    print("fizz")
  } else if (i %% 5 == 0) {
    print("buzz")
  } else {
    print(i)
  }
}
