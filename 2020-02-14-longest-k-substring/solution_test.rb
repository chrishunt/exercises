require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.longest_substring' do
    it 'returns the longest substring with k unique characters' do
      assert_equal 'bcb', Solution.longest_substring(s: 'abcba', k: 2)
      assert_equal 'abcba', Solution.longest_substring(s: 'abcba', k: 3)
      assert_equal 'a', Solution.longest_substring(s: 'abcba', k: 1)
      assert_equal '', Solution.longest_substring(s: '', k: 0)
    end
  end
end
