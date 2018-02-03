#! /bin/bash

echo "Creating the database"
psql < /home/postgres/ingest.psql
echo "Creating the database dump"
pg_dump --verbose --clean --if-exists --dbname=passenger_census \
  > /home/postgres/passenger_census.sql
