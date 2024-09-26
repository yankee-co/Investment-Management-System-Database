--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-09-26 12:35:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16414)
-- Name: currency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currency (
    currency_id integer NOT NULL,
    name character varying(32) NOT NULL,
    rate double precision NOT NULL,
    quantity double precision,
    wallet_id integer
);


ALTER TABLE public.currency OWNER TO postgres;

--
-- TOC entry 4788 (class 0 OID 16414)
-- Dependencies: 218
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.currency (currency_id, name, rate, quantity, wallet_id) FROM stdin;
1	USD	47.51	120	1
2	BTC	63772	0.00312	1
3	ETH	2625.84	0.125	2
\.


--
-- TOC entry 4643 (class 2606 OID 16418)
-- Name: currency currency_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (currency_id);


--
-- TOC entry 4644 (class 2606 OID 16419)
-- Name: currency wallet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency
    ADD CONSTRAINT wallet FOREIGN KEY (wallet_id) REFERENCES public.wallets(wallet_id);


-- Completed on 2024-09-26 12:35:16

--
-- PostgreSQL database dump complete
--

