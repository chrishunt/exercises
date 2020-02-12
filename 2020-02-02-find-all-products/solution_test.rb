require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.products' do
    it 'returns the product of all other numbers' do
      assert_equal(
        [120, 60, 40, 30, 24],
        Solution.product([1, 2, 3, 4, 5])
      )

      assert_equal(
        [2, 3, 6],
        Solution.product([3, 2, 1])
      )
    end
  end
end
