create table if not exists airline_info(
    id serial primary key not null,
    airline_code varchar(30) not null,
    airline_name varchar(50) not null,
    airline_country varchar(50) not null,
    created_at timestamp not null,
    updated_at timestamp,
    info varchar(50) not null
);

create table if not exists airport (
    id serial primary key not null,
    airport_name varchar(50) not null,
    country varchar(50) not null,
    state varchar(50) not null,
    city varchar(50) not null,
    created_at timestamp not null,
    updated_at timestamp
);

create table if not exists baggage_check(
    id serial primary key not null,
    check_result bool not null,
    check_report text,
    created_at timestamp  not null,
    updated_at timestamp,
    booking_id int,
    passenger_id int
);

create table if not exists baggage (
    id serial primary key not null,
    weight_in_kg decimal(4, 2)  not null,
    created_at timestamp not null,
    updated_at timestamp,
    booking_id int
);

create table if not exists boarding_pass(
    id serial primary key not null,
    booking_id int not null,
    seat varchar(50) not null,
    boarding_time timestamp not null,
    created_at timestamp not null,
    updated_at timestamp
);

create table if not exists booking_flight(
    id serial primary key not null,
    booking_id int not null,
    flight_id int not null,
    created_at timestamp not null,
    updated_at timestamp
);

create table if not exists booking(
    id serial primary key not null,
    flight_id int not null,
    passenger_id int not null,
    booking_platform varchar(50) not null,
    created_at timestamp not null,
    updated_at timestamp,
    status varchar(50),
    price decimal(7, 2)
);

create table if not exists flights(
    id serial primary key not null,
    sch_departure_time timestamp not null ,
    sch_arrival_time timestamp not null ,
    departing_airport_id int not null ,
    arriving_airport_id int not null ,
    departing_gate varchar(50) not null ,
    arriving_gate varchar(50) not null,
    airline_id int not null ,
    act_departure_time timestamp not null ,
    act_arrival_time timestamp not null ,
    created_at timestamp not null ,
    updated_at timestamp
);

create table if not exists passenger(
    id serial primary key not null,
    first_name varchar(50) not null ,
    last_name varchar(50) not null ,
    date_of_birth date not null ,
    gender varchar(50) not null ,
    country_of_citizenship varchar(50) not null ,
    country_of_residence varchar(50) not null ,
    passport_number varchar(20) unique not null ,
    created_at timestamp not null ,
    updated_at timestamp
);

create table if not exists security_check (
    id serial primary key not null ,
    check_result bool not null ,
    check_report text,
    created_at timestamp not null ,
    updated_at timestamp,
    passenger_id int
);





