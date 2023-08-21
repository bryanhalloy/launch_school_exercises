def multiply(arg_1, arg_2)
  arg_1 * arg_2
end

def square(arg)
  multiply(arg, arg)
end


puts square(5) == 25
puts square(-8) == 64