
def crunch(input_string)
  crunched_string = ''
  input_string.chars.each {|char| crunched_string << char if crunched_string[-1] != char}
  crunched_string
end



# use char array
# initialize new string
# iterate through each char
# if char != last char, add it
# return the string


p crunch('ddaaiillyy ddoouubbllee')
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''