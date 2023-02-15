#!/bin/bash
set -e

export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
 CREATE DATABASE $APP_DB_NAME;

 \connect $APP_DB_NAME

 BEGIN;
 
  CREATE TABLE IF NOT EXISTS todo ( id serial NOT NULL, content varchar NOT NULL, completed integer default 0, date_created date DEFAULT CURRENT_TIMESTAMP);

 COMMIT;
EOSQL
