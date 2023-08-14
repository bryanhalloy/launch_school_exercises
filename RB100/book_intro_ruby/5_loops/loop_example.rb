=begin

loop do
  puts "This will keep printing until you hit Ctrl + c"
end


=end


i = 0
loop do
  i = i + 3.
  puts i
  if i == 10
    break       # this will cause execution to exit the loop
  end
end


