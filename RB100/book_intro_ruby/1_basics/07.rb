=begin
What does the following error message tell you?


SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
=end

puts 'This tells us that we closed a block, or perhaps a hash assignment, with a parenthesis instead of a bracket. Or perhaps we forgot a bracket.'
