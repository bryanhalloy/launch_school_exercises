=begin
Write a method that counts down to zero using recursion.

=end


def countdown(value)
  puts(value)
  if value == 0
    puts ("done!")
  else
    countdown(value - 1)
  end
end



countdown(1000)

