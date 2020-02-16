require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.all_possible_letters' do
    it 'returns all possible letters for the phone digits' do
      assert_equal %w(),
        Solution.all_possible_letters('')
      assert_equal %w(g h i),
        Solution.all_possible_letters('4')
      assert_equal %w(ad ae af bd be bf cd ce cf),
        Solution.all_possible_letters('23')
    end
  end
end
