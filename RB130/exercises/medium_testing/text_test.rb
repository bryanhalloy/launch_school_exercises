require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text_class.rb'

class TextTest < Minitest::Test
  TEST_FILENAME = 'sample_text.txt'
  
  def setup
    @test_file = File.open(TEST_FILENAME)
    @original_string = @test_file.read
    @text_object = Text.new(@original_string)
  end

  def teardown
    @test_file.close
  end

  # -------

  def test_swap_lite
    assert_equal('eebcdee',Text.new('aabcdee').swap('a','e'))
  end
  
  def test_swap_full
    expected_modified_string = @original_string.gsub('a','e')
    assert_equal(expected_modified_string, @text_object.swap('a','e'))
  end

  def test_split
    expected_count = @original_string.split(' ').count
    assert_equal(expected_count, @text_object.word_count)
  end


end


