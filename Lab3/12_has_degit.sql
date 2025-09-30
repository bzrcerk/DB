select * from airline
where airline_code like '%0%'
or airline_code like '%1%'
or airline_code like '%2%'
or airline_code like '%3%'
or airline_code like '%4%'
or airline_code like '%5%'
or airline_code like '%6%'
or airline_code like '%7%'
or airline_code like '%8%'
or airline_code like '%9%' ;

select * from airline
where airline_code ~ '[0-9]'