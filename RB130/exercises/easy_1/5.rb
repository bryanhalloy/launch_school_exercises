
# Write a program that deciphers and prints each of these names.

# Build a lookup hash
# initialize a-z lowercase array
# define an offset or ROT value
# iterate through first array
# assign key
# to determine value, double the input array and find the new value


# iterate through each string, looking at downcased character
# if character in lookup hash
#   log the case (or or down)
#   replace it
#     upcase it if needed
# else, keep it as is
# join all chars back together
# output the char



ROT = 13

def generate_rot_hash(offset_val)
  base_chars = ('a'..'z').to_a
  rot_hash = {}
  base_chars.each_index do |idx|
    rot_hash[base_chars[idx]] = (base_chars + base_chars)[idx + offset_val]
  end
  rot_hash
end



def unrot(string, rot_value)
  unrot_hash = generate_rot_hash(rot_value)
  
  unrotted_string = ''
  string.split('').map do |char|
    if unrot_hash.keys.include?(char.downcase)
      unrotted_char = unrot_hash[char.downcase]
      unrot_hash.keys.include?(char)? unrotted_char : unrotted_char.upcase
    else
      char
    end
  end
  .join('')
end


p unrot('Nqn Ybirynpr', ROT)
p unrot('Tenpr Ubccre', ROT)
p unrot('Nqryr Tbyqfgvar', ROT)
p unrot('Nyna Ghevat', ROT)
p unrot('Puneyrf Onoontr', ROT)
p unrot('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv', ROT)
p unrot('Wbua Ngnanfbss', ROT)
p unrot('Ybvf Unvog', ROT)
p unrot('Pynhqr Funaaba', ROT)
p unrot('Fgrir Wbof', ROT)
p unrot('Ovyy Tngrf', ROT)
p unrot('Gvz Orearef-Yrr', ROT)
p unrot('Fgrir Jbmavnx', ROT)
p unrot('Xbaenq Mhfr', ROT)
p unrot('Fve Nagbal Ubner', ROT)
p unrot('Zneiva Zvafxl', ROT)
p unrot('Lhxvuveb Zngfhzbgb', ROT)
p unrot('Unllvz Fybavzfxv', ROT)
p unrot('Tregehqr Oynapu', ROT)