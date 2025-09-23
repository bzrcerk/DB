alter table if exists baggage_check
  drop constraint if exists baggage_check_booking_fk;
alter table if exists baggage_check
  drop constraint if exists baggage_check_passenger_fk;

alter table if exists baggage
  drop constraint if exists baggage_booking_fk;

alter table if exists boarding_pass
  drop constraint if exists boarding_pass_booking_fk;

alter table if exists booking_flight
  drop constraint if exists booking_flight_flight_fk;
alter table if exists booking_flight
  drop constraint if exists booking_flight_booking_fk;

alter table if exists booking
  drop constraint if exists booking_flight_fk;
alter table if exists booking
  drop constraint if exists booking_passenger_fk;

alter table if exists flights
  drop constraint if exists flights_airline_fk;
alter table if exists flights
  drop constraint if exists flights_arr_ap_fk;
alter table if exists flights
  drop constraint if exists flights_dep_ap_fk;

alter table if exists security_check
  drop constraint if exists security_check_passenger_fk;


select * from flights