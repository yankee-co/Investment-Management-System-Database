-- Table: public.investments

-- DROP TABLE IF EXISTS public.investments;

CREATE TABLE IF NOT EXISTS public.investments
(
    investment_id integer NOT NULL,
    name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    seller character varying(64) COLLATE pg_catalog."default" NOT NULL,
    price double precision NOT NULL,
    annual_income double precision NOT NULL,
    date timestamp with time zone NOT NULL,
    wallet_id integer NOT NULL,
    quantity integer NOT NULL,
    CONSTRAINT "Investments_pkey" PRIMARY KEY (investment_id),
    CONSTRAINT "wallet payment" FOREIGN KEY (wallet_id)
        REFERENCES public.wallets (wallet_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.investments
    OWNER to postgres;
