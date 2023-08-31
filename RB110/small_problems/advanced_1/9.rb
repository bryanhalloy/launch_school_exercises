def egyptian(input_rat_num)
  denom_array = []
  denom_check = 1

  loop do
    denom_array.push(denom_check)
    test_result = unegyptian(denom_array)
    if test_result == input_rat_num
      break
    elsif test_result < input_rat_num
      denom_check += 1
      next
    else
      denom_array.pop
      denom_check += 1
    end
  end
  denom_array
end


def unegyptian(unit_denom_array)
  unit_denom_array.reduce(0) {|tot,de| tot + Rational(1,de)}
end


p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]
p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)