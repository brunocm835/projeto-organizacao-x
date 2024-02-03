select
	p."NOME_PROJETO",
	count(d."ID_DOACAO") as Quantidade_de_doacoes,
	p."TIPO_PROJETO" 
from
	"DOACAO" d
left join "VISITANTE" v on
	d."CPF_DOADOR" = v."CPF"
left join "PROJETOS" p on
	d."ID_PROJETO" = p."ID_PROJETOS"
group by
	p."NOME_PROJETO", p."TIPO_PROJETO"  
;