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
  def self.add(first, second)
    sum = [first, second].map do |node|
      number_string = node.value.to_s

      while right = node.right do
        number_string = "#{right.value}#{number_string}"
        node = right
      end

      number_string
    end.map(&:to_i).inject(&:+)

    nodes = sum.to_s.split('').reverse.map(&:to_i)

    root_node = previous_node = ListNode.new(value: nodes.shift)

    nodes.each do |number|
      node = ListNode.new(value: number)
      previous_node.right = node
      previous_node = node
    end

    root_node
  end
end
