class Solution
  def self.itinerary(flights:, airport:)
    flight_map = flights.inject({}) do |flight_map, (from, to)|
      flight_map[from] = Array(flight_map[from]).push(to)
      flight_map
    end

    find_route(flights: flight_map, airport: airport)
  end

  def self.find_route(flights:, airport:, route: [])
    route.push(airport)

    return route if flights.empty?
    return unless flights[airport]

    flights[airport].map do |next_airport|
      next_flights = flights.dup
      next_flights[airport].delete(next_airport)
      next_flights.delete(airport) if next_flights[airport].empty?

      find_route(flights: next_flights, airport: next_airport, route: route)
    end.compact.sort.first
  end
end
