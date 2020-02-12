class Solution
  def self.common_prefix(words:)
    prefix = words.shift.to_s.chars

    words.each do |word|
      i = 0
      word = word.chars
      new_prefix = []

      while (a = prefix[i]) && (b = word[i])
        a == b ? new_prefix.push(a) : break
        i += 1
      end

      if new_prefix.empty?
        return ''
      else
        prefix = new_prefix
      end
    end

    prefix.join
  end
end
