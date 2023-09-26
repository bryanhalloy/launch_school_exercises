class Anagram
  attr_reader :word_string

  def initialize(word_string)
    @word_string = word_string
  end

  def match(test_words)
    test_words = test_words.uniq
    test_words.select do |test_word|
      anagram?(test_word)
    end
  end

  def anagram?(test_word)
    return false if same_word_case_insensitive?(test_word)
    target_arr = word_string.downcase.chars.sort
    test_arr = test_word.downcase.chars.sort

    [target_arr.size, test_arr.size].max.times do |iter|
      return false if target_arr[iter] != test_arr[iter]
    end
    true
  end

  def same_word_case_insensitive?(test_word)
    word_string.downcase == test_word.downcase
  end
end
