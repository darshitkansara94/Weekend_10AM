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
