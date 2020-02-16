require 'pry'

class Solution
  LETTERS = {
    '2' => %w(a b c),
    '3' => %w(d e f),
    '4' => %w(g h i),
    '5' => %w(j k l),
    '6' => %w(m n o),
    '7' => %w(p q r s),
    '8' => %w(t u v),
    '9' => %w(w x y z)
  }

  def self.all_possible_letters(digits)
    return [] unless digits && digits.size > 0
    return LETTERS[digits] unless digits.size > 1

    first = digits.chars.first
    rest  = digits.chars.last(digits.size - 1).join

    LETTERS[first].map do |letter|
      all_possible_letters(rest).map do |letters|
        letter + letters
      end
    end.flatten
  end
end
