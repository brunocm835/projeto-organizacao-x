 select
	extract(month
from
	"DATA_DOACAO") as mes_doacao,
	count(*) as quantidade_de_doacoes
from
	"DOACAO" d
group by
	(extract(month
from
	"DATA_DOACAO"))
order by
	(extract(month
from
	"DATA_DOACAO"))
	;