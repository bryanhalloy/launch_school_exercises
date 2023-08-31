def fibonacci(n_th_fib_num)
  return 1 if n_th_fib_num == 1
  return 1 if n_th_fib_num == 2
  fibonacci(n_th_fib_num - 1) + fibonacci(n_th_fib_num - 2)
end



p fibonacci(5)
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765