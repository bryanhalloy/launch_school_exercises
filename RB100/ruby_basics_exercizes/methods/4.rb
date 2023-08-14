def hello
  'Hello'
end

def world
  'World'
end

def greet()
  return hello().to_s + " " + world().to_s
end

puts greet()
