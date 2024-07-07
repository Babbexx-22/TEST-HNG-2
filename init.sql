-- init.sql

-- Create user
CREATE USER app WITH PASSWORD 'changethis123';

-- Create database
CREATE DATABASE app;

-- Grant privileges
GRANT ALL PRIVILEGES ON DATABASE app TO app;
