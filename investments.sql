--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-09-26 12:34:53

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
-- TOC entry 219 (class 1259 OID 16424)
-- Name: Investments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Investments" (
    investment_id integer NOT NULL,
    name character varying(64) NOT NULL,
    seller character varying(64) NOT NULL,
    price double precision NOT NULL,
    annual_income double precision NOT NULL,
    date timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    wallet_id integer NOT NULL
);


ALTER TABLE public."Investments" OWNER TO postgres;

--
-- TOC entry 4789 (class 0 OID 16424)
-- Dependencies: 219
-- Data for Name: Investments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Investments" (investment_id, name, seller, price, annual_income, date, user_id, wallet_id) FROM stdin;
1	Автомобільна компанія "Tesla"	Tesla-Inc	7899	405	2024-09-21 00:00:00+03	1	1
2	VR Технології	VR World	1095	50	2023-11-30 00:00:00+02	2	2
\.


--
-- TOC entry 4643 (class 2606 OID 16428)
-- Name: Investments Investments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Investments"
    ADD CONSTRAINT "Investments_pkey" PRIMARY KEY (investment_id);


--
-- TOC entry 4644 (class 2606 OID 16429)
-- Name: Investments user bought; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Investments"
    ADD CONSTRAINT "user bought" FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 4645 (class 2606 OID 16434)
-- Name: Investments wallet payment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Investments"
    ADD CONSTRAINT "wallet payment" FOREIGN KEY (wallet_id) REFERENCES public.wallets(wallet_id);


-- Completed on 2024-09-26 12:34:53

--
-- PostgreSQL database dump complete
--

