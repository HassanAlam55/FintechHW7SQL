drop view if exists top_merch_small_fraud;

create view top_merch_small_fraud as
select
/*	t.amount, t.card, t.id_merchant, m.name */
	t.amount, t.card,  m.name
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