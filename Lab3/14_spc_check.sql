select * from booking
join security_check on booking.passenger_id = security_check.passenger_id
where booking_id >= 200 and booking_id <= 300
and security_check.check_result <> 'Checked'