class Die
  attr_reader :x_coordinate, :y_coordinate


  def initialize (x_coordinate, y_coordinate)  @x_coordinate=x_coordinate
  @y_coordinate=y_coordinate
  end


  #throw a dice with 4 random options in this case 4 possible sides N,S,E,W
  def throw1 #throw1 just not to interfere with the karnel where throw exists
    side=rand(4)

      case

        when side == 0
        :NORTH

        when side == 1
        :SOUTH

        when side == 2
        :WEST

        else  side == 3
        :EAST

      end

  end
end




