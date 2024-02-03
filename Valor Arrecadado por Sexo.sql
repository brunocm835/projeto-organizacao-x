select
	v."SEXO" ,
	sum(d."VALOR_DOACAO") as Valor_Arrecadado
from
	"DOACAO" d
left join "VISITANTE" v on
	d."CPF_DOADOR" = v."CPF"
group by
	v."SEXO" 
;