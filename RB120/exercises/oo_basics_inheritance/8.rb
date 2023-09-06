class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
p cat1.class.ancestors


#There is no method in the method lookup path. 