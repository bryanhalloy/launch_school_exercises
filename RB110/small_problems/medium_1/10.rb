
def fibonacci_last(n_th_fib_num)
  return 0 if n_th_fib_num == 0
  return 1 if n_th_fib_num == 1
  return 1 if n_th_fib_num == 2
  n_minus_2 = 1
  n_minus_1 = 1
  n_0 = nil
  (n_th_fib_num - 2).times do |iter|
    n_0 = n_minus_1 + n_minus_2 % 10
    #move forward values
    n_minus_2 = n_minus_1
    n_minus_1 = n_0
  end
  return n_0 % 10
end

def fibonacci_last_superfast(n_th_fib_num)
  if n_th_fib_num < 60
    return fibonacci_last(n_th_fib_num)
  else
    fib_dig_pattern_array = []
    60.times {|v|  fib_dig_pattern_array <<  fibonacci_last(v) }
    fib_dig_pattern_array[n_th_fib_num % 60]
  end
end





p fibonacci_last_superfast(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last_superfast(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last_superfast(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last_superfast(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last_superfast(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last_superfast(123456789) # -> 4