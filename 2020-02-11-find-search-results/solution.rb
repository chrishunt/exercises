require 'pry'

class Solution
  attr_reader :words

  def initialize(words:)
    @words = words
  end

  def search(q:)
    words = keys(q).inject(dictionary) do |dict, key|
      dict.fetch(key)
    end.flatten.flatten

    words.select { |word| word.start_with?(q) }
  end

  private

  def dictionary
    @dictionary ||= load_dictionary
  end

  def load_dictionary
    dict = {}

    words.sort.each do |word|
      keys = keys(word)

      dict[keys[0]] ||= {}
      dict[keys[0]][keys[1]] ||= {}
      dict[keys[0]][keys[1]][keys[2]] ||= []

      dict[keys[0]][keys[1]][keys[2]].push(word)
    end

    dict
  end

  def keys(word)
    word.chars.first(3)
  end
end
