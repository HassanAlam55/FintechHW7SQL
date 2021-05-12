select
	t.amount, t.card, t.id_merchant, m.name, count(m.name)
	from transaction as t inner 
	join 
	merchant as m 
	on (t.id_merchant = m.id)
where
	extract(hour from t.date) < 9 and 
	extract(hour from t.date) >= 7 and
	t.amount < 2.0 
order by
	m.name desc
	limit 5
	
