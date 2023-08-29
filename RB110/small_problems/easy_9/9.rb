def group_anagrams(input_array)
  anagrams_outer_array = input_array.map do |target_word|
    input_array.select do |check_word|
      is_anagram(target_word,check_word)
    end
    .sort
  end
  .sort.uniq

  anagrams_outer_array.each do |sub_arr| 
    print sub_arr
    print "\n"
  end


  # cycle through the array, for each word
  #   cyle through and find all anagrams
  #   sort it
  #   return as an sub-array
  # remove dubplicates of outer array
  
  # print by iterating throug main array and puts-ing each sub-array
  
  
  return nil
end

def is_anagram(target_word,check_word)
  target_word.chars.sort == check_word.chars.sort
end








words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


group_anagrams(words)