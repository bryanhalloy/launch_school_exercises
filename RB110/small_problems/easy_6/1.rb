
DEGREE = "\xC2\xB0"
MINS_PER_DEGREE = 60
SECS_PER_MIN = 60

def dms(input_float)
  deg = input_float.to_i
  min, min_remainder = (input_float - deg).divmod(1.0/MINS_PER_DEGREE)
  sec = min_remainder / (1.0/MINS_PER_DEGREE/SECS_PER_MIN)
  sec = sec.to_i

  deg.to_s + DEGREE + sprintf("%02d",min) + "'" + sprintf("%02d",sec) + '"'
end



# take the decimal, see how many 1/60ths go into it
# take the remainder, see how many 1/60ths go into it
# format this, plus the int, as strings
# combine them all and format them




puts dms(254.6)
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")