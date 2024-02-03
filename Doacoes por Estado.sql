select
	v."ESTADO",
	count(d."ID_DOACAO") as QUANTIDADE_DE_DOACOES
from
	"DOACAO" d
left join "VISITANTE" v on
	d."CPF_DOADOR" = v."CPF"
group by
	v."ESTADO"
order by
	QUANTIDADE_DE_DOACOES desc 
;