# --- Main functions ----
def minilang(command_string)
  # ouput the command entered
  puts "\n\n-> " + command_string
  # execute the commands
  command_string.split(' ').each {|command| ml_execute(command)}
  # output the result (as applicable) <-- will be done by execution parser above
end


def ml_execute(command)
  if is_integer?(command)
    n_meth(command.to_i)
  else
    case command
    when "PUSH"  then push_method()
    when "ADD"   then add_method()
    when "SUB"   then sub_method()
    when "MULT"  then mult_method()
    when "DIV"   then div_method()
    when "MOD"   then mod_method()
    when "POP"   then pop_method()
    when "PRINT" then print_method()
    end
  end
end



# --- Language Commands ----
def n_meth(int)
  $register[0] = int
end

def push_method()
  $stack.push($register[0])
end

def add_method()
  $register[0] = $register[0] + $stack.pop
end

def sub_method()
  $register[0] = $register[0] - $stack.pop
end

def mult_method()
  $register[0] = $register[0] * $stack.pop
end

def div_method()
  $register[0] = $register[0] / $stack.pop
end

def mod_method()
  $register[0] = $register[0] % $stack.pop
end

def pop_method()
  $register[0] = $stack.pop
end

def print_method()
  puts $register[0]
end



# --- Helper Functions ----
def is_integer?(str)
  str.to_i.to_s == str
end


# ---Initialize Stack and register ----
$stack = []
$register = []
$register[0] = 0




# ---- Start of program to execute ---- # 
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# # ---- End of program to execute ---- # 






