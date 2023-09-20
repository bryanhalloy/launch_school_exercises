def compute(input=nil)
  return yield(input) if block_given?
  "Does not compute."
end


p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

p compute(10) {|val| val * 2}