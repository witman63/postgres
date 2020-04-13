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
-- Name: queues; Type: TABLE; Schema: public; Owner: dias; Tablespace: 
--

CREATE TABLE queues (
    queueid integer NOT NULL,
    numberofprocesses integer DEFAULT 5,
    "interval" integer DEFAULT 0,
    selftriggerprocessid text DEFAULT 0,
    startactive text DEFAULT 1
);


ALTER TABLE public.queues OWNER TO dias;

--
-- Name: queues_pkey; Type: CONSTRAINT; Schema: public; Owner: dias; Tablespace: 
--

ALTER TABLE ONLY queues
    ADD CONSTRAINT queues_pkey PRIMARY KEY (queueid);


--
-- PostgreSQL database dump complete
--

