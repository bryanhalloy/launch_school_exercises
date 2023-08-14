def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep


#It will print 0 through 5 on each seperate lines. I missed in the fact that sheep is just the times index, and that it starts at zero. Also that the times block returns the initial intiger upon which the method was called. 


# WRONG :sheep 5 times on a new line. The last nil from the inside put is not shown using puts (would print on p though)
