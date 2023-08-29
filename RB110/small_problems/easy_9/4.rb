def word_lengths(input_string)
  input_string.split(' ').map do |word|
    word.to_s + ' ' + word.to_s.size.to_s
  end
end

  
  # string to array elements
  # cycle through elements
  # get stringr length
  # contanteate with word
  # push back to array
  # outptu array


  # return array









p word_lengths("cow sheep 43 chicken")
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
p word_lengths("baseball hot dogs and apple pie") ==
 ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
p word_lengths("Supercalifragilisticexpialidocious") ==
 ["Supercalifragilisticexpialidocious 34"]
p word_lengths("") == []