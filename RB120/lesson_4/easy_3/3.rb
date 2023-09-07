class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end


ac1 = AngryCat.new(1,"one")
ac2 = AngryCat.new(2,"two")

p ac1.age
p ac1.name
p ac2.age
p ac2.name
  
  

