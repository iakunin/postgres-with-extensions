#!/bin/sh

# This bash-script is based on the following one:
# https://github.com/postgis/docker-postgis/blob/f6d28e4a1871b1f72e1c893ff103f10b6d7cb6e1/10-2.4/initdb-postgis.sh

set -e

echo "Loading extensions into database='$POSTGRES_DB'"
psql --dbname="$POSTGRES_DB" --username="$POSTGRES_USER" <<-'EOSQL'
    CREATE EXTENSION IF NOT EXISTS pgcrypto;
EOSQL
