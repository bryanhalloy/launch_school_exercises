greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings


=begin
I expect it will return

hi there
a => 'hi there'
=end
