select * from airline
where airline_country in ('France', 'Poland', 'Portugal')
and created_at between '2023-11-01' and '2024-03-31'