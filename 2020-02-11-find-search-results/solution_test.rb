require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '#search' do
    it 'returns all words that begin with the query' do
      solution = Solution.new(words: %w(
        car
        card
        cat
        deal
        deer
        dog
        mouse
        pizza
        sammy
        sand
        sandwhich
        taco
      ))

      assert_equal %w(deal deer), solution.search(q: 'de')
      assert_equal %w(car card), solution.search(q: 'car')
      assert_equal %w(sammy sand sandwhich), solution.search(q: 'sa')
      assert_equal %w(sand sandwhich), solution.search(q: 'sand')
    end
  end
end
