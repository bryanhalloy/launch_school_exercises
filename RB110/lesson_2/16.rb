# define meth
def generate_uuid ()
  substring_sizes = [8,4,4,4,12]
  char_possibilities = ("a".."z").to_a + ("0".."9").to_a

  substring_sizes.map do |char_count|
    sub_id = ''
    for char_num in (1..char_count).to_a do
      sub_id << char_possibilities.sample
    end
    sub_id
  end
  .join('-')
end

p generate_uuid
p generate_uuid
p generate_uuid






# store substring sizes

# for each substring
#   for size of said substring
#     generate a rand char
#     add it to the subUUID


# join all with a dash in the middle
# return the string




# write a method
  # returns one UUID
    # when called with no parameters
  # no side  effects
  # no inputs

# 5 sections of various char lengths each
# combined with dash
# returns a string

# hexadeimal = lowercase and 0..9