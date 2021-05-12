select 
/*	date,*/
	transaction.amount,
	transaction.card,
	transaction.id_merchant,
	merchant.name
/*	
	count (*) as trans_count */
from
	transaction inner join merchant (transaction.id_merchant = merchant.id)

where
/*	amount < 2.0 and */
	extract(hour from transaction.date) < 9 and 
	extract(hour from transaction.date) >= 7
group by
	card,
/*	date, */
	transaction.amount ,
	transaction.id_merchant,
	merchant.name
/*
	name
*/
order by
	transaction.amount desc limit 5
;

