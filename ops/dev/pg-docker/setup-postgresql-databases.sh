#!/bin/bash

set -e
set -u

function create_user_and_database() {
    local database=$1
    echo "  Creating user and database '$database'"
    psql -v ON_ERROR_STOP=1 --username postgres <<-EOSQL
      CREATE USER $DB_USER;
      --CREATE DATABASE $DB_NAME;
      GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_NAME;
      ALTER USER $DB_USER PASSWORD '$DB_PASSWORD';
EOSQL
}

create_user_and_database $DB_NAME
