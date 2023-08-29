def fizzbuzz(start_int, end_end)
  for num in (start_int..end_end)
    div_3_bool =  (num % 3 == 0) 
    div_5_bool =  (num % 5 == 0) 
    
    if div_3_bool && div_5_bool then puts "FizzBuzz"
    elsif div_3_bool then puts "Fizz"
    elsif div_5_bool then puts "Buzz"
    else puts num
    end
  end
end




fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
