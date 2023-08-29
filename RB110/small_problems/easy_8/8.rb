def reverse_sentence(input_string)
  input_string.split.reverse.join(' ')
  
  
  
  # return new string with reversed words
end






puts reverse_sentence('Reverse these words')
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''