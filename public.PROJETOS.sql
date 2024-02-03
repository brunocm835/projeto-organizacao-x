CREATE TABLE IF NOT EXISTS public."PROJETOS"
(
    "ID_PROJETOS" numeric NOT NULL,
    "NOME_PROJETO" character varying COLLATE pg_catalog."default" NOT NULL,
    "TIPO_PROJETO" character varying COLLATE pg_catalog."default" NOT NULL,
    "META" numeric NOT NULL,
    CONSTRAINT "PROJETOS_pkey" PRIMARY KEY ("ID_PROJETOS")
)

TABLESPACE pg_default;

alter table if exists public."PROJETOS"
    owner to postgres;