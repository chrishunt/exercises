class Solution
  def self.largest_sum(numbers)
    return 0 unless numbers && numbers.size > 0

    [first_sum(numbers), second_sum(numbers)].max
  end

  def self.first_sum(numbers)
    numbers[0] + if numbers.size >= 3
      largest_sum(numbers.last(numbers.size - 2))
    else
      0
    end
  end

  def self.second_sum(numbers)
    if numbers[1]
      numbers[1] + if numbers.size >= 4
        largest_sum(numbers.last(numbers.size - 3))
      else
        0
      end
    else
      0
    end
  end
end
