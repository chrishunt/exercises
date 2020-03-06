require 'minitest/autorun'
require 'minitest/pride'
require_relative 'rgb'

describe Rgb do
  describe '.sort' do
    it 'sorts R, G, Bs' do
      assert_equal [], Rgb.sort([])
      assert_equal ['R'], Rgb.sort(['R'])
      assert_equal ['R', 'G', 'B'], Rgb.sort(['B', 'G', 'R'])

      assert_equal ['R', 'R', 'R', 'G', 'G', 'B', 'B'],
        Rgb.sort(['G', 'B', 'R', 'R', 'B', 'R', 'G'])
    end
  end
end
