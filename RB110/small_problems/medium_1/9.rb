def fibonacci(n_th_fib_num)
  return 1 if n_th_fib_num == 1
  return 1 if n_th_fib_num == 2

  n_minus_2 = 1
  n_minus_1 = 1
  n_0 = nil

  (n_th_fib_num - 2).times do
    n_0 = n_minus_1 + n_minus_2

    #move forward values
    n_minus_2 = n_minus_1
    n_minus_1 = n_0
  end
  return n_0
end

p fibonacci(3)
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501