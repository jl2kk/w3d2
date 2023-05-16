require_relative Card
require_relative Game 


def initalize

    @grid = Array.new(5) {Array.new(5,  " ")}
end 


def populate
    card_arr = ("a".."h").to_a * 2 
    @grid.each do |row|
        row.each do |col|
            letter = card_arr.sample
            @grid[row][col] = letter
            card_arr.delete_at(card_arr.index(letter))
        end 
    end 
end 


