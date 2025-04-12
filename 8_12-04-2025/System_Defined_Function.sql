Functions :
	Functions is a group of code / SQL statement that allow us to to use same code
		and reduce duplicacy.
	We can access function by function name.
	Function end with '()'.

	Types of functions :
		1. System defined function (SDF)
			System defined function is, defined by SQL server.
			It comes when we install SQL server in system.
			There is no N number of limit to use system defined function.

			Types of System defined function :
				1. Aggregate functions :
					When we want to perform some mathemetical operation then we can use 
						aggregate function.

					-- Types of aggregate function :
						min() :
							min indicates minumium.
							It return minumim value from single column.

							-- Syntax :
								Select min(columnName) as minumum
								from tbl_name

							-- Example :
								Select * from tbl_OrderMaster

								Select MIN(Order_Quantity) as Min_OrderQuantity 
								from tbl_OrderMaster

								Select * from tbl_OrderMaster

								Select MIN(Order_Price)  as minumum  
								from tbl_OrderMaster

								update tbl_OrderMaster set
									Order_Quantity = null where Order_Id = 3


						max() :
							max is consider as maximum.
							It will return maximum value from the column.

							-- Syntax :
								Select Max(columnName) as alias_name
								from tbl_Name

							-- Example :
								Select * from tbl_OrderMaster

								Select MAX(Order_Quantity) as max_OrderQuantity
								from tbl_OrderMaster

								Select * from tbl_OrderMaster

								Select max(Order_Price) as max_OrderPrice
								from tbl_OrderMaster

								Select * from tbl_RegistrationMaster

								Select max(Registration_FirstName)
								from tbl_RegistrationMaster

						count():
							Count function returns total number of rows from table.

							-- Syntax :
								Select count(*) from tbl_Name

							-- Example
								Select * from tbl_OrderMaster

								Select COUNT(*) from tbl_OrderMaster

								Select COUNT(Registration_Id) from tbl_OrderMaster

						avg() :
							avg stands for Average.
							This function return average value of the column.

							-- Syntax :
								Select avg(column_name) from tbl_name

							-- Example :
								Select * from tbl_OrderMaster

								Select AVG(Order_Price) 
								from tbl_OrderMaster

								Select AVG(Order_Name) from tbl_OrderMaster -- Error

						sum() :
							Sum is for addition of column values.

							-- Syntax :
								Select sum(column_name) from tbl_Name

							-- Example :
								Select * from tbl_OrderMaster

								Select SUM(Order_Price) from tbl_OrderMaster
								where Order_Id in (1,3)

				2. String functions :
					String funtion is for perform some operation on string values.

					-- Types of string functions :
						len() :
							Len is stand for length of the string.
							len function use to get a total length of string value.
							Space is also consider as a char and part of counting in value.

							-- Syntax :
								Select LEN(columnname) from tbl_name

							-- Example :
								Select LEN('Hello World') as length_String

								Select LEN(' Hello') as length_String

								-- use len function in table
								select * from tbl_RegistrationMaster

								Select Registration_FirstName,
								LEN(Registration_FirstName)  as len_FirstName
								from tbl_RegistrationMaster

						concat :
							Concat function is use to join two or more words as single value.
							Ex. Hello, World
								Hello World

							-- Syntax :
								Select CONCAT(value1,value2,..., valueN)
								from tbl_name

							-- Example :
								Select CONCAT('Hello','World') -- HelloWorld
								
								Select CONCAT('Hello',' ','World') --Hello World

								Select CONCAT('Hello',' World') --Hello World

								-- Use in table column
								Select * from tbl_RegistrationMaster

								Select Registration_Id,Registration_FirstName,Registration_LastName,
								CONCAT(Registration_FirstName,'-',Registration_LastName) as FullName
								from tbl_RegistrationMaster -- Rahul-Mistry

						concat + :
							Concat is join two or more string and return as single string.
							We will use + sign between every word to join.

							-- Syntax :
								Select string1 + string2 + ...+ stringN from tbl_name

							-- Example :
								Select 'Hello' + 'World' as String -- HelloWorld

								Select 'Hello' + ' ' + 'World' as String -- Hello World

								-- Use in table column
								Select Registration_Id,Registration_FirstName,Registration_LastName,
								Registration_FirstName + ' ' + Registration_LastName as FullName
								from tbl_RegistrationMaster -- Rahul Mistry

						concat_ws :
							Concat is join two or more string and return as single string.
							WS is stand for "With Seperator".
							We do not need to add extra seperator between string.

							-- Syntax :
								Select CONCAT_WS(seperator,string1,string2..stringN) 
								from tbl_Name

							-- Example :
								Select CONCAT_WS('-','Hello','World','of','Weltec') -- Hello-World-of-Weltec

								-- Use with table column
								Select Registration_Id,Registration_FirstName,Registration_LastName,
								CONCAT_WS(' ',Registration_FirstName,Registration_LastName) as FullName
								from tbl_RegistrationMaster

								select CONCAT('Rahul',' ',null) -- Rahul 
								Select CONCAT(null, ' ', 'Mistry' ) --  Mistry

								Select 'Rahul' + ' ' + null
								Select null + ' ' + 'Mistry'

								Select CONCAT_WS(' ','Rahul',null) -- Rahul
								Select CONCAT_WS(' ',null, 'Mistry') -- Mistry
								Select CONCAT_WS(' ','Rahul', null, 'Mistry') -- Rahul Mistry

						trim() :
							

						rtrim()
						ltrim()
						replace()
						substring
						reverse
						char

				3. Date functions

		2. User defined function (UDF)