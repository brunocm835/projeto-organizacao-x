create table if not exists public."DOACAO"
(
    "ID_DOACAO" numeric not null,
    "CPF_DOADOR" character varying(11) collate pg_catalog."default" not null,
    "ID_PROJETO" numeric not null,
    "VALOR_DOACAO" numeric not null,
    "DATA_DOACAO" date not null,
    constraint "DOACAO_pkey" primary key ("ID_DOACAO"),
    constraint "FK_PROJETO" foreign key ("ID_PROJETO")
        references public."PROJETOS" ("ID_PROJETOS") match simple
        on
update
	no action
        on
	delete
		no action,
		constraint "FK_VISITANTE" foreign key ("CPF_DOADOR")
        references public."VISITANTE" ("CPF") match simple
        on
		update
			no action
        on
			delete
				no action
        not valid
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."DOACAO"
    OWNER to postgres;
