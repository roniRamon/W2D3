require "rspec"
require "card"

RSpec.describe Card do
  subject(:card) {Card.new(11, :spades) }

  describe "#initialize" do
    it "has value" do
      expect(card.val).to eq(11)
    end

    it "has a suit" do
      expect(card.suit).to eq(:spades)
    end

    it "has a symbol" do
      expect(card.symbol).to eq("J")
    end

  end


end
