require 'rspec'
require 'deck'

RSpec.describe do
  subject(:deck) { Deck.new}

  # let(:card) {}
  describe "#initialize" do
    it 'creates an array of 52 cards' do
      expect(deck.cards).to be_an(Array)
      expect(deck.cards.size).to eq(52)
      expect(deck.cards.first).to be_a(Card)
    end

    it 'creates 13 cards per suit' do
      expect(deck.cards.select {|card| card.suit == :heart}.length).to eq(13)
    end

  end
end
