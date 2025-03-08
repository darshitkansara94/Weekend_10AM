Database :
	Database contain tables, store procedure, view, constraint and Keys.
	We can create multiple database under single server.
	Database name can not be duplicate.
	Space is not allowed in database name.


	-- Syntax :
		Create database database_name

	-- Example :
	-- Create
		Create database Amazon_DB

		CREATE DATABASE AMAZON_DB1

	-- Delete database 
		Remove database from server.
		Once DB is deleted we can not restore it back.

		-- Syntax :
			Drop database database_name

		-- Example :
			Drop database amazon_db1

	-- Rename database:
		Rename existing database.

		-- Syntax :
			Alter database database_Name
			modify name = new_database_Name

		-- Example :
			Alter database Amazon_DB
			modify name = Amazon_Database

	-- How to select database
		-- Syntax
			Use database_name

		-- Example :
			Use Amazon_Database



		


