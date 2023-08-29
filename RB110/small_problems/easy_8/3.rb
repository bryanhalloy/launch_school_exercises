def leading_substrings (input_string)
  input_string.chars.map.with_index do |char, index|
    input_string.slice(0, index + 1)
  end
end

def substrings (input_string)
  all_substrings = []
  input_string.chars.each_index do |index|
    all_substrings << leading_substrings(input_string[index..-1])
  end
  all_substrings.flatten

  

  # iterate through each index
  # subset
  # call the above method on that subset
  # shovel back into an array
  #return array
end






p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]