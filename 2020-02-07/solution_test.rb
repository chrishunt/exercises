require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.numeral_to_integer' do
    it 'returns the value of the numeral' do
      assert_equal 3, Solution.numeral_to_integer('III')
      assert_equal 4, Solution.numeral_to_integer('IV')
      assert_equal 9, Solution.numeral_to_integer('IX')
      assert_equal 58, Solution.numeral_to_integer('LVIII')
      assert_equal 1994, Solution.numeral_to_integer('MCMXCIV')
    end
  end
end
