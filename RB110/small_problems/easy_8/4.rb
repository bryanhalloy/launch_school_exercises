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
end


def is_palendrome(string)
  return false if string.size < 2
  string == string.chars.reverse.join
end


def palindromes (input_string)
  substrings(input_string).select do |substring|
    is_palendrome(substring)
  end
  #   get all substrings
  # iterate and select those which are palendromes
  #   use palendrome checker
  #   return array
end


p palindromes('madam')
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]