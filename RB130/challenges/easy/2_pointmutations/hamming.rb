class DNA
  def initialize(string)
    @strand_array = string.chars
  end

  def hamming_distance(other_strand_string)
    other_strand_array = other_strand_string.chars
    if strand_array.size <= other_strand_array.size
      short_strand = strand_array
      long_strand = other_strand_array
    else
      short_strand = other_strand_array
      long_strand = strand_array
    end

    differences_count(short_strand, long_strand)
  end

  private

  attr_reader :strand_array

  def differences_count(short_arr, long_arr)
    diff_count = 0
    short_arr.each_index do |idx|
      if short_arr[idx] != long_arr[idx]
        diff_count += 1
      end
    end
    diff_count
  end
end
