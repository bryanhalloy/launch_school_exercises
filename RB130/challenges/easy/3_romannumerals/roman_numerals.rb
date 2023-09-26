module RomanConstants
  ONES_ARRAY = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
  TENS_ARRAY = ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
  HUNS_ARRAY = ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM']
  THOU_ARRAY = ['', 'M', 'MM', 'MMM']

  DIGITS_HASH = { 1 => ONES_ARRAY,
                  10 => TENS_ARRAY,
                  100 => HUNS_ARRAY,
                  1000 => THOU_ARRAY }
end

class RomanNumeral
  include RomanConstants
  attr_accessor :value_decimal

  def initialize(value_decimal)
    @value_decimal = value_decimal
  end

  def to_roman
    too_long_number_check
    roman_numeral = ''
    current_value = value_decimal
    return nil if current_value < 1

    [1, 10, 100, 1000].each do |place|
      place_value = (current_value % (10 * place)) / place
      roman_numeral.prepend(DIGITS_HASH[place][place_value])
      current_value -= place_value * place
    end
    roman_numeral
  end

  private

  def too_long_number_check
    too_long_msg = "Roman numerals no accessible for values over 3999"
    raise(StandardError, too_long_msg) if value_decimal > 3999
  end
end
