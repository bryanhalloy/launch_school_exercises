ALPHAS = ('a'..'z').to_a + ('A'..'Z').to_a

def staggered_case(input_string)
  new_string = ''
  coerce_upcase = true


  input_string.chars.each do |char|
    if ALPHAS.include?(char)
      if coerce_upcase
        new_string << char.upcase
      else
        new_string << char.downcase
      end
      coerce_upcase = !coerce_upcase
    else
      new_string << char
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
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'