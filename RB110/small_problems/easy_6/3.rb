

def find_fibonacci_index_by_length (input_int_size)
  fib_n = 0
  fib_n_plus1 = 1
  index = 1

  loop do
    fib_n_plus2 = fib_n + fib_n_plus1
    index += 1
    
    if fib_n_plus2.to_s.size >= input_int_size
      return index
    else
      fib_n = fib_n_plus1
      fib_n_plus1 = fib_n_plus2
    end
  end
end


p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847