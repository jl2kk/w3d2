require_relative "Board" 
require_relative "card"


class Game 
    
    
    
    
  def initialize
    @board = Board.new
  end

  def play 
    board.render 
    while !board.won?
      puts "Input guess with this format '[num,num]' "
      input = gets.chomp
      make_guess(input)
    end
  end

  def make_guess(pos)
    

  end



end
