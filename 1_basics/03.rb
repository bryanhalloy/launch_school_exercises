=begin
Write a program that uses a hash to store a list of movie titles 
with the year they came out. Then use the puts command to make 
your program print out the year of each movie to the screen. The output for your program should look something like this.
1975
2004
2013
2001
1981

=end

# practice initializing an empty
movies = {
  'Titanic':1997,
  :Gladiator => 2000
}

 # key names should be SNAKE CASE!

# practice different methods for adding values
movies.store(:Jaws,1979)
movies[:'The Departed'] = 2001  #I need to deep dive more how to assign a hash key that is a string with a space in it. 

#Fix date error
movies[:Jaws] = 1975

#Output
movies.each do |key, year|
  puts year
end
#Is there a better way to do this without a loop?

puts movies[:Jaws]
