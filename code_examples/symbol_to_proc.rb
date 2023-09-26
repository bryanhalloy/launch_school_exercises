def bryan_method
  puts yield('bryan')
end

bryan_method {|str| str.upcase}  # => 'BRYAN'

up_proc = Proc.new {|str| str.upcase}
bryan_method(&up_proc)   # => 'BRYAN'

up_proc_from_sym = :upcase.to_proc
bryan_method(&up_proc_from_sym)   # => 'BRYAN'

bryan_method(&:upcase)   # => 'BRYAN'