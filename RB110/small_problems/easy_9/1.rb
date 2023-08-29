def greetings(input_arr, input_hash)
  name = input_arr.join(' ')
  puts "Hello, #{name}! Nice to have a #{input_hash[:title]} #{input_hash[:occupation]} around."
  
  # output greeting. 
  return nil
end







greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."