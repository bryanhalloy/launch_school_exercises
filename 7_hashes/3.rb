=begin
Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
=end


hash_1 = {bryan: 34, rachel: 30, eric: 35}

hash_1.each {|k,v| puts k}

hash_1.each {|k,v| puts v}

hash_1.each {|k,v| puts ("#{k} => #{v}")}


