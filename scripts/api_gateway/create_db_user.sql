-- Run the following SQL command to create a separate database:
-- Login to postgres db using root user(postgres) and password(cognizant)
CREATE DATABASE artemis_gatewaydb;

-- use postgres root username and password and connect to the artemis_gatewaydb and run the following commands

-- Create a new user specifically for this database:

CREATE USER artemis_gateway_admin WITH PASSWORD 'password';

-- Grant the user permissions to the database:
GRANT ALL PRIVILEGES ON DATABASE artemis_gatewaydb TO artemis_gateway_admin;

-- Login to artemis_gatewaydb using the username artemis_gateway_admin and password and execute the following commands

-- Create a schema for organizing tables:
CREATE SCHEMA artemis_gateway AUTHORIZATION artemis_gateway_admin;

-- Set the default schema for the user:
ALTER ROLE artemis_gateway_admin SET search_path TO artemis_gateway;


