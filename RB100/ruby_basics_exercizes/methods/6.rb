def time_of_day (input_bool)
  printphrase = "It's "
  time = input_bool ? "daytime!" : "nightime"
  printphrase = printphrase + time
  puts printphrase
end

daylight = [true, false].sample
time_of_day(daylight)


