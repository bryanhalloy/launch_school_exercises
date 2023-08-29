
=begin
Inputs
takes two strings as arguments

Outputs
determines the longest of the two strings, 
and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.

Requirements
Write a method
=end

def short_long_short (string_1, string_2)
  # compare sizes
  # assign short and long string
  short_string = string_1.size <= string_2.size ? string_1 : string_2
  long_string = string_1.size <= string_2.size ? string_2 : string_1
  
  # build and return return value
  short_string + long_string + short_string
end



p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"