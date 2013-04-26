class PokerController <ApplicationController
  def roll
        @cards = [ ]
        while @cards.length < 5
          v = PokerCard.new
          v.number =  rand(52) + 1
           @cards << v
           @cards = @cards.uniq_by{|v| v.number}
         end
            @cards.each do |v|
                  if v.number > 39
                    v.suit = "clubs"
                    v.face = "#{v.number-38}"
                 elsif v.number >26 and v.number <=39
                    v.suit = "diamonds"
                    v.face = "#{v.number-25}"
                elsif v.number >13 and v.number <=26
                    v.suit = "hearts"
                    v.face = "#{v.number-12}"
                else
                    v.suit = "spades"
                    v.face = "#{v.number+1}"
                end
                    v.face = "jack" if v.face =="11"
                    v.face = "queen" if v.face =="12"
                    v.face = "king" if v.face =="13"
                    v.face = "ace" if v.face =="14"
         end
  end
end
