def reverse_words(input_string)
  input_string.split.map do |word|
    if word.size >= 5
      reverse_word(word)
    else
      word
    end
  end
  .join(' ')
  # return string
end


def reverse_word(input_word)
  input_word.chars.reverse.join('')
end




puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS