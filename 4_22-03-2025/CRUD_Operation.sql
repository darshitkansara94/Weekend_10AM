C - Create
R - Read
U - Update
D - Delete

CRUD Operation :
	-- Create :
		Data is created inside table in form of row.

		-- Syntax :
			Insert into tbl_name(column1,column2,column3,....,columnN)
			values(value1,value2,value3,....,valueN)

			-- Insert with Select statement
			Insert into tbl_Name(column1, column2, column3,..., columnN)
			Select value1,value2,value3,...,valueN from tbl_Name

		-- Example :
			Insert into tbl_RegistrationMaster
			(
				Registration_Id, 
				Registration_FirstName,
				Registration_LastName, 
				Registration_MobileNo, 
				Registration_Address,
				Registration_EmailId, 
				Registration_Password
			)
			Values
			(
				1,
				'Abc',
				'Xyz',
				1234567890,
				'Vadodara',
				'abc@gmail.com',
				'Abc@123'
			)

			-- Insert with Select			
			Insert into tbl_RegistrationMaster
			(
				Registration_Id,
				Registration_FirstName,
				Registration_LastName,
				Registration_EmailId,
				Registration_Address,
				Registration_Password,
				Registration_MobileNo
			)
			Select 
				2 as Registration_Id,
				'Abc' as Registration_FirstName,
				'xyz' as Registration_LastName,
				'abc@gmail.com' as Registration_EmailId,
				'Vadodara' as Registration_Address,
				'123' as Registration_Password,
				'123456789' as Registration_MobileNo

			Select * from tbl_RegistrationMaster

		-- Multiple value with insert statement
			Insert into tbl_RegistrationMaster
			(
				Registration_Id, 
				Registration_FirstName,
				Registration_LastName				
			)
			values(3,'abc','xyz'),(4,'weltec','Institute'),(5,'Darshit','K')

		-- Copy data from one database to another database

		create database Amazon_DBCopy

		Use Amazon_DBCopy

		Create Table tbl_RegistrationDetails
		(
			Registration_Id int,
			Registration_FirstName nvarchar(100),
			Registration_LastName nvarchar(100),
			Registration_MobileNo bigint,
			Registration_Address nvarchar(500),
			Registration_EmailId nvarchar(30),
			Registration_Password nvarchar(30)
		)

		Select * from tbl_RegistrationDetails

		Select * from [Amazon_Database].[dbo].[tbl_RegistrationMaster]

		Insert into tbl_RegistrationDetails
			(
				Registration_Id,
				Registration_FirstName,
				Registration_LastName ,
				Registration_MobileNo ,
				Registration_Address  ,
				Registration_EmailId  ,
				Registration_Password
			)
		Select Registration_Id,
						Registration_FirstName,
						Registration_LastName,
						Registration_MobileNo,
						Registration_Address,
						Registration_EmailId,
						Registration_Password				 
		from [Amazon_Database].[dbo].[tbl_RegistrationMaster]

		-- Generate Error
			Insert into tbl_RegistrationMaster
			(
				Registration_Id, 
				Registration_FirstName,
				Registration_LastName, 
				Registration_MobileNo, 
				Registration_Address,
				Registration_EmailId
			)
			Values
			(
				1,
				'Abc',
				'Xyz',
				1234567890,
				'Vadodara',
				'abc@gmail.com',
				'abc@123'
			)



	-- Read (Select) :
		Read data from table.
		We can read all data or we can filter the data based on conditions.

		-- Syntax :
			Select * from tbl_name

			Select column1,column2,column3,...columnN from tbl_name

		-- Example :
			Select * from tbl_RegistrationMaster

			Select Registration_Id, 
				Registration_FirstName,
				Registration_LastName, 
				Registration_EmailId,
				Registration_MobileNo, 
				Registration_Address,				
				Registration_Password 
			from tbl_RegistrationMaster

	-- Update :
		Update is for modify the existing record.
		We can update all records in the table or we can update a single / multiple
			record into the table.
		Once data is updated we can not recover that data back.

		-- Syntax :
			Update tbl_Name set
				column_name = 'new_value', 
				column_name1 = 'new_value',..,column_nameN = 'new_value'

		-- Example :
			Select * from tbl_RegistrationMaster

			Update tbl_RegistrationMaster set
				Registration_Password = '123'

			Update tbl_RegistrationMaster set
				Registration_Password = '1234'
			Where Registration_Id = 2

		-- Delete :
			Delete record from database
			Once data is deleted we can not recover that data back.

			-- Syntax :
				Delete from tbl_name

			-- Example :
				Select * from tbl_RegistrationMaster

				Delete from tbl_RegistrationMaster -- Hard Delete

				Alter table tbl_RegistrationMaster
				Add IsActive int
				
				Update tbl_RegistrationMaster set IsActive = 0

				Select * from tbl_RegistrationMaster where IsActive = 0

				Update tbl_RegistrationMaster set
					IsActive = 1 where Registration_Id = 2



