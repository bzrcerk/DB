select * from baggage_check
where date_trunc('month', created_at) = date_trunc('month', update_at)
and update_at < created_at