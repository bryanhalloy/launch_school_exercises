def diamond(input_dimension)
  stars_array = Array.new(input_dimension,0)
  middle_index = input_dimension / 2
  stars_array.each_with_index do |_val, index|
    if index <= middle_index
      stars_array[index] = (index + 1) * 2 - 1   
    else
      stars_array[index] = (input_dimension - 1 - index + 1) * 2 - 1 
    end
  end
  stars_array.each do |val|
    output_row(input_dimension, val)
  end

  
  # construct array where each element is num of stars
  # iterate over array
  #   output_row(total_width, n_stars)
  #output diamond
  # return nil
end


def output_row(total_width, n_stars)
  either_side_spaces = (total_width - n_stars) / 2
  puts ' ' * either_side_spaces + '*' * n_stars + ' ' * either_side_spaces
end





diamond(41)




# Input: odd integer
# Output: printed stars in a pattern
# Return value: none

# Key things-
# n is number of rows and columns
# What if negative?


# General approach:
# Have a function that, given width and # of diamonds, outputs the line
# Iterate down the line, calling this function as appropriate