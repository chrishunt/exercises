require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.missing_integer' do
    it 'returns the first missing positive integer' do
      assert_equal 2, Solution.missing_integer([3, 4, -1, 1])
      assert_equal 3, Solution.missing_integer([1, 2, 0])
      assert_equal 4, Solution.missing_integer([3, 3, 2, 1])
      assert_equal 2, Solution.missing_integer([1, 1, 1])
      assert_equal 1, Solution.missing_integer([-1, -2])
      assert_equal 1, Solution.missing_integer([0])
    end
  end
end
