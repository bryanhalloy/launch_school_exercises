module ScrabbleLetters
  SCRABBLE_LETTER_VALUES = {  1 => %w(a e i o u l n r s t),
                              2 => %w(d g),
                              3 => %w(b c m p),
                              4 => %w(f h v w y),
                              5 => %w(k),
                              8 => %w(j x),
                              10 => %w(q z) }
end

class Scrabble
  include ScrabbleLetters
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def score
    return 0 unless word.instance_of?(String)
    cleaned_word = word.downcase.gsub(/[^a-z]+/, '')
    cleaned_word.downcase.chars.reduce(0) do |sum, char|
      sum + letter_score(char)
    end
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  private

  def letter_score(char)
    SCRABBLE_LETTER_VALUES.each do |val, let_arr|
      return val if let_arr.include?(char)
    end
    0
  end
end
