def word_sizes(input_string)
  word_sizes_arr = input_string.split.map(&:size)

  word_sizes_arr.uniq.map do |size_number|
    word_count = word_sizes_arr.select {|word_size| word_size == size_number}.size
    [size_number,word_count]
  end
  .to_h
end
  
  
  # split into words
  # iterate over words, get char count each word in an array
  # get unique
  # map over unique, return key (char count) and value (word count)
  # to_h
  # return h









p word_sizes('Four score and seven.')
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}