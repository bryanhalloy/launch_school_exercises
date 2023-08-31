def move(n, from_array, to_array)
  return if n <= 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']


=begin
The issue is that there is no way for the recursive function to break or stop itself, so we are getting a stack overflow. WE can fix this by adding a new line after line 1"
return if n <= 0
=end