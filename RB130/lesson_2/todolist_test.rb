require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
# require "minitest/reporters"
# Minitest::Reporters.use!

require_relative 'todo_list'

class TodoListTest < Minitest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos,@list.to_a)
  end

  def test_size
    assert_equal(@todos.size,@list.size)
  end

  def test_first
    assert_equal(@todos[0],@list.first)
  end

  def test_last
    assert_equal(@todos[-1],@list.last)
  end

  def test_shift
    returned_from_shift = @list.shift
    @todos.shift
    assert_equal(@todo1,returned_from_shift)
    assert_equal(@todos,@list.to_a)
  end

  def test_pop
    returned_from_pop = @list.pop
    @todos.pop
    assert_equal(@todo3,returned_from_pop)
    assert_equal(@todos,@list.to_a)
  end

  def test_done?
    assert_equal(false, @list.done?)
    @list.each {|obj| obj.done!}
    assert_equal(true, @list.done?)
  end

  def test_add_item_typeerror
    # # old code:
    # begin
    #   @list.add("item")
    # rescue TypeError => e
    # end
    # assert_equal(TypeError,e.class)

    assert_raises(TypeError) {@list.add("item")}
    assert_raises(TypeError) {@list.add(4)}
  end

  def test_shovel_in
    @list << (Todo.new(""))
    @todos << (Todo.new(""))
    assert_equal(@todos, @list.to_a)
  end

  def test_add
    @list.add(Todo.new(""))
    @todos << (Todo.new(""))
    assert_equal(@todos, @list.to_a)
  end

  def test_item_at
    assert_equal(@todos[1], @list.item_at(1))
    assert_raises(IndexError) {@list.item_at(100)}
    assert_raises(ArgumentError) {@list.item_at}
  end

  def test_mark_done_at
    @list.mark_done_at(1)
    assert_equal(true, @list.item_at(1).done?)
    assert_equal(false, @list.item_at(0).done?)
    assert_equal(false, @list.item_at(2).done?)
    assert_raises(IndexError) {@list.mark_done_at(100)}
  end

  def test_mark_undone_at
    @list.item_at(0).done!
    @list.item_at(1).done!
    @list.item_at(2).done!

    @list.mark_undone_at(1)

    assert_equal(false, @list.item_at(1).done?)
    assert_equal(true, @list.item_at(0).done?)
    assert_equal(true, @list.item_at(2).done?)
    assert_raises(IndexError) {@list.mark_undone_at(100)}
  end

  def test_done!
    @list.done!
    assert_equal(true, @todo1.done? && @todo2.done? && @todo3.done?)
  end

  def test_remove_at
    returned = @list.remove_at(1)
    assert_equal(@todo2, returned)
    assert_equal([@todo1, @todo3], @list.to_a)
    assert_raises(IndexError) {@list.remove_at(100)}
  end

  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT
  
    assert_equal(output, @list.to_s)
  end

  def test_to_s_with_completion
    @list.mark_done_at(1)
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [X] Clean room
    [ ] Go to gym
    OUTPUT
  
    assert_equal(output, @list.to_s)
  end

  def test_to_s_with_completions
    @list.done!
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT
  
    assert_equal(output, @list.to_s)
  end

  def test_each_iterating
    test_output = []
    @list.each do |obj|
      test_output << obj
    end
    assert_equal(@todos,test_output)
  end

  def test_each_return_value
    assert_equal(@list,@list.each{})
  end

  def test_select
    @list.mark_done_at(1)
    expected_list = TodoList.new(@list.title)
    expected_list.add(@todo2)

    returned_list = @list.select {|obj| obj.done?}
    assert_equal(expected_list.to_s, returned_list.to_s)
  end

end