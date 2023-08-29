def swap (input_string)
  input_string.split(' ').map do |word|
    if word.length == 1 then word
    else word[-1] + word[1..-2] + word[0]
    end
  end
  .join(' ')
end



# split the array by spaces
# iterate through each element
# grab first and last letter
# add them back but reversed

# end

# join the array again




p swap('oh hello a friend')

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
p swap('oh hello  my friend') == 'ho oellh ym drienf'  # not worrying about double spaces?