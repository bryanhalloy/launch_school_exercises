def leading_substrings (input_string)
  input_string.chars.map.with_index do |char, index|
    input_string.slice(0, index + 1)
end


  
  
  # to chars
  # map to iterate
  # slice the string



  # return array, sorted by size smallest to largest
end






p leading_substrings('abc')
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']