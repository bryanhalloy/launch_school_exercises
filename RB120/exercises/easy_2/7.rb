

class Pet
  attr_accessor :type, :name
  
  def initialize (type, name)
    @type = type
    @name = name
  end
end


class Owner
  attr_accessor :name, :pets_owned
  
  def initialize (name)
    @name = name
    @pets_owned = []
  end

  def number_of_pets
    @pets_owned.size
  end
end

class Shelter  
  def initialize
    @owners = []
  end
  
  def adopt (new_owner, adopted_pet)
    new_owner.pets_owned.unshift(adopted_pet)
    @owners = (@owners + [new_owner]).uniq

  end

  def print_adoptions
    @owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.pets_owned.each do |pet|
        puts "a #{pet.type} named #{pet.name}"
      end
      puts "\n"
    end
  end
end





butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."