class Solution
  def self.count_decoded(message)
    self.count(message.chars)
  end

  def self.count(chars)
    return 1 if chars.empty?

    first_two = chars.first(2).join.to_i

    count(chars.last(chars.size - 1)) +
      if first_two >= 10 && first_two <= 26
        count(chars.last(chars.size - 2))
      else
        0
      end
  end
end
