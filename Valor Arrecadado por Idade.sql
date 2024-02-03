select
	extract(year
from
	age(current_date,
	v."DT_NASC")) as Idade,
	sum(d."VALOR_DOACAO") as Valor_Arrecadado
from
	"DOACAO" d
left join "VISITANTE" v on
	d."CPF_DOADOR" = v."CPF"
group by
	Idade
order by
	Valor_Arrecadado desc
;