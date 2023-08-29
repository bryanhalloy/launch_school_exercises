def show_multiplicative_average (input_array_ints)
  answer = input_array_ints.reduce(1) {|val, tot_prod| tot_prod *= val}
  . / (1.0 * input_array_ints.size).round(3) 
  puts "The result is " + sprintf("%0.3f", answer)

  
  
  # iterate via reduce
  # run devision - watch floats
  # round it
  # return it
  #return result rounded to 3 dec places
end






show_multiplicative_average([3, 5, 6])
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667