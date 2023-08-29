

def cleanup(input_string)
  approved_chars = ("a".."z").to_a
  cleaned_string = ''

  input_string.chars.each do |char|
    if approved_chars.include?(char)
      cleaned_string << char
    else 
      if cleaned_string[-1] != ' '
        cleaned_string << ' '
      end
    end
  end
  cleaned_string
end
  
  
  # initiate whitelist
  # initiate result string to be built
    
    
  #   loop through every character
  #   if char not in whitelist, change it to space
  #     but if last char was a space, then change it to nothing


  # return result string


p cleanup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '