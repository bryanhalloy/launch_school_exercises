# Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. The return value can be in any sequence you wish.


def divisors(int)
  return [1] if int == 1
  divisors_arr = [1,int]
  current_check = int
  loop do
    current_check -= 1
    if int % current_check == 0
      break if divisors_arr.include?(current_check)
      divisors_arr << current_check
      divisors_arr += divisors(current_check)
    end
    break if current_check <= 1
  end
  divisors_arr.flatten.sort.uniq
end


p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute