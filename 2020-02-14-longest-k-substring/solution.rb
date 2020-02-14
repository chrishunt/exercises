class Solution
  def self.longest_substring(s:, k:)
    start = finish = 0
    ws = we = 0
    count = {}

    while we < s.size
      count[s[we]] ||= 0
      count[s[we]] += 1

      while count.keys.size > k
        count[s[ws]] -= 1
        count.delete(s[ws]) if count[s[ws]].zero?
        ws += 1
      end

      if (we - ws) > (finish - start)
        finish = we
        start = ws
      end

      we += 1
    end

    s[start..finish]
  end
end
