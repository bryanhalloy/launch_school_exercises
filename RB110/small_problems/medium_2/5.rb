def triangle (s_1, s_2, s_3)
  sides = [s_1, s_2, s_3].sort

  return :invalid if sides.any? {|s| s <= 0 }
  return :invalid if sides[2] > (sides[0] + sides[1])

  return :equilateral if (sides[0] == sides[1]) && (sides[1] == sides[2])
  return :scalene if (sides[0] != sides[1]) && (sides[1] != sides[2]) && (sides[0] != sides[2])
  :isosceles
end




p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid