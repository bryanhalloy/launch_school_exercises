class Diamond
  LETTERS = ('A'..'Z').to_a

  def self.make_diamond(max_letter)
    letter_index = LETTERS.find_index(max_letter)

    width = (letter_index * 2) + 1
    diamond_string = ''

    0.upto(letter_index) do |idx|
      diamond_string << build_line(idx, width)
    end

    (letter_index - 1).downto(0) do |idx|
      diamond_string << build_line(idx, width)
    end

    diamond_string
  end

  class << self
    private

    def build_line(idx, width)
      if idx == 0
        string = LETTERS[0]
      else
        space_count = (idx * 2) - 1
        string = LETTERS[idx] + (" " * space_count) + LETTERS[idx]
      end
      string = string.center(width)
      "#{string}\n"
    end
  end
end
