--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: logging; Type: TABLE; Schema: public; Owner: dias; Tablespace: 
--

CREATE TABLE logging (
    "timestamp" text NOT NULL,
    level text,
    message text,
    id integer DEFAULT nextval(('seq_logging'::text)::regclass) NOT NULL
);


ALTER TABLE public.logging OWNER TO dias;

--
-- Name: logging_pkey; Type: CONSTRAINT; Schema: public; Owner: dias; Tablespace: 
--

ALTER TABLE ONLY logging
    ADD CONSTRAINT logging_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: seq_logging; Type: SEQUENCE; Schema: public; Owner: dias
--

CREATE SEQUENCE seq_logging
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.seq_logging OWNER TO dias;

--
-- PostgreSQL database dump complete
--

