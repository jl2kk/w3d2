require_relative "/Users/aa/w3d2/Board.rb" 
require_relative "/Users/aa/w3d2/card.rb"


class Game 
  attr_accessor :board
    
  def initialize
    @board = Board.new
    @previous_guess = []
  end

  def play 
    @board.populate
    @board.render 
    
    while !board.won?
      puts "Input guess with this format 'row col' "
      input = gets.chomp
      make_guess(input)
    end
    puts "you win!!"
  end

  def make_guess(num)
      j = num.split(" ")
      row = j[0]
      col = j[1]
    if @previous_guess != []
      if board.grid_reveal[row][col] == board.grid_reveal[@previous_guess]
        board.grid[@previous_guess] = board.grid_reveal[@previous_guess]
        board.grid[pos] = board.grid_reveal[pos]
        @previous_guess = []
        @board.grid 
      
      else 
        board.grid[@previous_guess] = board.grid_reveal[@previous_guess]
        board.grid[pos] = board.grid_reveal[pos]
        @board.grid 
        sleep(10)
        board.grid[@previous_guess] = " "
        board.grid[pos] = " "
        @board.grid 
      end 
    else 
      @previous_guess = [row][col] 
      board.grid[@previous_guess] = board.grid_reveal[@previous_guess]
      board.grid[pos] = board.grid_reveal[pos]
      @board.grid 
    
    end              
  end

end
