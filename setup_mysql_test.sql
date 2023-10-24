/*
a script that prepares a MySQL server for the project:

A database hbnb_test_db
A new user hbnb_test (in localhost)
The password of hbnb_test should be set to hbnb_test_pwd
hbnb_test should have all privileges on the database hbnb_test_db (and only this database)
hbnb_test should have SELECT privilege on the database performance_schema (and only this database)
If the database hbnb_test_db or the user hbnb_test already exists, your script should not fail
*/

-- Database and user information
SET @db_name = 'hbnb_test_db';
SET @new_user = 'hbnb_test';
SET @user_password = 'hbnb_test_pwd';

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS @db_name;

-- Create the user if it doesn't exist and set the password
CREATE USER IF NOT EXISTS @new_user@'localhost' IDENTIFIED BY @user_password;

-- Grant all privileges on the database
GRANT ALL PRIVILEGES ON @db_name.* TO @new_user@'localhost';

-- Grant SELECT privilege on the performance_schema database
GRANT SELECT ON performance_schema.* TO @new_user@'localhost';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;
