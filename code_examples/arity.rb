# Blocks arity
# Note that Array#each passes one argument to the closure. 
[1].each {puts "This works (block - too many arguments passed to block"}
[1].each {|a, b| puts "This works (block - too few arguments passed to block"}

# Procs artity
def method_passes_one_arg(proc_input)
  proc_input.call(100)
end

my_proc_1 = Proc.new {puts "This works (proc - too many arguments passed to proc"}
method_passes_one_arg(my_proc_1)

my_proc_2 = proc {|a, b| puts "This works (proc - too few arguments passed to proc"}
method_passes_one_arg(my_proc_2)

# Lamda artity
my_lamda_1 = lambda {|a| puts "This works (lamda - right number of arguments passed to lamda"}
method_passes_one_arg(my_lamda_1)


my_lamda_1 = lambda {puts "This fails (lamda - too many arguments passed to lamda"}
# method_passes_one_arg(my_lamda_1)

my_lamda_2 = ->(a, b) {puts "This fails (lamda - too few arguments passed to lamda"}
# method_passes_one_arg(my_lamda_2)