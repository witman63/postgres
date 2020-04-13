CREATE TABLE message (
	id varchar,
	time_in timestamp,
	sender varchar,
	recipient varchar,
	size_in varchar,
	size_out varchar,
	type varchar,
	version varchar,
	reference varchar,
    confirmed boolean,
	backup_path varchar,
	PRIMARY KEY (id)
);

CREATE TABLE correlation (
	msg_id varchar REFERENCES message(id),
	related_msg_id varchar,
	relation_type varchar,
	PRIMARY KEY (msg_id, related_msg_id)
);

CREATE TABLE process (
	msg_id varchar REFERENCES message(id),
	service_name varchar,
	time_in timestamp,
	time_out timestamp,
    status varchar,
    service_version varchar,
	PRIMARY KEY (msg_id, service_name)
);

CREATE TABLE error (
	msg_id varchar REFERENCES message(id),
	time timestamp,
	service_name varchar,
	code varchar,
	description varchar,
	jira_id varchar,
	handled boolean default false,
    service_version varchar,
	PRIMARY KEY (msg_id, service_name)
);

CREATE TABLE interface_in_file (
	msg_id varchar REFERENCES message(id),
	filename varchar,
	path varchar,
	service_name varchar,
	originator varchar,
    service_version varchar,
	PRIMARY KEY (msg_id)
);

CREATE TABLE interface_out_file (
	msg_id varchar REFERENCES message(id),
	filename varchar,
	path varchar,
	service_name varchar,
	recipient varchar,
    service_version varchar,
	PRIMARY KEY (msg_id)
);

CREATE TABLE interface_in_ebms (
	msg_id varchar REFERENCES message(id),
	ebms_message_id varchar,
	originator varchar,
	recipient varchar,
	cpa_id varchar,
	conv_id varchar,
	cpa_action varchar,
	cpa_service varchar,
	filename varchar,
	ebms_ref_message_id varchar,
	PRIMARY KEY (msg_id)
);

CREATE TABLE interface_out_ebms (
	msg_id varchar REFERENCES message(id),
	originator varchar,
	recipient varchar,
	cpa_id varchar,
	conv_id varchar,
	cpa_action varchar,
	cpa_service varchar,
	filename varchar,
	PRIMARY KEY (msg_id)
);

CREATE TABLE interface_in_ebms3 (
	msg_id varchar REFERENCES message(id),
	ebms_message_id varchar,
	originator varchar,
	recipient varchar,
	conv_id varchar,
	action varchar,
	service varchar,
	filename varchar,
	ebms_ref_message_id varchar,
	original_sender varchar,
	final_recipient varchar,
	PRIMARY KEY (msg_id)
);

CREATE TABLE interface_in_smtp (
	msg_id varchar REFERENCES message(id),
	originator varchar,
	recipient varchar,
	subject varchar,
	mail_message_id varchar,
	filename varchar,
	PRIMARY KEY (msg_id)
);

CREATE TABLE interface_out_smtp (
	msg_id varchar REFERENCES message(id),
	originator varchar,
	recipient varchar,
	subject varchar,
	mail_message_id varchar,
	filename varchar,
	PRIMARY KEY (msg_id)
);

CREATE TABLE interface_in_ws (
	msg_id varchar REFERENCES message(id),
	originator varchar,
	ssl_client_oin varchar,
	ssl_client_cn varchar,
	PRIMARY KEY (msg_id)
);

CREATE TABLE interface_out_ws (
	msg_id varchar REFERENCES message(id),
	recipient varchar,
	PRIMARY KEY (msg_id)
);

CREATE TABLE exchange_message (
	type varchar,
	version varchar,
	exchange_nr varchar,
	kind varchar,
	name varchar,
	backup_retention varchar,
	PRIMARY KEY (type,version,exchange_nr)
);

CREATE TABLE message_kind (
	kind varchar,
	name varchar,
	description varchar,
	PRIMARY KEY (kind)
);

CREATE TABLE exchange (
	type varchar,
	version varchar,
	exchange_name varchar,
	exchange_nr varchar,
	sender varchar,
	recipient varchar,
	PRIMARY KEY (exchange_nr)
);

CREATE TABLE party (
	identifier varchar,
	name varchar,
	PRIMARY KEY (identifier)
);

CREATE TABLE message_data_eproc (
	msg_id varchar REFERENCES message(id),
	email varchar,
	time timestamp,
	PRIMARY KEY (msg_id)
);