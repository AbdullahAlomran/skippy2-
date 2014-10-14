# Name:         Abdullah Alomran
# Studnet:      11107715
######### Assignment 1 #########






require_relative 'die.rb'
require_relative 'grid.rb'
require_relative 'kangroo.rb'
require_relative 'point.rb'

class Main
  game=Kangaroo.new 'Kangroo game'
  game_die=Die.new 0,0
  game_point= Point.new 0,0
  game.start_hopping


  while true

    game_die.throw1
    game_point.new_point
    game_point.reset_direction
    game_point.print_coordinates
    game_point.at_home?

  end


end
