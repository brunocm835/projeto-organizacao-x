select
	v."SEXO",
	count(d."ID_DOACAO") as Qauntidade_de_doacoes
from
	"DOACAO" d
left join "VISITANTE" v on
	d."CPF_DOADOR" = v."CPF"
group by
	"SEXO"
;