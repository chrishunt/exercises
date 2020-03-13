require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.itinerary' do
    it 'returns an itinerary for all airports' do
      assert_equal ['YUL', 'YYZ', 'SFO', 'HKO', 'ORD'],
        Solution.itinerary(
          flights: [['SFO', 'HKO'], ['YYZ', 'SFO'], ['YUL', 'YYZ'], ['HKO', 'ORD']],
          airport: 'YUL'
        )
    end

    it 'returns nil when no itinerary can be found' do
      refute Solution.itinerary(
          flights: [['SFO', 'COM'], ['COM', 'YYZ']],
          airport: 'COM'
        )
    end

    it 'returns lexicographically smallest itinerary' do
      assert_equal ['A', 'B', 'C', 'A', 'C'],
        Solution.itinerary(
          flights: [['A', 'B'], ['A', 'C'], ['B', 'C'], ['C', 'A']],
          airport: 'A'
        )
    end
  end
end
