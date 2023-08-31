NUMBER_WORD_CONVERSIONS = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
  "seven" => 7,
  "eight" => 8,
  "nine" => 9,
  "zero" => 0
}

def word_to_digit(input_sentence)
  sentence_array = split_by_with_space_period(input_sentence)
  
  new_sentence = sentence_array.map do |word|
    if NUMBER_WORD_CONVERSIONS.keys.include?(word)
      NUMBER_WORD_CONVERSIONS[word].to_s
    else
      word
    end
  end
  .join('')

  # split
  # iterate and eval
  # if in dict then replace it
  # write the whole thing back to the input string
  # return SAME string (mutating)
end


def split_by_with_space_period(input_string)
  result_array = []
  input_string.chars.each_with_index do |char,index|
    if index == 0
      result_array << char
      next
    end

    if char == ' ' || char == '.'
      result_array << char
    else
      if (result_array[-1] == ' ' || result_array == '.')
        result_array << char
      else
        result_array[-1] = result_array[-1] + char
      end
    end
  end
  result_array
end



p word_to_digit('Please call me at five five five one two three four. Thanks.') 
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'