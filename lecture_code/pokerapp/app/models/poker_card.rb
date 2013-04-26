class PokerCard
  attr_accessor :suit, :number, :face

  def full_card
    return "#{face} of #{suit}"
  end

  def pic_card
    return "#{face}_of_#{suit}.png"
  end

end
