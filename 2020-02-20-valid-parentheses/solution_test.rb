require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.valid?' do
    it 'returns true when the string is valid' do
      assert Solution.valid?('')
      assert Solution.valid?('()')
      assert Solution.valid?('()[]{}')
      assert Solution.valid?('{[]}')

      refute Solution.valid?('(]')
      refute Solution.valid?('([)]')
    end
  end
end
