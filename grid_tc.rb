require 'test/unit'
require_relative'grid.rb'

class Grid_TC < Test::Unit::TestCase
  def setup
    @grid_size = Grid.new
  end


  def test_case_grid
    assert_equal(4, Size_of_Grid, 'grid size is not 4x4')
  end


  end