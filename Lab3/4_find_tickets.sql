select date_trunc('month', created_at) as month, sum(price) as total_price
from booking
group by month
order by month ASC