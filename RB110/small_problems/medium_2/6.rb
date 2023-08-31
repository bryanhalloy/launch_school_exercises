def triangle(ang_1, ang_2, ang_3)
  angles = [ang_1, ang_2, ang_3].sort
  return :invalid if angles.sum != 180
  return :invalid if angles[0] == 0
  return :right if angles[2] == 90
  return :acute if angles[2] < 90
  return :obtuse if angles[2] > 90
  nil
end





p triangle(60, 70, 50)
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid