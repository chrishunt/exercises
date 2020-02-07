class Solution
  NUMERALS = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }.freeze

  def self.numeral_to_integer(numeral)
    chars = numeral.chars
    index = sum = 0

    while index < chars.size
      char = chars[index]
      next_char = chars[index + 1]

      if (char == 'I' && %w(V X).include?(next_char)) ||
         (char == 'X' && %w(L C).include?(next_char)) ||
         (char == 'C' && %w(D M).include?(next_char))

        sum += NUMERALS[next_char] - NUMERALS[char]
        index += 1
      else
        sum += NUMERALS[char]
      end

      index += 1
    end

    sum
  end
end
