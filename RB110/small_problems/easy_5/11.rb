def digit_list(input_int)
  input_int.to_s.chars.map(&:to_i)
end



# to string
# to chars
# to int




puts digit_list(981090)
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true