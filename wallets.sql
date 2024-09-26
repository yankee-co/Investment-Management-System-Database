--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-09-26 12:35:52

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
-- TOC entry 217 (class 1259 OID 16404)
-- Name: wallets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wallets (
    wallet_id integer NOT NULL,
    status boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.wallets OWNER TO postgres;

--
-- TOC entry 4788 (class 0 OID 16404)
-- Dependencies: 217
-- Data for Name: wallets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wallets (wallet_id, status, user_id) FROM stdin;
1	t	1
2	t	2
\.


--
-- TOC entry 4643 (class 2606 OID 16408)
-- Name: wallets wallets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (wallet_id);


--
-- TOC entry 4644 (class 2606 OID 16409)
-- Name: wallets wallet_owner; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallet_owner FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;


-- Completed on 2024-09-26 12:35:52

--
-- PostgreSQL database dump complete
--

