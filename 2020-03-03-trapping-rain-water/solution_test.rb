require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.rainwater' do
    it 'returns the amount of rainwater between the walls' do
      assert_equal 6, Solution.rainwater([0,1,0,2,1,0,1,3,2,1,2,1])
      assert_equal 1, Solution.rainwater([4, 2, 3])
      assert_equal 2, Solution.rainwater([3, 1, 4])
      assert_equal 0, Solution.rainwater([4, 3, 2])
      assert_equal 0, Solution.rainwater([1, 2, 3])
    end
  end
end
