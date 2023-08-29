def repeater (input_string)
  output_string = ''
  input_string.chars.each do |char|
    output_string << char*2
  end
  output_string
  
  #return string
end



p repeater('Hello')
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''