require 'date'

def friday_13th(input_year)
  check_date = Date.new(input_year, 1, 13)
  fri13_counts = 0

  loop do
    break if check_date.year == (input_year + 1)
    fri13_counts += 1 if check_date.friday?
    check_date = check_date >> 1
  end
  fri13_counts
end







p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2