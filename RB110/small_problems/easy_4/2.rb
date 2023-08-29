

=begin

Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.


inputs
a year (int)

return value:
the century (string)

output: none

requirements:
- The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
- New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.
- Not worrying about BC years and centuries
- Not worrying about non-int input


=end

def get_century_number(input_year_int)
  if input_year_int % 100 == 0
    get_century_number(input_year_int - 1)
  else
    return input_year_int / 100 + 1
  end
end


def get_suffix(century_number)
  century_num_eval = century_number % 100
  if century_num_eval == 0
    'th'
  elsif century_num_eval == 1
    'st'
  elsif century_num_eval == 2
    'nd'
  elsif century_num_eval == 3
    'rd'
  elsif century_num_eval <= 20
    'th'
  else
    if century_num_eval % 10 == 1
      'st'
    elsif century_num_eval % 10 == 2
      'nd'
    elsif century_num_eval % 10 == 3
      'rd'
    else
      'th'
    end
  end
end


def century(input_year_int)
  century_number = get_century_number(input_year_int)

  suffix = get_suffix(century_number)

  return century_number.to_s + suffix
end




  # determine century number
  #   if year ends in 00 then take prior centure
  #   else take current century

  # determine appropriate suffix
  # TBD

  # concatenate them




# tests
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'




