require 'minitest/autorun'
require 'minitest/pride'
require_relative 'staircase'

describe Staircase do
  describe '#options' do
    it 'returns all the options for walking up 4 stairs' do
      staircase = Staircase.new(height: 4)

      assert_equal [
        [1, 1, 1, 1],
        [1, 1, 2],
        [1, 2, 1],
        [2, 1, 1],
        [2, 2]
      ], staircase.options
    end

    it 'returns all the options for walking up 3 stairs' do
      staircase = Staircase.new(height: 3)

      assert_equal [
        [1, 1, 1],
        [1, 2],
        [2, 1]
      ], staircase.options
    end

    it 'allows step options to be provided' do
      staircase = Staircase.new(height: 4, steps:[2, 4])

      assert_equal [
        [2, 2],
        [4]
      ], staircase.options
    end
  end
end
