class Matrix
  def self.rotate(matrix)
    0.upto(matrix.size - 1) do |x|
      x.upto(matrix.size - 1) do |y|
        matrix[x][y], matrix[y][x] = matrix[y][x], matrix[x][y]
      end
    end

    matrix.each(&:reverse!)
  end
end
