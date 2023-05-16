require_relative Board
require_relative Game 


class Card

    def initalize()
        @hidden_value = " "
        @value = ("a".."h").sample
        @face = false 
    end 


    def hide 
        @hidden_value 

    end 

    def reveal
        @value
    end 

    # def to_s
    # end 

    # def ==(pos)

    # end 

