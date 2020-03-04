class Matrix
  def self.rotate(matrix)
    # Swap elements diagonally
    0.upto(matrix.size - 1) do |x|
      x.upto(matrix.size - 1) do |y|
        next if x == y

        matrix[x][y], matrix[y][x] = matrix[y][x], matrix[x][y]
      end
    end

    # Reverse all the rows
    matrix.each(&:reverse!)

    matrix
  end
end
