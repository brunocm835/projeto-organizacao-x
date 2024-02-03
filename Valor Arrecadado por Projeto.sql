select
	p."NOME_PROJETO",
	p."TIPO_PROJETO", 
	sum(d."VALOR_DOACAO") as Valor_Arrecadado,
	p."META"
from
	"DOACAO" d
left join "VISITANTE" v on
	d."CPF_DOADOR" = v."CPF"
left join "PROJETOS" p on
	d."ID_PROJETO" = p."ID_PROJETOS"
group by
	p."NOME_PROJETO",
	p."META",
	p."TIPO_PROJETO" 
;