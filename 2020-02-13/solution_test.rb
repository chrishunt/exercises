require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.merge' do
    it 'merges all lists into one sorted list' do
      assert_equal ListNode.new(
        value: '1',
        right: ListNode.new(
          value: '1',
          right: ListNode.new(
            value: '2',
            right: ListNode.new(
              value: '3',
              right: ListNode.new(
                value: '4',
                right: ListNode.new(
                  value: '4',
                  right: ListNode.new(
                    value: '5',
                    right: ListNode.new(
                      value: '6'
                    )
                  )
                )
              )
            )
          )
        )
      ), Solution.merge([
        ListNode.new(
          value: '1',
          right: ListNode.new(
            value: '4',
            right: ListNode.new(
              value: '5'
            )
          )
        ),
        ListNode.new(
          value: '1',
          right: ListNode.new(
            value: '3',
            right: ListNode.new(
              value: '4'
            )
          )
        ),
        ListNode.new(
          value: '2',
          right: ListNode.new(
            value: '6'
          )
        )
      ])
    end
  end
end
