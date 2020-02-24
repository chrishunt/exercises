require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.min_cost' do
    it 'returns the minimum cost to paint all the houses' do
      assert_equal 8, Solution.min_cost([
        [1, 2, 3, 4],
        [2, 4, 6, 8],
        [5, 4, 2, 1],
        [3, 3, 3, 3],
      ])

      assert_equal 7, Solution.min_cost([
        [1, 3, 4],
        [4, 6, 1],
        [4, 2, 1],
        [3, 2, 3],
      ])

      assert_equal 1, Solution.min_cost([[1, 3, 4]])
      assert_equal 0, Solution.min_cost([])
    end
  end
end
