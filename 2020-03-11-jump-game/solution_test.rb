require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.can_jump?' do
    it 'returns true when we can jump to the end' do
      assert Solution.can_jump?([2,3,1,1,4])
      assert Solution.can_jump?([])
      assert Solution.can_jump?(nil)
      assert Solution.can_jump?([1])
    end

    it 'returns false when we cannot jump to the end' do
      refute Solution.can_jump?([3,2,1,0,4])
    end
  end
end
