drop view if exists morning_fraud;

create view morning_fraud as
select
	t.amount, t.card, t.id_merchant, m.name
	from transaction as t inner 
	join 
	merchant as m 
	on (t.id_merchant = m.id)
where
	extract(hour from t.date) < 9 and 
	extract(hour from t.date) >= 7
order by
	amount desc
	limit 5
	
