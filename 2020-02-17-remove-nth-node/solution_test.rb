require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.remove' do
    it 'removes the nth last element from the list' do
      assert_equal ListNode.new(
        value: '1',
        right: ListNode.new(
          value: '2',
          right: ListNode.new(
            value: '3',
            right: ListNode.new(
              value: '5'
            )
          )
        )
      ), Solution.remove(
        n: 2,
        list: ListNode.new(
          value: '1',
          right: ListNode.new(
            value: '2',
            right: ListNode.new(
              value: '3',
              right: ListNode.new(
                value: '4',
                right: ListNode.new(
                  value: '5'
                )
              )
            )
          )
        )
      )

      assert_equal ListNode.new(
        value: '1',
        right: ListNode.new(
          value: '2',
          right: ListNode.new(
            value: '3',
            right: ListNode.new(
              value: '4'
            )
          )
        )
      ), Solution.remove(
        n: 1,
        list: ListNode.new(
          value: '1',
          right: ListNode.new(
            value: '2',
            right: ListNode.new(
              value: '3',
              right: ListNode.new(
                value: '4',
                right: ListNode.new(
                  value: '5'
                )
              )
            )
          )
        )
      )

      assert_equal ListNode.new(
        value: '2',
        right: ListNode.new(
          value: '3',
          right: ListNode.new(
            value: '4',
            right: ListNode.new(
              value: '5'
            )
          )
        )
      ), Solution.remove(
        n: 5,
        list: ListNode.new(
          value: '1',
          right: ListNode.new(
            value: '2',
            right: ListNode.new(
              value: '3',
              right: ListNode.new(
                value: '4',
                right: ListNode.new(
                  value: '5'
                )
              )
            )
          )
        )
      )
    end
  end
end
