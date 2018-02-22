class Card
  SUITS = %i(heart spade club diamond)
  SYMBOL = {
    1 => "A",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    10 => "10",
    11 => "J",
    12 => "Q",
    13 => "K"
  }

  attr_reader :val, :suit, :symbol

  def initialize(val, suit)
    @val = val
    @suit = suit
    @symbol = SYMBOL[val]
  end

end
