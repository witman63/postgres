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
-- Name: processes; Type: TABLE; Schema: public; Owner: dias; Tablespace: 
--

CREATE TABLE processes (
    processid integer NOT NULL,
    queueid integer,
    processname text,
    processtype text,
    processcommand text,
    processfunc text,
    formatin text,
    formatout text,
    erroratt text,
    errorcodes text,
    onerrorgoto text,
    succ1att text,
    succ1codes text,
    onsucc1goto text,
    succ2att text,
    succ2codes text,
    onsucc2goto text,
    succ3att text,
    succ3codes text,
    onsucc3goto text,
    repeat integer,
    "interval" integer,
    report integer
);


ALTER TABLE public.processes OWNER TO dias;

--
-- Name: processes_pkey; Type: CONSTRAINT; Schema: public; Owner: dias; Tablespace: 
--

ALTER TABLE ONLY processes
    ADD CONSTRAINT processes_pkey PRIMARY KEY (processid);


--
-- Name: queue_id_keys; Type: INDEX; Schema: public; Owner: dias; Tablespace: 
--

CREATE INDEX queue_id_keys ON processes USING btree (queueid);


--
-- PostgreSQL database dump complete
--

