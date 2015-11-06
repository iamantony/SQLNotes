# SQLNotes
My notes on SQL.

Tested on Ubuntu 12.04 64bit and PostgreSQL 9.1.

## Installation

``` bash
sudo apt-get update
sudo apt-get install postgresql, pgadmin3
```

## Create database and user

``` bash
# Get access to psql
sudo -u postgres psql

# Create test database
CREATE DATABASE database_name;

# Create user and grant it access to test database
CREATE USER user_name WITH password 'user_password';
GRANT ALL privileges ON DATABASE database_name TO user_name;

# Exit
\q

# Try to connect to new database
psql -h localhost database_name username
```

## Work with database

``` bash
# Choose directory
cd directory_name

# Run init script
psql -h localhost database_name username < ./init.sql

# Work with database...
# Clean up database
psql -h localhost database_name username < ./cleanup.sql
```

Also you can use pgAdmin3 to see the changes in DB and to manually run commands.
