Video: https://youtu.be/7VdG0A40sc8

This problem was asked by Facebook.

Given an unordered list of flights taken by someone, each represented as
(origin, destination) pairs, and a starting airport, compute the person's
itinerary. If no such itinerary exists, return null. If there are multiple
possible itineraries, return the lexicographically smallest one. All flights
must be used in the itinerary.

For example:

```
Flights: [('SFO', 'HKO'), ('YYZ', 'SFO'), ('YUL', 'YYZ'), ('HKO', 'ORD')]
Starting airport: 'YUL'
Returns: ['YUL', 'YYZ', 'SFO', 'HKO', 'ORD']
```

```
Flights: [('SFO', 'COM'), ('COM', 'YYZ')]
Starting airport: 'COM'
Returns: nil
```

```
Flights: [('A', 'B'), ('A', 'C'), ('B', 'C'), ('C', 'A')]
Starting airport: 'A'
Returns: ['A', 'B', 'C', 'A', 'C']
```
