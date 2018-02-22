class Array

  def my_uniq
    result = []

    each do |el|
      result << el unless result.include?(el)
    end
    result
  end

  def two_sum
    result = []
    each_with_index do |el, idx|
      each_with_index do |el2, idx2|
        if el + el2 == 0 && idx != idx2
          result << [idx, idx2].sort
        end
      end
    end
    result.uniq
  end

end

def my_transpose(array)
  result = Array.new(array.length) {[]}

  array.each do |el|
    el.each_with_index do |el2, col|
      result[col] << el2
    end
  end
  result
end

def stock_picker(array)
  return nil if array == array.sort.reverse
  result = []
  max = 0

  # replace result if new calculation > max

  array.each_with_index do |price_min, day_min|
    day_max = day_min + 1

    while day_max < array.size
      price_max = array[day_max]
      new_max = price_max - price_min

      if result.empty? || new_max > max
        result = [day_min, day_max]
        max = new_max
      end

      day_max += 1
    end
  end
  result
end
