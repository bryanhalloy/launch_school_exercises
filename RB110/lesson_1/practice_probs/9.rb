def titleize(input_string)
  input_string.split(' ').map do |word|
    word.capitalize
  end
    .join(' ')
end




test = "the flintstones rock"

p titleize(test)

