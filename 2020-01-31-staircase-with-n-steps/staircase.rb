require 'pry'

class Staircase
  def initialize(height:, steps:[1, 2])
    @height = height
    @steps = steps
  end

  def options
    permutations = steps.map do |step|
      [step] * height
    end.flatten

    (1..height).to_a.inject([]) do |options, i|
      options + permutations.permutation(i).to_a
    end.select do |result|
      result.inject(&:+) == height
    end.uniq.sort
  end

  private

  attr_reader :height, :steps
end
