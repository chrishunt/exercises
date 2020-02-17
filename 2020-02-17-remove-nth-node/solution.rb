class ListNode
  attr_accessor :value, :right

  def initialize(value:, right: nil)
    @value = value
    @right = right
  end

  def ==(other)
    return unless other

    value == other.value &&
    right == other.right
  end
end

class Solution
  def self.remove(list:, n:)
    nodes = [list]

    while right = list.right
      nodes.push(right)
      list = right
    end

    if nodes.size > n
      nodes[nodes.size - n - 1].right = nodes[nodes.size - n + 1]
    end

    nodes[nodes.size - n] = nil

    nodes.compact.first
  end
end
