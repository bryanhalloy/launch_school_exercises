def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

#find_first_nonzero_among(0, 0, 1, 0, 2, 0)
#Too many arguments given




#find_first_nonzero_among(1)
# There is no method each for an integer. 

