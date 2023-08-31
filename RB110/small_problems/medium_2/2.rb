BLOCKS = [
  'B:O',   
  'X:K',   
  'D:Q',   
  'C:P',   
  'N:A',
  'G:T',   
  'R:E',   
  'F:S',   
  'J:W',   
  'H:U',
  'V:I',   
  'L:Y',   
  'Z:M'
]

def block_word?(input_word)
  blocks_running_arr = BLOCKS.map {|v| v.clone}
  
  input_word.upcase.chars.each do |char|
    has_a_block = false
    blocks_running_arr.each_with_index do |blk, index|
      in_blk_left = blk[0] == char
      in_blk_right = blk[2] == char
      if in_blk_left && in_blk_right
        return false
      elsif in_blk_left || in_blk_right
        has_a_block = true
        blocks_running_arr.delete_at(index)
      else
        next
      end
    end
    return false if !has_a_block
  end
  return true
end

    
  # for each char in input word
  #   check if in list left
  #     if yes, remove that element and corresponding one in list right
  #   check if in list right
  #     if yes, remove that element and corresponding one in list left
  #     if in neither list then false
  #   if gets through all then true

  #return bool




p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

p BLOCKS # to ensure it is not mututed