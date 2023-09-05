
# Create a class 'Student' with attributes name and grade. 

# Do NOT make the grade getter public, so joe.grade will raise an error. 


# Create a better_grade_than? method, that you can call like so...
# puts "Well done!" if joe.better_grade_than?(bob)


class Student
  attr_reader :name
  
  def initialize(name, grade, ssn)
    @name = name
    @grade = grade
    @ssn = ssn
  end

  def better_grade_than?(other_student)
    self.grade < other_student.grade
  end

  def get_ssn_last_digs
    self.ssn.to_s[-2,2]
  end




  protected
  attr_reader :grade

  private
  attr_reader :ssn

end

joe = Student.new("Joe", "A", 1234)
bob = Student.new("Bob", "B", 7543)

puts joe.name
puts "Well done!" if joe.better_grade_than?(bob)

puts joe.get_ssn_last_digs