class HanoiTowers

  attr_accessor :towers

  def initialize
    @towers = [[1,2,3], [], []]
  end

  def valid_move?(arr)
    return false if towers[arr[0]].empty?
    return true if towers[arr[1]].empty?
    return true if towers[arr[0]].first < towers[arr[1]].first
    false
  end

  def move(arr)
    raise "Not A Valid move..." unless valid_move?(arr)
    towers[arr[1]].unshift(towers[arr[0]].shift)
  end

  def won?
    return true if towers[1].length == 3 || towers[2].length == 3
    false
  end

end
