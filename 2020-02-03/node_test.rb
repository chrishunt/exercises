require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'

describe Node do
  let(:tree) do
    Node.new(
      value: 'root',
      left: Node.new(
        value: 'left',
        left: Node.new(
          value: 'left.left'
        )
      ),
      right: Node.new(
        value: 'right'
      )
    )
  end

  describe '#serialize' do
    it 'converts the node tree into a string' do
      assert_equal 'root,left,left.left,nil,nil,nil,right,nil,nil,',
        tree.serialize
    end
  end

  describe '.deserialize' do
    it 'converts the serialized string into a node tree' do
      assert_equal tree,
        Node.desearialize(
          'root,left,left.left,nil,nil,nil,right,nil,nil,'
        )
    end
  end
end
