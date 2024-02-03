select
	v.*
from
	"VISITANTE" v
left join "DOACAO" d on
	v."CPF" = d."CPF_DOADOR"
where
	d."CPF_DOADOR" is null
;