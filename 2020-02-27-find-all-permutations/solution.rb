class Solution
  def self.permutations(numbers)
    return [] if numbers.empty?
    return [numbers] if numbers.size == 1

    result = []
    i = 0

    while number = numbers[i]
      the_rest = numbers[0...i] + numbers[i+1..-1]

      permutations(the_rest).each do |permutation|
        result.push([number] + permutation)
      end

      i += 1
    end

    result
  end
end
