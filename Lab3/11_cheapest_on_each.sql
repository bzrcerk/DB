select booking_platform, min(price) as cheapest from booking
group by booking_platform
order by cheapest ASC