class Triangle
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
    input_validation
  end

  def kind
    return 'equilateral' if equilateral?
    return 'isosceles' if isoceles?
    return 'scalene' if scalene?
  end

  private

  attr_reader :sides

  # Functional methods
  def equilateral?
    sides[0] == sides[1] && sides[1] == sides[2]
  end

  def scalene?
    sides[0] != sides[1] && sides[0] != sides[2] && sides[1] != sides[2]
  end

  def isoceles?
    !equilateral? && !scalene?
  end

  # Error testing methods
  def input_validation
    @sides.each do |side|
      input_validation_obj_class(side)
      input_validation_nonpositive_side(side)
    end
    input_validation_legal_shape
  end

  def input_validation_obj_class(side)
    valid_class_bool = side.instance_of?(Float) || side.instance_of?(Integer)
    exception_message = 'Invalid side inputs. Only Integer and Float accepted.'
    raise(ArgumentError.new, exception_message) unless valid_class_bool
  end

  def input_validation_nonpositive_side(side)
    exception_message = 'Sides must be > 0'
    raise(ArgumentError.new, exception_message) unless side > 0
  end

  def input_validation_legal_shape
    sorted_sides = sides.sort
    invalid_lengths_bool = sorted_sides[2] >= sorted_sides[0] + sorted_sides[1]
    exception_message = 'No one side may be >= the sum of the other two sides.'
    raise(ArgumentError.new, exception_message) if invalid_lengths_bool
  end
end
