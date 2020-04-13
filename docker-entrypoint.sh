#!/bin/sh
set -e

export PATH="/usr/pgsql-9.6/bin/:${PATH}"
export PGDATA=/var/lib/pgsql/data

# Check if database file exist, otherwise create default database and settings. 
if [ $(ls -1A /var/lib/pgsql/data/ | wc -l) -eq 0 ]; then
  /usr/pgsql-9.6/bin/initdb -D /var/lib/pgsql/data
  echo "listen_addresses = '*'"                                               >> /var/lib/pgsql/data/postgresql.conf
  echo "port = 5432"                                                          >> /var/lib/pgsql/data/postgresql.conf
  echo "host    all             all             0.0.0.0/0               md5"  >> /var/lib/pgsql/data/pg_hba.conf 
  /usr/pgsql-9.6/bin/pg_ctl -D /var/lib/pgsql/data start &
    sleep 3
    psql -c "CREATE USER nomeda LOGIN ENCRYPTED PASSWORD 'nomeda';"
    psql -c "CREATE DATABASE \"nomeda\" OWNER nomeda;"
    psql -U nomeda --dbname nomeda -f /tmp/nomeda.sql

    psql -c "CREATE USER corvus LOGIN ENCRYPTED PASSWORD 'corvus';"
    psql -c "CREATE DATABASE ebms OWNER corvus;"
    psql -U corvus --dbname ebms -f /tmp/ebms.sql
    psql -U corvus --dbname ebms -f /tmp/ebms_partnership.sql
    #psql -U corvus --dbname ebms -c "insert into partnership ( "partnership_id", "cpa_id", "service", "action", "transport_protocol", "transport_endpoint", "is_hostname_verified", "sync_reply_mode", "ack_requested", "ack_sign_requested", "dup_elimination", "actor", "disabled", "retries", "retry_interval", "persist_duration", "message_order", "sign_requested", "sign_cert", "ds_algorithm", "md_algorithm", "encrypt_requested", "encrypt_cert", "encrypt_algorithm") values ( 'SBA_ACC_TEST_CPA', 'DIGIPOORT_11_ALS_RMS_LOGIUS_DIGINETWERK2_DIGIINKOOP_RINIS_PREPROD_20170621', 'osb:aanleveren:1.1\$1.0', 'aanleveren', 'HTTP', 'http://centos7-tomcat-jentrata-stub:8080/jentrata/httpd/ebms/inbound', 'false', 'none', 'always', 'never', 'always', 'urn:oasis:names:tc:ebxml-msg:actor:toPartyMSH', 'false', '8', '10800000', 'P2D', 'NotGuaranteed', 'false', null, null, null, 'false', null, null);"
    if [ -n "$STUB_EBMS_ENDPOINT" ]; then psql -U corvus --dbname ebms -c "update partnership set transport_endpoint = '$STUB_EBMS_ENDPOINT';"; fi
    psql -c "CREATE DATABASE as2 OWNER corvus;"
    psql -U corvus --dbname as2 -f /tmp/as2.sql

    #Also create a ebms database for a stub jentrata server
    psql -c "CREATE DATABASE ebms_stub OWNER corvus;"
    psql -U corvus --dbname ebms_stub -f /tmp/ebms.sql
    psql -U corvus --dbname ebms_stub -f /tmp/ebms_partnership.sql
    #psql -U corvus --dbname ebms_stub -c "insert into partnership ( "partnership_id", "cpa_id", "service", "action", "transport_protocol", "transport_endpoint", "is_hostname_verified", "sync_reply_mode", "ack_requested", "ack_sign_requested", "dup_elimination", "actor", "disabled", "retries", "retry_interval", "persist_duration", "message_order", "sign_requested", "sign_cert", "ds_algorithm", "md_algorithm", "encrypt_requested", "encrypt_cert", "encrypt_algorithm") values ( 'SBA_ACC_TEST_CPA', 'DIGIPOORT_11_ALS_RMS_LOGIUS_DIGINETWERK2_DIGIINKOOP_RINIS_PREPROD_20170621', 'osb:aanleveren:1.1\$1.0', 'aanleveren', 'HTTP', 'http://centos7-tomcat-jentrata:8080/jentrata/httpd/ebms/inbound', 'false', 'none', 'always', 'never', 'always', 'urn:oasis:names:tc:ebxml-msg:actor:toPartyMSH', 'false', '8', '10800000', 'P2D', 'NotGuaranteed', 'false', null, null, null, 'false', null, null);"
    if [ -n "$EBMS_ENDPOINT" ]; then psql -U corvus --dbname ebms_stub -c "update partnership set transport_endpoint = '$EBMS_ENDPOINT';"; fi
    psql -c "CREATE DATABASE as2_stub OWNER corvus;"
    psql -U corvus --dbname as2_stub -f /tmp/as2.sql

    psql -c "CREATE USER dias LOGIN ENCRYPTED PASSWORD 'dias';"
    psql -c "CREATE DATABASE \"RINIS_BEHEER\" OWNER dias;"
    psql -U dias --dbname RINIS_BEHEER -f /tmp/bericht_schema.sql
    psql -U dias --dbname RINIS_BEHEER -f /tmp/configuratie_schema.sql
    psql -U dias --dbname RINIS_BEHEER -f /tmp/logging_schema.sql
    psql -U dias --dbname RINIS_BEHEER -f /tmp/process_queue_schema.sql
    psql -U dias --dbname RINIS_BEHEER -f /tmp/processes_schema.sql
    psql -U dias --dbname RINIS_BEHEER -f /tmp/queues_schema.sql
    psql -U dias --dbname RINIS_BEHEER -f /tmp/analysedb_function_intervalclass.sql
    psql -U dias --dbname RINIS_BEHEER -f /tmp/analysedb_table_bericht_namen.sql
    psql -U dias --dbname RINIS_BEHEER -f /tmp/analysedb_table_soort.sql
    psql -U dias --dbname RINIS_BEHEER -f /tmp/analysedb_table_uitwisselingen.sql

    # Create an empty database for metabase
    psql -c "CREATE USER metabase LOGIN ENCRYPTED PASSWORD 'metabase';"
    psql -c "CREATE DATABASE \"metabase\" OWNER metabase;"

    #Change the max_connections parameter
    sed -i -e "s/max_connections/#max_connections/g" /var/lib/pgsql/data/postgresql.conf
    echo "max_connections = 300" >> /var/lib/pgsql/data/postgresql.conf

  #kill $!
  /usr/pgsql-9.6/bin/pg_ctl -D /var/lib/pgsql/data stop
  sleep 5
  echo "Default databases created ... starting postgres."
fi

# if [ "$1" = 'postgresql' ]; then
#   echo "Attempting to start the database with /usr/pgsql-9.6/bin/pg_ctl -D /var/lib/pgsql/data start"
#   exec dumb-init -- /usr/pgsql-9.6/bin/pg_ctl -D /var/lib/pgsql/data start
# fi

exec "$@"
