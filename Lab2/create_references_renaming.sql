alter table airline_info rename to airline;
alter table booking rename column price to ticket_price;
alter table flights alter column departing_gate type text;
alter table airline drop column if exists info;


alter table baggage_check
  add constraint baggage_check_booking_fk
    foreign key (booking_id) references booking(id)
    on update cascade on delete cascade,
  add constraint baggage_check_passenger_fk
    foreign key (passenger_id) references passenger(id)
    on update cascade on delete cascade;

alter table baggage
  add constraint baggage_booking_fk
    foreign key (booking_id) references booking(id)
    on update cascade on delete cascade;

alter table boarding_pass
  add constraint boarding_pass_booking_fk
    foreign key (booking_id) references booking(id)
    on update cascade on delete cascade;

alter table booking_flight
  add constraint booking_flight_flight_fk
    foreign key (flight_id) references flights(id)
    on update cascade on delete cascade,
  add constraint booking_flight_booking_fk
    foreign key (booking_id) references booking(id)
    on update cascade on delete cascade;

alter table booking
  add constraint booking_flight_fk
    foreign key (flight_id) references flights(id)
    on update cascade on delete cascade,
  add constraint booking_passenger_fk
    foreign key (passenger_id) references passenger(id)
    on update cascade on delete cascade;

alter table flights
  add constraint flights_airline_fk
    foreign key (airline_id) references airline(id)
    on update cascade on delete cascade,
  add constraint flights_arr_ap_fk
    foreign key (arriving_airport_id) references airport(id)
    on update cascade on delete cascade,
  add constraint flights_dep_ap_fk
    foreign key (departing_airport_id) references airport(id)
    on update cascade on delete cascade;

alter table security_check
  add constraint security_check_passenger_fk
    foreign key (passenger_id) references passenger(id)
    on update cascade on delete cascade;

