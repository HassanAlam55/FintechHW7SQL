select 
/*	date,*/
	amount,
	card
	id_merchant
/*	name

	count (*) as trans_count */
from
	transaction
where
/*	amount < 2.0 and */
	extract(hour from date) < 9 and 
	extract(hour from date) >= 7
group by
	card,
/*	date, */
	amount,
	id_merchant
/*
	name
*/
order by
	amount desc limit 5
;

