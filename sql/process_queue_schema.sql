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
-- Name: process_queue; Type: TABLE; Schema: public; Owner: dias; Tablespace: 
--

CREATE TABLE process_queue (
    id integer DEFAULT nextval(('seq_process_queue'::text)::regclass) NOT NULL,
    queueid integer,
    processid integer,
    item text,
    reg_time text,
    exec_time text,
    sleutel text,
    sysid text
);


ALTER TABLE public.process_queue OWNER TO dias;

--
-- Name: process_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: dias; Tablespace: 
--

ALTER TABLE ONLY process_queue
    ADD CONSTRAINT process_queue_pkey PRIMARY KEY (id);


--
-- Name: item_idx; Type: INDEX; Schema: public; Owner: dias; Tablespace: 
--

CREATE INDEX item_idx ON process_queue USING btree (item);


--
-- Name: processid_idx; Type: INDEX; Schema: public; Owner: dias; Tablespace: 
--

CREATE INDEX processid_idx ON process_queue USING btree (processid);


--
-- Name: queueid_idx; Type: INDEX; Schema: public; Owner: dias; Tablespace: 
--

CREATE INDEX queueid_idx ON process_queue USING btree (queueid);


--
-- Name: reg_time_idx; Type: INDEX; Schema: public; Owner: dias; Tablespace: 
--

CREATE INDEX reg_time_idx ON process_queue USING btree (reg_time);


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
-- Name: seq_process_queue; Type: SEQUENCE; Schema: public; Owner: dias
--

CREATE SEQUENCE seq_process_queue
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.seq_process_queue OWNER TO dias;

--
-- PostgreSQL database dump complete
--

