CONSONANTS = ('a'..'z').to_a.join.delete('aeiou').split('')


def double_consonants(input_string)
  result_string = ''
  input_string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      result_string << char * 2
    else 
      result_string << char
    end
  end
  result_string


  #return string
end









p double_consonants("Hello-World!")
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""