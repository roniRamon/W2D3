require "rspec"
require "hanoi_towers"

RSpec.describe HanoiTowers do
  subject(:game) {HanoiTowers.new}

  describe "#initialize" do

    it "should have 3 nested arrays" do
      expect(game.towers).to be_a(Array)
      expect(game.towers[0]).to be_a(Array)
      expect(game.towers.length).to eq(3)
    end

    it "should have two empty arrays at the end" do
      expect(game.towers[1] && game.towers[2]).to be_empty
    end

    it "should have 3 items in the first array" do
      expect(game.towers.first.length).to eq(3)
    end
  end

  describe "#valid_move?" do
    it "returns false when moving a big number on top of a smaller number" do
      game.move([0, 1])
      expect(game.valid_move?([0, 1])).to be false
    end

    it "returns true when moving a small number on top of a bigger number" do
      game.move([0, 1])
      expect(game.valid_move?([1, 0])).to be true
    end

    it "returns true when moving a disk to an empty array" do
      game.move([0, 1])
      expect(game.valid_move?([1, 2])).to be true
    end
  end

  describe "#move" do
    it "moves a disk from tower to another tower" do
      game.move([0, 1])
      expect(game.towers).to eq([[2, 3], [1], []])
    end

    it "raises an error if move is not valid" do
      expect { game.move([2, 1]) }.to raise_error("Not A Valid move...")
    end
  end

  describe "#won" do
    it "returns true when the game is won" do
      game.towers = [[], [1, 2, 3], []]
      expect(game.won?).to be true
    end

    it "returns false whent the game is not won" do
      expect(game).to_not be_won
    end
  end

end
