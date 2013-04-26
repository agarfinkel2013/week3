class Poker
  attr_accessor :suit
  attr_accessor :number
  attr_accessor :face
    def initialize
          deal
    end

    def deal
          @cards = 1 + rand(52).to_i
    end

    def show
          @cards
    end

    def full_card
          return "#{number} of #{suit}"
    end
end

#class Idcards
#deal the cards
class IdcardsController
    def index
            card1 =  Poker.new.show
            Poker.suit = "diamonds"
            Poker.number = card1
            card2 =  Poker.new.show
            while card2 == card1
                    card2 = Poker.deal
            end
            card3 =  Poker.new.show
            while card3 == card2 || card3 == card1
                    card3 =  Poker.deal
            end
      @cards = [card1, card2, card3]
    end
end
#assign suit and number
#        if card1 > 39
 #           Poker.suit = "clubs"
  #          Poker.face = card1 - 38
   #     end
#end
#puts Poker.suit
#print cards
@cards.each do |c|
     puts c.full_card
end


#puts IdCard.suit
     #     elsif card.number >26
      #          card.suit = "diamonds"
       #         card.face = card1.number -25
        #  elsif card.number>13
  #              card.suit = "hearts"
   #             card.face = card1.number -12
    #      else
     #           card.suit ="spades"
      #          card.face = card1.number +1
       #   end
