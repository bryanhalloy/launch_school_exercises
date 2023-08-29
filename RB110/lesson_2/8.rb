hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


hsh.each_value do |word_array|
  word_array.each do |word|
    word.chars.each do |char|
      puts char if ('aeiou').include?(char)
    end
  end
end


