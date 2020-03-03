class Solution
  def self.rainwater(walls)
    water = 0
    tallest = 0

    0.upto(walls.size - 1) do |i|
      if walls[i] < walls[tallest]
        water += walls[tallest] - walls[i]
      else
        tallest = i
      end
    end

    other_tallest = walls.size - 1

    (walls.size - 1).downto(tallest + 1) do |i|
      water -= walls[tallest] - walls[i]

      if walls[i] < walls[other_tallest]
        water += walls[other_tallest] - walls[i]
      else
        other_tallest = i
      end
    end

    water
  end
end
