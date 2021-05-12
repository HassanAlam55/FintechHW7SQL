select 
	card,
--	amount,
	count(card)
from
	transaction
where
	amount < 2.0 

group by
	card 
--	amount
order by
	count desc ;