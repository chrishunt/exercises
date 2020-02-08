require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.count_decoded' do
    it 'returns the number of possible decoded messages' do
      assert_equal 3, Solution.count_decoded('111')
      assert_equal 2, Solution.count_decoded('23')
      assert_equal 1, Solution.count_decoded('9')
      assert_equal 1, Solution.count_decoded('93427')
      assert_equal 5, Solution.count_decoded('1224')
      assert_equal 4, Solution.count_decoded('1424')
    end
  end
end
