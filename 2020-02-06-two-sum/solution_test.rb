require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.find_two' do
    it 'returns the index of the two numbers that add up to the result' do
      assert_equal [0, 1],
        Solution.find_two(numbers: [2, 7, 11, 15], result: 9)

      assert_equal [0, 1],
        Solution.find_two(numbers: [2, 2, 4], result: 4)

      assert_equal [1, 3],
        Solution.find_two(numbers: [1, 9, 2, 0], result: 9)

      assert_equal [1, 2],
        Solution.find_two(numbers: [4, 2, 2, 2, 0], result: 4)

      refute Solution.find_two(numbers: [1, 2, 0], result: 9)
    end
  end
end
