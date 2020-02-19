require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.max_values' do
    it 'returns the max value for each sub-array of size k' do
      assert_equal [10, 7, 8, 8],
        Solution.max_values(array: [10, 5, 2, 7, 8, 7], k: 3)

      assert_equal [5, 4, 7],
        Solution.max_values(array: [5, 4, 7], k: 1)
    end
  end
end
