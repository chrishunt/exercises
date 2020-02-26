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

      assert_equal 505, Solution.numeral_to_integer('DV')
      assert_equal 499, Solution.numeral_to_integer('ID')

      assert_equal 999, Solution.numeral_to_integer('IM')
      assert_equal 995, Solution.numeral_to_integer('VM')
      assert_equal 990, Solution.numeral_to_integer('XM')
      assert_equal 950, Solution.numeral_to_integer('LM')
      assert_equal 900, Solution.numeral_to_integer('CM')
      assert_equal 500, Solution.numeral_to_integer('DM')
    end
  end
end
