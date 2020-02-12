require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.count_univals' do
    it 'returns the number of unival trees' do
      #    0
      #   / \
      #  1   0
      #     / \
      #    1   0
      #   / \
      #  1   1
      root = TreeNode.new(
        value: '0',
        left: TreeNode.new(
          value: '1'
        ),
        right: TreeNode.new(
          value: '0',
          right: TreeNode.new(
            value: '0'
          ),
          left: TreeNode.new(
            value: '1',
            left: TreeNode.new(
              value: '1'
            ),
            right: TreeNode.new(
              value: '1'
            )
          )
        )
      )

      assert_equal 5, Solution.count_univals(root)

      #    0
      #   / \
      #  1   0
      #     / \
      #    0   0
      #   / \   \
      #  1   1   1
      root = TreeNode.new(
        value: '0',
        left: TreeNode.new(
          value: '1'
        ),
        right: TreeNode.new(
          value: '0',
          right: TreeNode.new(
            value: '0',
            right: TreeNode.new(
              value: '1'
            )
          ),
          left: TreeNode.new(
            value: '0',
            left: TreeNode.new(
              value: '1'
            ),
            right: TreeNode.new(
              value: '1'
            )
          )
        )
      )

      assert_equal 4, Solution.count_univals(root)
    end
  end
end
