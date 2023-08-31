def featured(num)
  check_num = num + 7 - (num % 7)
  check_num += 7 if check_num.even?

  loop do
    return check_num if is_featured(check_num)
    if check_num > 9999999999
      puts "There is no possible number that fulfills those requirements"
      return
    end
    check_num += 14
  end
end


def is_featured(check_num)
  return false if check_num % 7 != 0
  return false if check_num.even?
  return false if check_num.to_s.chars != check_num.to_s.chars.uniq
  true
end




#   iterate
# get the next multiple of 7
# if even, add 7

#   iterate
#   test if it is a featured number
#   if yes, return it
#   if not, add 14

#   if get to an 11 digit number than break and return error


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements