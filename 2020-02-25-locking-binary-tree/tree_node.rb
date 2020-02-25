class TreeNode
  attr_accessor :locked, :left, :right, :parent

  def initialize(locked: false, left: nil, right: nil, parent: nil)
    @locked = locked
    @left = left
    @right = right
    @parent = parent
  end

  def locked?
    locked
  end

  def unlocked?
    !locked
  end

  def lock
    if ancestors_unlocked? && descendants_unlocked?
      @locked = true
    end

    locked?
  end

  def unlock
    if ancestors_unlocked? && descendants_unlocked?
      @locked = false
    end

    unlocked?
  end

  protected

  def ancestors_unlocked?
    !parent || (parent.unlocked? && parent.ancestors_unlocked?)
  end

  def descendants_unlocked?
    left_unlocked = !left || (left.unlocked? && left.descendants_unlocked?)

    if left_unlocked
      !right || (right.unlocked? && right.descendants_unlocked?)
    else
      false
    end
  end
end
