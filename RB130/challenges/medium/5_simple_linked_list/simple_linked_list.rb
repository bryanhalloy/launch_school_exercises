class Element
  attr_reader :datum, :next

  def initialize(input_num, following_element = nil)
    @datum = input_num
    @next = following_element
  end

  def tail?
    !@next
  end
end

class SimpleLinkedList
  attr_accessor :list_arr, :curr_index

  def initialize
    @list_arr = []
    @curr_index = -1
  end

  def size
    list_arr.size
  end

  def empty?
    list_arr.empty?
  end

  def push(item)
    list_arr << Element.new(item, list_arr.last)
  end

  def peek
    return nil if empty?
    head.datum
  end

  def head
    list_arr.last
  end

  def pop
    popped_element = list_arr.pop
    popped_element.datum
  end

  def self.from_a(input_array)
    new_list = new
    return new_list unless !!input_array
    new_list = SimpleLinkedList.new
    input_array.reverse.each do |val|
      new_list.push(val)
    end
    new_list
  end

  def to_a
    list_arr.map(&:datum).reverse
  end

  def reverse
    list = SimpleLinkedList.new
    current_elem = head
    while !current_elem.nil?
      list.push(current_elem.datum)
      current_elem = current_elem.next
    end
    list
  end
end
