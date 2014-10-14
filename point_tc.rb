

require 'test/unit'
require_relative 'Point.rb'


x_coordinate= 1
y_coordinate= 1

class Point_TC < Test::Unit::TestCase

  def setup
    @point = Point.new(x_coordinate,y_coordinate)
  end


  def reset_test

    assert_equal(@x_coordinate == Size_of_Grid-1 && @y_coordinate == Size_of_Grid-1,@point.at_home?  ,'direction was not set to 0s')
  end

  #def test_move_east

  #assert_equal(:EAST, result , 'grid size is not 4x4')
  #end



end