class Robot
  LETTERS = ("A".."Z").to_a
  DIGITS = (0..9).to_a.map(&:to_s)

  @@names = []

  def initialize
    @name_var = nil
  end

  def reset
    @@names.delete(@name_var)
    @name_var = nil
  end

  def name
    unless !!@name_var
      @name_var = generate_name
      @@names << @name_var
    end
    @name_var.clone
  end

  private

  def generate_name_naive
    LETTERS.sample + LETTERS.sample +
      DIGITS.sample + DIGITS.sample + DIGITS.sample
  end

  def generate_name
    loop do
      possible_name = generate_name_naive
      return possible_name if !@@names.include?(possible_name)
    end
  end
end
