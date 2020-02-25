require 'minitest/autorun'
require 'minitest/pride'
require_relative 'tree_node'

describe TreeNode do
  #          root
  #          /  \
  #     lc1       rc1
  #      /\       /\
  #  llc2 lrc2 rlc2 rrc2
  let(:root) { TreeNode.new(locked: false) }
  let(:lc1)  { TreeNode.new(locked: false) }
  let(:rc1)  { TreeNode.new(locked: false) }
  let(:llc2) { TreeNode.new(locked: false) }
  let(:lrc2) { TreeNode.new(locked: false) }
  let(:rlc2) { TreeNode.new(locked: false) }
  let(:rrc2) { TreeNode.new(locked: false) }

  before do
    root.left = lc1
    root.right = rc1

    lc1.parent = root
    lc1.left = llc2
    lc1.right = lrc2
    llc2.parent = lc1
    lrc2.parent = lc1

    rc1.parent = root
    rc1.left = rlc2
    rc1.right = rrc2
    rlc2.parent = rc1
    rrc2.parent = rc1
  end

  describe '#locked?' do
    it 'returns true when the node is locked' do
      root.locked = true
      assert root.locked?
    end

    it 'returns false when the node is unlocked' do
      root.locked = false
      refute root.locked?
    end
  end

  describe '#lock' do
    it 'locks when all ancestors are unlocked' do
      assert llc2.lock
      assert llc2.locked?
    end

    it 'locks when all descendants are unlocked' do
      assert root.lock
      assert root.locked?
    end

    it 'does not lock when any ancestor is locked' do
      root.locked = true

      refute llc2.lock
      refute llc2.locked?
    end

    it 'does not lock when any descendant is locked' do
      rlc2.locked = true

      refute root.lock
      refute root.locked?
    end
  end

  describe '#unlock' do
    it 'unlocks when all ancestors are unlocked' do
      llc2.locked = true

      assert llc2.unlock
      assert llc2.unlocked?
    end

    it 'unlocks when all descendants are unlocked' do
      root.locked = true

      assert root.unlock
      assert root.unlocked?
    end

    it 'does not unlock when any ancestor is locked' do
      llc2.locked = true
      root.locked = true

      refute llc2.unlock
      refute llc2.unlocked?
    end

    it 'does not unlock when any descendant is locked' do
      root.locked = true
      rlc2.locked = true

      refute root.unlock
      refute root.unlocked?
    end
  end
end
