class Solution
  def self.can_jump?(steps)
    return true if Array(steps).empty? || steps.size == 1

    (1..steps.first).map { |step| can_jump?(steps[step..-1]) }.any?
  end
end
