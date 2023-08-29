# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.
# Disregard Daylight Savings and Standard Time and other irregularities.


MINS_PER_HOUR = 60
HOURS_PER_DAY = 24

def after_midnight(time_string)
  # find number of minutes beyond midnight it reps
  #   split by colon
  #   coerce each into an int
  #   multiply by constants
  #   sum
  hours, minutes = time_string.split(':')
  hour_minutes = hours.to_i * MINS_PER_HOUR
  minute_minutes = minutes.to_i
  (hour_minutes + minute_minutes) % (MINS_PER_HOUR * HOURS_PER_DAY)
end


def before_midnight(time_string)
  (MINS_PER_HOUR * HOURS_PER_DAY - after_midnight(time_string)) % (MINS_PER_HOUR * HOURS_PER_DAY)
end


# take string



# to find before time, substract it from minutes in day

p after_midnight('00:00')
p before_midnight('00:00')


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0