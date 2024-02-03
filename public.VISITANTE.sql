create table if not exists public."VISITANTE"
(
    "CPF" character varying(11) collate pg_catalog."default" not null,
    "NOME" character varying collate pg_catalog."default" not null,
    "DT_NASC" date,
    "SEXO" character varying(1) collate pg_catalog."default",
    "ESTADO" character varying(2) collate pg_catalog."default",
    "EMAIL" character varying collate pg_catalog."default",
    constraint "USUARIO_pkey" primary key ("CPF")
)

tablespace pg_default;

alter table if exists public."VISITANTE"
    owner to postgres;
