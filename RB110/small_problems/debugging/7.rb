def neutralize(sentence)
  words = sentence.split(' ')
  words_neutralized = words.reject do |word|
    negative?(word)
  end

  words_neutralized.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

=begin
The issue is line 4 - you are mutating an array which you are iterating over. This is causing the index to essentially skip element. To fix, use map instead. 
=end