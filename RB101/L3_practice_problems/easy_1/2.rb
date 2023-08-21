=begin


what is != and where should you use it?
--> It is a logical operatory, use to test if two objects are not equal to eachother. Use it on logical comparisons. 

put ! before something, like !user_name
--> It evaluates the expression to false. An object (other than false or nil) has a truthiness of truthy, which putting ! switches to a boolean of false for the expression. Use this to negate a truthy logical test. 

put ! after something, like words.uniq!
--> No explicit operation. It is a non-strict convention, that in a method name, putting it at the end notes that the method mutates the caller. 

put ? before something
--> This only happens in the ternary operator, used to seperate the expression from the true outcome. 

put ? after something
--> Similar to ! above. No explicit meaning, but expect in a method that returns a boolean. 


put !! before something, like !!user_name
--> Returns a boolean object (true uniless the something is false or nil). Use it to strictly converty an expression to a boolean. 

