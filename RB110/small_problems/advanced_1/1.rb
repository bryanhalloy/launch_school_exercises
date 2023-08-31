adjectives = %w(quick lazy sleepy ugly)
nouns = %w(fox dog head leg)
verbs = %w(jumps lifts bites licks)
adverbs = %w(easily lazily noisily excitedly)

WORDS = {adjectives: adjectives, nouns: nouns, verbs: verbs, adverbs: adverbs}

path = './madlib_body.txt'
body_text = File.read(path)

loop do
  change_made = false
  if body_text.include?('%{adjective}')
    body_text.sub!('%{adjective}', WORDS[:adjectives].sample)
    change_made = true
  end

  if body_text.include?('%{noun}')
    body_text.sub!('%{noun}', WORDS[:nouns].sample)
    change_made = true
  end

  if body_text.include?('%{verb}')
    body_text.sub!('%{verb}', WORDS[:verbs].sample)
    change_made = true
  end

  if body_text.include?('%{adverb}')
    body_text.sub!('%{adverb}', WORDS[:adverbs].sample)
    change_made = true
  end




  break if change_made == false
end

puts body_text



