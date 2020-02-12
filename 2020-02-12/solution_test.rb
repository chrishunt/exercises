require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.common_prefix' do
    it 'returns the longest common prefix for all the words' do
      assert_equal 'fl',
        Solution.common_prefix(words: %w(flower flow flight))

      assert_equal '',
        Solution.common_prefix(words: %w(dog racecar car))

      assert_equal '',
        Solution.common_prefix(words: %w())

      assert_equal '',
        Solution.common_prefix(words: %w(dog fat dart))
    end
  end
end
