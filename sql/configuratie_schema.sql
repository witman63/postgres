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
-- Name: configuratie; Type: TABLE; Schema: public; Owner: dias; Tablespace: 
--

CREATE TABLE configuratie (
    sector text NOT NULL,
    naam text,
    sector_dir text,
    rinis_dir text,
    sector_intern text,
    rinis_intern text,
    cfg_dir text,
    wrapper_dir text,
    script_dir text,
    maxware_dir text,
    rpfe_dir text,
    bin_dir text,
    log_level integer DEFAULT 4
);


ALTER TABLE public.configuratie OWNER TO dias;

--
-- Name: sectoren_pkey; Type: CONSTRAINT; Schema: public; Owner: dias; Tablespace: 
--

ALTER TABLE ONLY configuratie
    ADD CONSTRAINT sectoren_pkey PRIMARY KEY (sector);


--
-- PostgreSQL database dump complete
--

