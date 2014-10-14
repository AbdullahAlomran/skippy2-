require 'test/unit'
require_relative'die.rb'

class Die_TC < Test::Unit::TestCase
  def setup
    @Die_skippy= Die.new 0,0
  end

  def test_initialize
    assert_equal(:SOUTH, @Die_skippy.throw1,'die is not south')
  end
  def test_case_one
    assert_equal(:NORTH, @Die_skippy.throw1,'die is not north')
  end
  def test_case_two
    assert_equal(:EAST, @Die_skippy.throw1,'die is not east')
  end
  def test_case_three
    assert_equal(:WEST, @Die_skippy.throw1,'die is not west')
  end

end