def stringy (input_int, start_int = 1)
  if input_int < 1
    puts 'Error: number must be a positive integer'
    return nil
  end

  numbers = []
  input_int.times do |index|
    if index.even?
      number = start_int == 1 ? 1 : 0
    else 
      number = start_int == 1 ? 0 : 1
    end

    numbers << number
  end

  numbers.join
end


puts stringy(-2)
puts stringy(6)
puts stringy(6,0)
puts stringy(4)
puts stringy(7)