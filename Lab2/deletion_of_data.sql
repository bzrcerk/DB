delete from flights where act_arrival_time >= '2024-01-01'
  AND act_arrival_time <  '2025-01-01';

delete from booking where ticket_price < 10000