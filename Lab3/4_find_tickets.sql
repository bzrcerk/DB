select date_trunc('month', created_at) as month, sum(price) as total_price
from booking
group by date_trunc('month',created_at)
order by month ASC