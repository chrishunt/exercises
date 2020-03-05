require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.medians' do
    it 'return medians for each number in the input' do
      assert_equal [], Solution.medians([])

      assert_equal [2], Solution.medians([2])

      assert_equal [2, 1.5, 2, 3.5, 2, 2, 2],
        Solution.medians([2, 1, 5, 7, 2, 0, 5])
    end
  end
end
