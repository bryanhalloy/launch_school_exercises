=begin
Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

=end


arr = ['ay', 'bee', 'see', 'dee']
arr.each_with_index {|v,i| puts "At index #{i} is value #{v}"}
