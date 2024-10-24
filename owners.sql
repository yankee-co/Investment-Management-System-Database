-- Table: public.owners_investments

-- DROP TABLE IF EXISTS public.owners_investments;

CREATE TABLE IF NOT EXISTS public.owners_investments
(
    contract_id integer NOT NULL,
    user_id integer NOT NULL,
    investment_id integer NOT NULL,
    CONSTRAINT owners_investments_pkey PRIMARY KEY (contract_id, user_id, investment_id),
    CONSTRAINT investment FOREIGN KEY (investment_id)
        REFERENCES public.investments (investment_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "user" FOREIGN KEY (user_id)
        REFERENCES public.users (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.owners_investments
    OWNER to postgres;
