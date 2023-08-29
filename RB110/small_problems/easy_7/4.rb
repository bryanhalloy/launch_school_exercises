def swapcase(input_string)
  input_string.chars.map do |char|
    if char.downcase == char
      char.upcase
    else
      char.downcase
    end
  end
  .join('')
  
  
  
  
  
  # iterate with map
  # test if downcase
  #   if yes, then upcase
  #   if no, then downcase it
  # join
  #return new string
end



p swapcase('CamelCase')
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'