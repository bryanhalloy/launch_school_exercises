=begin

It will output "These hashes are the same!".

The two hashes 'appear' to have the same keys and values. 
The two apparent differences to deep dive are 1) declaration of keys and values and 2) ordering. 

1)
In all cases, the same keys are used. Some are strings and some are symbols, and while assigned differently, they are all the same. Same with the values for the keys. 

2)
Ordering doesn't matter for hashes. They are unordered. 



=end

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end