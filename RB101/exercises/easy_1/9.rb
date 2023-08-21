def center_of (input_string)
  if input_string.length.odd?
    return input_string[input_string.length / 2]
  else
    return input_string[(input_string.length / 2 - 1),2]
  end
end


puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'



puts center_of('I love ruby')
puts center_of('Launch')