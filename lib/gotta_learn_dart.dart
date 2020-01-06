int fib(int val) => (val == 0 || val == 1) ? val : fib(val - 1) + fib(val - 2);
