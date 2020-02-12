class Solution
  def self.missing_integer(numbers)
    current = 0
    last = numbers.size-1

    while(current <= last) do
      while numbers[current] <= 0 && last >= current
        temp = numbers[last]
        numbers[last] = numbers[current]
        numbers[current] = temp
        last -= 1
      end

      current += 1
    end

    0.upto(last).each do |i|
      seen = numbers[i].abs - 1

      if seen <= last && numbers[seen].positive?
        numbers[seen] *= -1
      end
    end

    0.upto(last).each do |i|
      return i + 1 if numbers[i].positive?
    end

    last + 2
  end

  def self.linear_space_missing_integer(numbers)
    seen = {}

    numbers.each do |number|
      seen[number] = true
    end

    1.upto(numbers.size+1) do |number|
      return number unless seen[number]
    end
  end
end
