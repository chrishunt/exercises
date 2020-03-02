class Solution
  def self.encode(message)
    count = 0
    last_char = message[0]
    encoded = ''

    message.chars.each do |char|
      if char != last_char
        encoded += "#{count}#{last_char}"
        last_char = char
        count = 0
      end

      count += 1
    end

    encoded + "#{count}#{last_char}"
  end

  def self.decode(message)
    decoded = ''

    message.chars.each_slice(2) do |count, char|
      decoded += char * count.to_i
    end

    decoded
  end
end
