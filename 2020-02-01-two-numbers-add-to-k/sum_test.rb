require 'minitest/autorun'
require 'minitest/pride'
require_relative 'sum'

describe Sum do
  describe '#for?' do
    it 'returns true when two numbers add up to k' do
      [
        [10, 15, 3, 7],
        [17, 4, 0]
      ].each do |numbers|
        sum = Sum.new(numbers: numbers)
        assert sum.for?(k: 17)
      end
    end

    it 'returns false when no two numbers add up to k' do
      [
        [10, 15, 3],
        [17, 4]
      ].each do |numbers|
        sum = Sum.new(numbers: numbers)
        refute sum.for?(k: 17)
      end
    end
  end
end
