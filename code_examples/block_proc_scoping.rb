def inside_secret(proc)
  proc.call('[A]') << "[B]"
end

string1 = '[C]'
my_proc = Proc.new {|msg| string1 << msg}  
string1 << "[D]"
inside_secret(my_proc)

p string1 # => "[C][D][A][B]"




