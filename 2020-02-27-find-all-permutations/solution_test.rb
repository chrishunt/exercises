require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.permutations' do
    it 'returns all permutations of the numbers' do
      assert_equal [
        [1]
      ], Solution.permutations([1])

      assert_equal [
        [1, 2],
        [2, 1]
      ], Solution.permutations([1,2])

      assert_equal [
        [1,2,3],
        [1,3,2],
        [2,1,3],
        [2,3,1],
        [3,1,2],
        [3,2,1]
      ], Solution.permutations([1,2,3])
    end
  end
end
