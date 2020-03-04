require 'minitest/autorun'
require 'minitest/pride'
require_relative 'matrix'

describe Matrix do
  describe '.rotate' do
    it 'rotates the matrix 90 degrees clockwise' do
      assert_equal [], Matrix.rotate([])

      assert_equal [[1]], Matrix.rotate([[1]])

      assert_equal [
        [7,4,1],
        [8,5,2],
        [9,6,3]
      ], Matrix.rotate([
        [1,2,3],
        [4,5,6],
        [7,8,9]
      ])

      assert_equal [
        [15,13, 2, 5],
        [14, 3, 4, 1],
        [12, 6, 8, 9],
        [16, 7,10,11]
      ], Matrix.rotate([
        [ 5, 1, 9,11],
        [ 2, 4, 8,10],
        [13, 3, 6, 7],
        [15,14,12,16]
      ])
    end
  end
end
