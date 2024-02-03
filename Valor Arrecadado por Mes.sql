select
	extract(month
from
	d."DATA_DOACAO") as MES_DOACAO,
	sum(d."VALOR_DOACAO") as Valor_das_doacoes
from
	"DOACAO" d
group by
	MES_DOACAO
order by
	MES_DOACAO
;