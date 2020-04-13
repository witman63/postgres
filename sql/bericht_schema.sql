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
-- Name: bericht; Type: TABLE; Schema: public; Owner: dias; Tablespace: 
--

CREATE TABLE bericht (
    sleutel text NOT NULL,
    stadium1binnen text,
    stadium2binnen text,
    stadium3binnen text,
    stadium4binnen text,
    sector1 text,
    tijd1sub text,
    tijd1rec text,
    sector2 text,
    tijd2sub text,
    tijd2rec text,
    sector3 text,
    tijd3sub text,
    tijd3rec text,
    sector4 text,
    tijd4sub text,
    tijd4rec text,
    ftpnaam text,
    mtsid text,
    messageid text,
    sender text,
    receiver text,
    soort text,
    ber text,
    fun text,
    aan text,
    lev text,
    datum text,
    reflev text,
    refoor text,
    cgi text,
    sofi text,
    meld text,
    meldmbt text,
    tellingsofi text,
    alertcode text,
    alerttext text,
    errorinstadium text,
    errcode text,
    errtext text,
    errstep text,
    errfield text,
    errrecord text,
    errmessage text,
    errfile text,
    errreportdone text,
    recfile text,
    prsfile text,
    secfile text,
    berichtstatus text,
    size_in text,
    size_rinis text,
    size_out text,
    errortext text,
    errorcode text DEFAULT 0,
    tijdverwerking text,
    file_fmt text,
    prm_sender text,
    prm_receiver text,
    edi_sender text,
    edi_recipient text,
    edi_reference text,
    edi_msg_types text,
    edi_test_ind text,
    edi_ctr_file text,
    xml_schema_name text,
    rec_msgid text,
    rec_sender text,
    rec_receiver text,
    snd_msgid text,
    snd_sender text,
    snd_receiver text,
    sec3_file text,
    backup_file text,
    backup_time text
);


ALTER TABLE public.bericht OWNER TO dias;

--
-- Name: bericht_pkey; Type: CONSTRAINT; Schema: public; Owner: dias; Tablespace: 
--

ALTER TABLE ONLY bericht
    ADD CONSTRAINT bericht_pkey PRIMARY KEY (sleutel);


--
-- PostgreSQL database dump complete
--

