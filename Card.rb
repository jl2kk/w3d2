
class Card

    attr_accessor :value

    
    cardss = ("a".."h").to_a * 2 
    CARDSSSS = cardss.shuffle

    def self.random
        CARDSSSS.pop
    end

    def initialize
        @value = Card.random
        @face = false 
    end 


    def hide 
        @hidden_value 

    end 

    def reveal
        @value
    end 
end 
    # def to_s
    # end 

    # def ==(pos)

    # end 

