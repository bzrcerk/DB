select * from flights
right join airport on flights.arrival_airport_id = airport.airport_id
where airport.country = 'China'