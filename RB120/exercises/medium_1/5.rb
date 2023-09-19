 class Minilang
  def initialize(command_string)
    @command_string = command_string
    @register = 0
    @stack = []
  end

  def eval
    @command_string.split(' ').each do |command_word|
      if command_word.to_i.to_s == command_word #is an integer
        n_place(command_word.to_i)
      else
        begin
          send(command_word.downcase)
        rescue NoMethodError
          raise StandardError, "Invalid token: #{command_word}"
        end
      end
    end
  end

  private
  attr_accessor :register, :stack
  
  def n_place(value)
    self.register = value
  end
  
  def print
    puts register
  end

  def push
    stack.push(register)
  end

  def add
    self.register = register + pop
  end

  def sub
    self.register = register - pop
  end

  def mult
    self.register = register * pop
  end

  def div
    self.register = register / pop
  end

  def mod
    self.register = register % pop
  end

  def pop
    if @stack.empty?
      raise StandardError, "Empty stack!"
    else
      self.register = stack.pop
    end
  end
end


puts '--- 1'
Minilang.new('PRINT').eval

puts '--- 4'
Minilang.new('5 PUSH 3 MULT PRINT').eval
puts '--- 7'
Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval

puts '--- 12'
Minilang.new('5 PUSH 10 PRINT POP PRINT').eval

puts '--- 16'
Minilang.new('5 PUSH POP POP PRINT').eval

puts '--- 19'
Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval

puts '--- 22'
Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval

puts '--- 25'
# Minilang.new('-3 PUSH 5 XSUB PRINT').eval

puts '--- 28'
Minilang.new('-3 PUSH 5 SUB PRINT').eval

puts '--- 31'
Minilang.new('6 PUSH').eval

