require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.encode' do
    it 'encodes a message' do
      assert_equal '4A3B2C1D2A', Solution.encode('AAAABBBCCDAA')
      assert_equal '2A', Solution.encode('AA')
    end
  end

  describe '.decode' do
    it 'decodes a message' do
      assert_equal 'AAAABBBCCDAA', Solution.decode('4A3B2C1D2A')
      assert_equal 'AA', Solution.decode('2A')
    end
  end
end
