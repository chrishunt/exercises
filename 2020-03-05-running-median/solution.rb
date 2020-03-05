class Solution
  def self.medians(numbers)
    medians = []
    sorted =[]

    numbers.each do |n|
      insert(n, sorted)
      medians.push(median(sorted))
    end

    medians
  end

  def self.insert(n, sorted)
    i = (0...sorted.size).find { |i| sorted[i] >= n } || sorted.size

    sorted.insert(i, n)
  end

  def self.median(sorted)
    middle = sorted.size / 2

    if sorted.size.odd?
      sorted[middle]
    else
      (sorted[middle] + sorted[middle - 1]) / 2.0
    end
  end
end
