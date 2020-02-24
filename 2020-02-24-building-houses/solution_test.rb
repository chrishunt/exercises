require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.min_cost' do
    it 'returns the mininum cost to paint all houses' do
      assert_equal 3, Solution.min_cost([
        [1, 2, 3, 4],
        [2, 3, 4, 1],
        [2, 2, 3, 1],
      ])

      assert_equal 3, Solution.min_cost([
        [1, 2, 3, 4],
        [2, 1, 4, 2],
        [2, 2, 1, 5],
      ])

      assert_equal 4, Solution.min_cost([
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [3, 1, 3, 4],
      ])

      assert_equal 1, Solution.min_cost([
        [1, 2, 3, 4],
      ])

      assert_equal 0, Solution.min_cost([])
    end
  end
end
