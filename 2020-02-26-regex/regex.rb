class Regex
  def self.match?(input, regex)
    i = r = 0

    while input[i] && regex[r]
      r1 = regex[r]
      r2 = regex[r + 1]
      r3 = regex[r + 2]

      if r2 == '*'
        while input[i] &&
              [input[i], '.'].include?(r1) &&
              input[i] != r3
          i += 1
        end

        r += 1
      elsif [input[i], '.'].include?(r1)
        i += 1
      end

      r += 1
    end

    i >= input.size && r >= regex.size
  end
end
