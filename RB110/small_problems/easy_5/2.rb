# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.
# Disregard Daylight Savings and Standard Time and other complications.

MINS_PER_HOUR = 60
HOURS_PER_DAY = 24


def time_of_day (input_int)
  # remove days from the equation. Get the remaineder (?) of 60*24 minutes. Ensure this works negative too. 
  mins_remove_days = input_int % (HOURS_PER_DAY * MINS_PER_HOUR)
  hours_int, mins_int = mins_remove_days.divmod(MINS_PER_HOUR)
  sprintf("%02d", hours_int) + ':' + sprintf("%02d", mins_int)
end



p time_of_day(-5)


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"