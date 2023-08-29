def staggered_case(input_string)
  new_string = ''
  input_string.chars.each_with_index do |char, index|
    if index.even?
      new_string << char.upcase
    else
      new_string << char.downcase
    end
  end
  new_string
end

  
  
  
  # initiate new stirng
  # iterate using each with index
  # if index is odd then upcase
  # else downcase
  #return new string





p staggered_case('ignore 77 the 444 numbers')
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'