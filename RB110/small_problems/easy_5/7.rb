def word_sizes(input_string)
  allowed_chars = [' '] + ('a'..'z').to_a + ('A'..'Z').to_a
  input_string = input_string.chars.map do |char|
    if allowed_chars.include?(char) then char
    else ''
    end
  end
  .join('')

  
  word_sizes_arr = input_string.split.map(&:size)

  word_sizes_arr.uniq.map do |size_number|
    word_count = word_sizes_arr.select {|word_size| word_size == size_number}.size
    [size_number,word_count]
  end
  .to_h
end

p word_sizes('Four score and seven.')
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}