require "rspec"
require "tdd"

RSpec.describe Array do
  let(:array) {[2,1,1,3,3]}

  describe "#my_uniq" do
    it "removes duplicates" do
      expect(array.my_uniq).to eq([2,1,3])
    end

    it "doesn't reorder array" do
      expect(array.my_uniq).to_not eq(array.uniq.sort)
    end
  end

  describe "#two_sum" do
    let(:array) { [-1, 0, 2, -2, 1] }
    it "sorts pairs dictionay-wise" do
      expect(array.two_sum).to_not eq([[2, 3], [0, 4]])
    end

    it "finds index of pairs that sum to zero" do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end
  end
end

RSpec.describe do
  describe "#my_transpose" do
      let(:row_array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
      let(:col_array) { [[0, 3, 6], [1, 4, 7], [2, 5, 8]] }

    it "transposes rows to columns" do
      expect(my_transpose(row_array)).to eq(col_array)
    end

    it "transposes columns to rows" do
      expect(my_transpose(col_array)).to eq(row_array)
    end

  end

  describe "#stock_picker" do
    let(:stock_prices) {[10, 20, 5, 15, 30, 25]}
    let(:stock_no_good_price) {[80, 70, 50, 1]}
    let(:tricky_stock) {[60, 50, 70, 80, 10]}

    it "buys low and sells high" do
      expect(stock_picker(stock_prices)).to eq([2, 4])
    end

    it "returns nil if there is nothing to buy" do
      expect(stock_picker(stock_no_good_price)).to eq(nil)
    end

    it "doesn't buy stock it can't sell" do
      expect(stock_picker(tricky_stock)).to eq([1, 3])
    end

    it "only returns two days" do
      expect(stock_picker(stock_prices).size).to eq(2)
    end
  end


  
end
