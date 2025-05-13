-- Run the following SQL command to create a separate database:
-- Login to postgres db using root user(postgres) and password(cognizant)
CREATE DATABASE ledger_servicedb;

-- use postgres root username and password and connect to the artemis_gatewaydb and run the following commands

-- Create a new user specifically for this database:

CREATE USER ledgeradmin WITH PASSWORD 'password';

-- Grant the user permissions to the database:
GRANT ALL PRIVILEGES ON DATABASE ledger_servicedb TO ledgeradmin;

-- Login to artemis_gatewaydb using the username artemis_gateway_admin and password and execute the following commands

-- Create a schema for organizing tables:
CREATE SCHEMA ledger AUTHORIZATION ledgeradmin;

-- Set the default schema for the user:
ALTER ROLE ledgeradmin SET search_path TO ledger;


