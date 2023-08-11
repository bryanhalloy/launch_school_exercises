=begin

It will not print anything to the screen. 

It will return nil, because the screen method returns a return command with no output (nil)

=end

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")