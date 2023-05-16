class Board
    attr_accessor :grid

    def initialize

        @grid = Array.new(5) {Array.new(5,  " ")}
    end 


    def populate
        card_arr = ("a".."h").to_a * 2 
        (1...grid.length).each do |row|
            (1...grid.length).each do |col|
                letter = card_arr.sample
                @grid[row][col] = letter
                if letter == nil || card_arr.index(letter) == nil
                    break
                else 
                    card_arr.delete_at(card_arr.index(letter))
                end
            end 
        
        end 
    end 



    def self.render 
        @grid.each do |row|
            p row
        end
    end 

end 

