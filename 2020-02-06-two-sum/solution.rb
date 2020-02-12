class Solution
  def self.find_two(numbers:, result:)
    seen = []

    numbers.each_with_index do |number, i|
      if other_i = seen[result - number]
        return [other_i, i]
      else
        seen[number] = i
      end
    end

    nil
  end
end
