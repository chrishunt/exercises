class Solution
  def self.min_cost(house_by_cost)
    all_costs(house_by_cost).min
  end

  def self.all_costs(house_by_cost)
    return [0] if house_by_cost.empty?
    return house_by_cost[0] if house_by_cost.count == 1

    costs = []

    house_by_cost[0].each_with_index do |cost, paint|
      next_house = house_by_cost[1].dup
      next_house.delete_at(paint)

      all_costs([next_house] + house_by_cost[2..-1]).each do |other_cost|
        costs.push(cost + other_cost)
      end
    end

    costs
  end
end
