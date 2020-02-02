class Solution
  def self.product(numbers)
    product = Array.new(numbers.size) { 1 }

    numbers.each_with_index do |number, i|
      0.upto(product.size-1) do |j|
        next if j == i

        product[j] *= number
      end
    end

    product
  end
end
