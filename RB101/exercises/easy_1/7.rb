def getword (word_type)
  puts "\nPlease input a #{word_type}:"
  recieved_word = gets.chomp
  recieved_word
end

adverb = getword('adverb')
verb = getword('verb')
adjective = getword('adjective')
noun = getword('noun')

story = <<-STRNG
\nHave you ever #{adverb} #{verb} with a #{adjective} #{noun}? No way!
STRNG
 
puts story
