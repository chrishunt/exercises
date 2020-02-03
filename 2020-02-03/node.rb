class Node
  attr_accessor :value, :left, :right

  def self.serialize(node)
    return 'nil,' unless node

    node.value + ',' +
      serialize(node.left) +
      serialize(node.right)
  end

  def self.desearialize(s)
    self.desearialize_remaining(s.split(','))
  end

  def self.desearialize_remaining(remaining)
    value = remaining.shift
    return if value == 'nil'

    node = new(value: value)
    node.left = desearialize_remaining(remaining)
    node.right = desearialize_remaining(remaining)

    node
  end

  def initialize(value:, left: nil, right: nil)
    @value = value
    @left = left
    @right = right
  end

  def serialize
    self.class.serialize(self)
  end

  def ==(other)
    value == other.value &&
    left  == other.left  &&
    right == other.right
  end
end
