update booking
set price = price - price * 0.1
where created_at < '2023-01-11'