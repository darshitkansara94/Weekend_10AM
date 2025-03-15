use Amazon_Database

Table :
	Table contain rows and columns.
	Every table may contain some data.

	-- Table creation standards
		When we create table, tanle name start with 'tbl_'
			Ex : OrderMaster
			 Table Name should be 'tbl_OrderMaster'
		Space is not alloed in table name. instead of space we can use underscore (_).
		Special char are not allowed at the starting.

	-- Columns :
		Space is not allowed. Intead of space we can use underscore(_).
		We can not start column name with special character.
		Every column name should start with table name.
			Ex :
				Table name is tbl_OrderMaster
				So column name should be
					Order_Id, Order_No, Order_Date
		We can not create duplicate column name into the same table.


		-- Syntax
			Create table tbl_Name
			(
				Column_name datatype,
				Column_name datatype,
				.
				.
				.
				Column_name datatype
			)	
		
		-- Example :
				use Amazon_Database

				Create table tbl_Registration
				(
					Registration_Id int,
					Registration_FirstName varchar(15),
					Registration_LastName varchar(15),
					Registration_MobileNo bigint,
					Registration_Address varchar(200),
					Registration_Email varchar(30),
					Registration_Password varchar(30)
				)

		 -- How to rename table.
			-- Syntax :
				Exec sp_rename 'old_tablename','new_tablename'

			-- Example :
				Exec sp_rename 'dbo.tbl_Registration','tbl_RegistrationMaster'
				
		 -- How to rename column
			-- Syntax :	
				Exec sp_rename 'tbl_name.columnName','new_Column_name','column'

			-- Example :
				Exec sp_rename 'tbl_RegistrationMaster.Registration_Email',
					'Registration_EmailId','column'

		-- How to change Datatype in existing column
			-- Syntax :
				Alter table tbl_Name
				Alter column column_name datatype

			-- Example :
				Alter table tbl_RegistrationMaster
				Alter column Registration_Address nvarchar(500)

		-- How to add new colun in existing table
			-- Syntax :
				Alter table tbl_Name
				Add column_name datatype

			-- Example :
				Alter table tbl_RegistrationMaster
				Add Registration_Date datetime

		-- How to remove existing column
			-- Syntax :
				Alter table tbl_Name
				drop column column_name

			-- Example :	
				Alter table tbl_RegistrationMaster
				drop column Registration_Date