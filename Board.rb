require_relative "/Users/aa/w3d2/card.rb"

class Board
    
    attr_accessor :grid

    def initialize

        @grid = Array.new(5) {Array.new(5,  " ")}
        @grid_reveal = Array.new(5) {Array.new(5,  " ")}
    end 


    def populate
        grid[0] = ["", 1, 2 , 3, 4]
        l = 1 
        (0...grid.length).each do |i|
            (1...grid.length).each do |row|
                @grid[row][i] = l 
                l+=1 
            end 
        end
        card_arr = ("a".."h").to_a * 2 
        (1...grid.length).each do |row|
            (1...grid.length).each do |col|
                newcard = Card.new
                @grid_reveal[row][col] = newcard.value
            end 
        end 
    end 

    def render 
        @grid 
    end 


    def won?
        (1...grid.length).each do |row|
            (1...grid.length).each do |col|
                if @grid[row][col] = " "
                    return false 
                end 
            end 
            return true 
        end 
        
    end 

    def reveal(guessed_pos)
        row,col = guessed_pos
        if @grid[row][col] == " "
            @grid[row][col] = @grid_reveal[row][col]
        end
    end









end 

