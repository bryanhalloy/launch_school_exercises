
VOWELS = %w(a e i o u A E I O U)

def remove_vowels (input_array)
  input_array.map do |string|
    new_string = ''
    string.each_char do |char|
      if !VOWELS.include?(char)
        new_string << char
      end
    end
    new_string
  end
end





p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']