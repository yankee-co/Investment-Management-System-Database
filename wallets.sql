-- Table: public.wallets

-- DROP TABLE IF EXISTS public.wallets;

CREATE TABLE IF NOT EXISTS public.wallets
(
    wallet_id integer NOT NULL,
    status boolean NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT wallets_pkey PRIMARY KEY (wallet_id),
    CONSTRAINT wallet_owner FOREIGN KEY (user_id)
        REFERENCES public.users (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.wallets
    OWNER to postgres;
