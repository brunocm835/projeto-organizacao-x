select
	v."CPF", 
	v."NOME",
	d."VALOR_DOACAO",
	p."NOME_PROJETO",
	d."DATA_DOACAO",
	v."ESTADO", 
	v."EMAIL" 
from
	"DOACAO" d
left join "VISITANTE" v on
	d."CPF_DOADOR" = v."CPF"
left join "PROJETOS" p on
	d."ID_PROJETO" = p."ID_PROJETOS"
order by
	d."VALOR_DOACAO" desc
limit 1
;