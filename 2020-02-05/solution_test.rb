require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.add' do
    it 'adds numbers together' do
      assert_equal ListNode.new(
        value: 7,
        right: ListNode.new(
          value: 0,
          right: ListNode.new(
            value: 8
          )
        )
      ),
      Solution.add(
        ListNode.new(
          value: 2,
          right: ListNode.new(
            value: 4,
            right: ListNode.new(
              value: 3
            )
          )
        ),
        ListNode.new(
          value: 5,
          right: ListNode.new(
            value: 6,
            right: ListNode.new(
              value: 4
            )
          )
        )
      )
    end
  end
end
