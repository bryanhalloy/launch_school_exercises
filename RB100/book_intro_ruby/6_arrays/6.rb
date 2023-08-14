=begin

You run the following code...

Copy Code
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
...and get the following error message:

Copy Code
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
What is the problem and how can it be fixed?

You can reference an item in the array by its name, needs to be by an index. 

=end

names = ['bob', 'joe', 'susan', 'margaret']
names = names.map {|n| n == 'margaret' ? "jody" : n}

puts names

# names['margaret'] = 'jody'