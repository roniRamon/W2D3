require_relative 'card'

class Deck

  attr_reader :cards

  def initialize
    @cards = []
    populate_deck
  end

  def populate_deck
  Card::SUITS.each do |suit|
      Card::SYMBOL.keys.each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

end
