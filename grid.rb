class Grid
  def initialize
    @grid_size= 0
  end

  # asks the user to determine the size of the Grid
  def grid_detirminator

    puts "Enter dimension of the Grid (>=1):"
    @grid_size=gets.chomp.to_f #to float so i get whole numbers in the form of X.y

    # if @grid_size<1
    #  puts "the size of the grid is less than one "

    #    else @grid_size


    #    end
  end
end

grid=Grid.new
Size_of_Grid =grid.grid_detirminator
puts "The size of the grid is" + " #{Size_of_Grid} "  "*" + " #{Size_of_Grid}." #size*size except for zero, crashes with negative number







