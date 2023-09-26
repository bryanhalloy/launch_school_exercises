class Octal
  attr_reader :octal_string

  def initialize(string)
    @octal_string = string
  end

  def to_decimal
    power_eight = 0
    octal_digits = octal_string.reverse.chars.map do |char|
      return 0 unless '01234567_'.include?(char)
      if char == '_' then 0
      else
        power_eight += 1
        char.to_i * (8**(power_eight - 1))
      end
    end
    octal_digits.sum
  end
end
