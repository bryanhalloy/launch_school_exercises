class Person
  def name=(combined_name)
    @first_name, @last_name = combined_name.split(' ')
  end

  def name
    [@first_name, @last_name].join(' ')
  end


end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name