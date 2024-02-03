select
	d."CPF_DOADOR",
	v."NOME",
	count(*) as Quantidade_de_Doacoes,
	sum(d."VALOR_DOACAO") as Valor_Total_Arrecadado,
	v."EMAIL"
from
	"DOACAO" d
left join "VISITANTE" v on
	d."CPF_DOADOR" = v."CPF"
group by
	d."CPF_DOADOR",
	v."NOME",
	v."EMAIL"
having
	COUNT(*) > 1
order by
	Quantidade_de_Doacoes desc 
	;