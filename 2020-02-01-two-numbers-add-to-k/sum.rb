class Sum
  def initialize(numbers:)
    @numbers = numbers
  end

  def for?(k:)
    seen = []

    numbers.each do |number|
      return true if seen[k - number]

      seen[number] = true
    end

    false
  end

  private

  attr_reader :numbers
end
