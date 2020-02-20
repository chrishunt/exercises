class Solution
  BRACKETS = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }

  def self.valid?(input)
    stack = []

    input.chars.each do |char|
      if BRACKETS.keys.include?(char)
        stack.push(char)
      elsif BRACKETS.values.include?(char)
        return false if BRACKETS[stack.pop] != char
      end
    end

    stack.empty?
  end
end
