a = ["thisstring",2,'three',9,10, 'lots']

b = [1,2,3]

var =  b.each_index {|index| b[index] = index + 2}
p var
p b



# a[0] = 'start'  # returns the result of the expression. Mutates the array
# p a  #["start", 2, "three", 9, 10, "lots"]

# a << "more elements"
# p a  # ["start", 2, "three", 9, 10, "lots", "more elements"]

# a[0,5] = 'works?'  # here, you are accessing 5 elements (length 5) and replacing it with ONE element. 
# a [1..3] = 'y','z'  # here you are accessing two elements and replacing them one for one (two replacements)



