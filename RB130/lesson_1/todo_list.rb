require 'pry'

# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

# =======================
# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo_object)
    raise TypeError.new("Can only add Todo objects") unless todo_object.instance_of?(Todo)
    self.todos << todo_object
  end

  alias_method :<<, :add 

  def size
    todos.size
  end

  def first
    todos[0]
  end

  def last
    todos[-1]
  end

  def to_a
    todos.clone
  end

  def done?
    todos.all? do |todo_obj|
      todo_obj.done?
    end
  end

  def item_at(idx)
    todos.fetch(idx)
  end

  def mark_done_at(idx)
    todos.fetch(idx).done!
  end

  def mark_undone_at(idx)
    todos.fetch(idx).undone!
  end

  def done!
    todos.each do |todo_obj|
      todo_obj.done!
    end
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(idx)
    item_at(idx)
    todos.delete_at(idx)
  end

  def to_s
    return_string = "---- #{title} ----\n" + todos.map {|obj| obj.to_s + "\n"}.join
    return_string
  end

  def each
    return self unless block_given?
    size.times do |iter|
      yield(todos[iter])
    end
    self
  end

  def select
    selected_list = TodoList.new(self.title)
    return selected_list unless block_given?
    while selected_list.size > 0
      selected_list.pop
    end
    self.each do |obj|
      selected_list.add(obj) if yield(obj)
    end
    selected_list
  end

  def find_by_title(search_string)
    self.each do |obj|
      return obj if obj.title == search_string
    end
    nil
  end

  def all_done
    self.select do |obj|
      obj.done?
    end
  end

  def all_not_done
    self.select do |obj|
      !obj.done?
    end
  end

  def mark_done(search_string)
    find_by_title(search_string).done!
  end

  def mark_all_done
    self.each do |obj|
      obj.done!
    end
  end

  def mark_all_undone
    self.each do |obj|
      obj.undone!
    end
  end


  private
  attr_accessor :todos
end

# =============================================
todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!

puts list

results = list.select { |todo| todo.done? }    # you need to implement this method

puts results