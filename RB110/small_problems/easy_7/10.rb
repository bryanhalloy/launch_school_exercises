def penultimate (input_string)
  input_string.split(' ')[-2]
  
  
  
  
  # split to words array
  # take index -2
  #return string word
end



p penultimate('Launch School is great!')
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'