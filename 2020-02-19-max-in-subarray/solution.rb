class Solution
  def self.max_values(array:, k:)
    max_values = []
    i = 0

    while (i + k) <= array.size
      max_values.push(array[i..i+k-1].max)
      i += 1
    end

    max_values
  end
end
