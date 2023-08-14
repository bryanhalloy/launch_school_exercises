=begin
Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

merge is non-destructive. 
merge! mutates the caller and adds the new hash onto the called hash, mutating the called hash. 

=end


hash_1 = {bryan: 34, rachel: 30, eric: 35}
hash_2 = {:mom => 62, :dad => 61}

merged_no_bang = hash_1.merge(hash_2)
puts "with no bang, we see that hash_1 is preserved"
puts hash_1


hash_1.merge!(hash_2)
puts "with bang, we see that hash_1 has been mutated"
puts hash_1


puts "and in both cases we have the merged hash"
puts merged_no_bang
puts hash_1