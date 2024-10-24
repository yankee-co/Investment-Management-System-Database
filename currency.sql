-- Table: public.currency

-- DROP TABLE IF EXISTS public.currency;

CREATE TABLE IF NOT EXISTS public.currency
(
    currency_id integer NOT NULL,
    name character varying(32) COLLATE pg_catalog."default" NOT NULL,
    rate double precision NOT NULL,
    quantity double precision NOT NULL,
    wallet_id integer NOT NULL,
    CONSTRAINT currency_pkey PRIMARY KEY (currency_id),
    CONSTRAINT wallet FOREIGN KEY (wallet_id)
        REFERENCES public.wallets (wallet_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.currency
    OWNER to postgres;
