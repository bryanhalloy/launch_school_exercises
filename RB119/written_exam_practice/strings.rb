# # ### OPERATIONS ---------------------
# a = 'my string 12345 yes!'

# ### Indexing ---------------------
# p a[] rescue  #slicing with no arguments throws an error (missing arguments)
# p a[0] # string indexes start at 0, like arrays
# p a[1]
# p a[99] # RETURNS nil, does not throw an error
# p a[nil]  rescue #throws error, can't coerce nil to integer
# p a['ring'] #accessing the ring string
# p a['notthere'] # returns nil since that range is not in the string object
# p a['yes!'] # returns that string
# p a['yes!qw'] # returns nil 


# ### Range Indexing ---------------------
# p a[1,3] # 'y s'   this is the form start string, number of strings
# p a[1,'g'] rescue # error, both args must be ints?
# p a[0..5] #directly passing in a range. This is an inclusive range
# p a[0...5]  #this is an EXclusive range
# p a[[1]]  rescue # no conversion of array to int
# p a[[0,3]] rescue # no conversion of array to int


# ### Negative Indexing ---------------------
# p a[-1] # resturns last character
# p a[-0] # same as 0
# p a[-99] # nil, out of bounds. This returns a string object with value nil. 
# p a[1..-1] # This works as expected. 2nd char to last
# p a[-1..-3] #wrong-order ranges return ''
# p a[20..-10]  #wrong-order ranges return ''
# p a[-3..99] #only returns the characters which are at a valid index. 
# p a[-3..99].size # --> 3  the indexs that result in nil are not returned
# p a[-99].size rescue # error thrown, no such method for nil class. The string object has value of nil. 
# p a[-5, 3] #still counts forward
# p a[-5, -3] #returns nil. Can't have negative length string (does NOT count backward)

# ### Assigning elements ---------------------
# b = 'this is another string'
# b[-1] = 'GG' # "this is another strinGG"     string is mutated

# b[0,4] = "THAT" # "THAT is another strinGG"  string is mutated, lengths match
# b[0,4] = "I" # "I is another strinGG"  string is mutated, whole subset replaced by shorter string
# b[0,1] = "YOU" # "YOU is another strinGG"  string is mutated, whole subset replaced by longer string
# b << ' right?' #  "YOU is another strinGG right?"     added to string object (concatenated and mutated)
# b.insert(1, "WOW")  # "YWOWOU is another strinGG right?"    inserted at index, shifted other chars down. Mutated the object. 



### METHODS ---------------------
a = 'hi you'
a.each_char do |char|
  p char
end

# "h"
# "i"
# " "
# "y"
# "o"






# p a # "   here is a THE string11   "
# p a.strip!   # "here is a THE string11"  -- returns reference to self
# p a # is mutated  "here is a THE string11"


# p a.strip.size   # 22 smaller string length now

# p a  # not mutated   "   here is a THE string11   "



# p a.split('e')       # ["h", "r", " is a THE string11"]
# p a.split            # ["here", "is", "a", "THE", "string11"]
# p a.split(' ',2)     # ["here", "is a THE string11"]


# p a.slice!(5,3)  # returns the sliced substring "is "
# p a              # and mutates the calling string   "here a THE string11"


# p a.replace("NEW WORDS")  # "NEW WORDS"
# p a    # "NEW WORDS"


# b = 'second string'
# p a.freeze  # returns reference to the now-frozen object
# a.downcase!  # returns error that a frozen string can't be modified
# p a   



# p a.downcase  # "here is a the string11"

# p a.count('h') # counts number of h's
# p a.count('he') # counts number of h's plus the number of e's
# p a.count('heHE') # counts number of h's plus the number of e's + H's + E's (it is case sensitive)
# p a.count(1) rescue # argument must be a string. Not coerced. 
# p a.count('1') # 2






