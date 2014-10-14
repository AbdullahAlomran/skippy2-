require_relative 'die.rb'
class Point
  attr_reader :x_coordinate, :y_coordinate
  def initialize (x_coordinate, y_coordinate)

    @x_coordinate=x_coordinate
    @y_coordinate=y_coordinate
    @direction = {:WEST => 0, :EAST =>0,:NORTH => 0, :SOUTH => 0}
    @number_of_hops=0
  end

#home checker
  def at_home?

    if @x_coordinate == Size_of_Grid-1 && @y_coordinate == Size_of_Grid-1
      puts "The kangroo is back home" + " (#{@x_coordinate}:#{@y_coordinate})"
      puts "Finished in"+" #{@number_of_hops} " +"hops."
      puts"Game over"

      exit
    end
  end

  #new point each step
  def new_point
    game_die=Die.new 0,0
    result=game_die.throw1

    if result== :EAST
      @direction[:EAST]+=1
      @x_coordinate+=1
    elsif result== :WEST
      @direction[:WEST]-=1
      @x_coordinate-=1
    elsif result== :NORTH
      @direction[:NORTH]+=1
      @y_coordinate+=1
    else result== :SOUTH
      @direction[:SOUTH]-=1
      @y_coordinate-=1
    end
    puts "Hopped to:" + " (#{@x_coordinate}:#{@y_coordinate})"
  end

#current coridnation of the kangroo
  def print_coordinates

    if @x_coordinate < 0
      @x_coordinate=0
      @number_of_hops+=1
      puts "Oops, hit a boundary:" + "(#{@x_coordinate-1}:#{@y_coordinate})"
      puts "Back to:" + " (#{@x_coordinate}:#{@y_coordinate})"

    elsif @y_coordinate < 0
      @y_coordinate=0
      @number_of_hops+=1
      puts "Oops, hit a boundary:" + "(#{@x_coordinate}:#{@y_coordinate-1})"
      puts "Back to:" + " (#{@x_coordinate}:#{@y_coordinate})"

    elsif @x_coordinate > Size_of_Grid-1
      @x_coordinate-=1
      @number_of_hops+=1
      puts "Oops, hit a boundary:" + "(#{@x_coordinate+1}:#{@y_coordinate})"
      puts "Back to:" + " (#{@x_coordinate}:#{@y_coordinate})"

    elsif @y_coordinate > Size_of_Grid-1
      @y_coordinate-=1
      @number_of_hops+=1
      puts "Oops, hit a boundary:" + " (#{@x_coordinate}:#{@y_coordinate+1})"
      puts "Back to:" + " (#{@x_coordinate}:#{@y_coordinate})"

    end
    @number_of_hops+=1
  end

  def reset_direction

    @direction[:NORTH]=0;@direction[:SOUTH]=0;@direction[:EAST]=0;@direction[:WEST]=0
  end
end

