def print_triangle (size_int, right_angle_corner_int = 4 )
  if size_int < 1
    puts 'Error - positive integer needed'
    return
  end

  size_int.times do |index|
    case right_angle_corner_int
    when 1
      puts  '*' * (size_int - index) + ' ' * (index) 
    when 2
      puts  ' ' * (index + 1)  +  '*' * (size_int - index)
    when 3
      puts  ' ' * (size_int - index)  +  '*' * (index + 1)
    when 4
      puts  '*' * (index + 1) + ' ' * (size_int - index + 1)  
    end
  nil
  end
end

print_triangle(5,1)
print_triangle(5,2)
print_triangle(5,3)
print_triangle(5,4)

