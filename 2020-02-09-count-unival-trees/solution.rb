class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value:, left: nil, right: nil)
    @value = value
    @left = left
    @right = right
  end
end

class Solution
  def self.count_univals(node)
    return 0 unless node

    (unival?(node) ? 1 : 0) +
      count_univals(node.left) +
      count_univals(node.right)
  end

  def self.unival?(node)
    return true unless node && (node.left || node.right)

    values = [
      node.value,
      node.left && node.left.value,
      node.right && node.right.value
    ].compact.uniq

    values.count == 1 && unival?(node.left) && unival?(node.right)
  end
end
