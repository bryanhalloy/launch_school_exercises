def is_an_ip_number?(input)
  input.to_i.between?(0,255)
end


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    if is_an_ip_number?(word)
      next
    else
      return false
    end
  end
  return true
end


test1 = '10.4.5.11'
test2 = '10.4.5.300'
test3 = '4.5.5'
test4 = '1.2.3.4.5'
test5 = '1.o.4.5'

puts "#{test1} --> #{dot_separated_ip_address?(test1)}"
puts "#{test2} --> #{dot_separated_ip_address?(test2)}"
puts "#{test3} --> #{dot_separated_ip_address?(test3)}"
puts "#{test4} --> #{dot_separated_ip_address?(test4)}"
puts "#{test5} --> #{dot_separated_ip_address?(test5)}"