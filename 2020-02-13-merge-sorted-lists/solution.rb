class ListNode
  attr_accessor :value, :right

  def initialize(value: nil, right: nil)
    @value = value
    @right = right
  end

  def ==(other)
    value == other.value &&
    right == other.right
  end
end

class Solution
  def self.merge(nodes)
    current = root = ListNode.new

    until nodes.empty?
      i = minimum_index(nodes)

      current.right = ListNode.new(
        value: nodes[i].value
      )

      nodes[i] = nodes[i].right
      current = current.right

      nodes.compact!
    end

    root.right
  end

  def self.minimum_index(nodes)
    min = 0
    current = 1

    while current < nodes.size
      min = current if nodes[current].value < nodes[min].value
      current += 1
    end

    min
  end
end
