require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.largest_sum' do
    it 'returns largest sum for non-adjacent numbers' do
      assert_equal 13, Solution.largest_sum([2, 4, 6, 2, 5])
      assert_equal 10, Solution.largest_sum([5, 1, 1, 5])
      assert_equal 10, Solution.largest_sum([5, 4, 1, 5])
      assert_equal 6, Solution.largest_sum([5, 4, 1, -5])
    end
  end
end
