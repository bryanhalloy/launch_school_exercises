
def word_cap (input_string)
  input_string.split.map {|word| word.downcase.capitalize}.join(" ")



  # split by space
  # iterate each element
  # capitalize each
  # join with space



  # return new string
end





p word_cap('the javaScript language')
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'