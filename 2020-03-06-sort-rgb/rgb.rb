class Rgb
  def self.sort(chars)
    r = 0
    g = b = chars.size - 1

    while r < g && r < b
      case chars[r]
      when 'R'
        r += 1
      when 'G'
        chars[r], chars[g] = chars[g], chars[r]
        g -= 1
      when 'B'
        chars[r], chars[b] = chars[b], chars[r]
        b -= 1
      end
    end

    chars
  end
end
