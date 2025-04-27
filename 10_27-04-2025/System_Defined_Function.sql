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
							Space created at the end of string or at the begining  of
								the string is called whitespace.
							This space is created intentionally of y mistake by user.
							To remove whitespace from the 
							beginning of string and ending of string we can use trim function.
							Ex. '   ABC    ', So here before "ABC" and after "ABC", space is 
								created is called as whitespace.

							-- Syntax :
								Select TRIM(value) from tbl_Name

							-- Example  :
								Select TRIM('  ABC   ') as trim_Value -- ABC
								Select '  ABC   ' as withoutTrim --   ABC
								
								-- Use on table
								Select * from tbl_RegistrationMaster

								Insert into tbl_RegistrationMaster(Registration_Id,
								Registration_FirstName,Registration_LastName)
								values(5,'  Darshit   ','   Kansara')

								--  Darshit   
								--   Kansara

								Select Registration_FirstName,Registration_LastName,
								TRIM(Registration_FirstName) , 
								TRIM(Registration_LastName),
								TRIM(Registration_EmailId)
								from tbl_RegistrationMaster

						rtrim() :
							When we want to remove whitespace from right side of the 
								string then i can use rtrim function.

							-- Syntax :
								Select RTRIM(value) from tbl_name

							-- Example :
								Select 'Darshit   ' -- Darshit   
								Select RTRIM('Darshit   ') -- Darshit

								-- Use with table column
								Select Registration_FirstName,
								Registration_LastName,
								RTRIM(Registration_FirstName),
								RTRIM(Registration_LastName)
								from tbl_RegistrationMaster
								
								-- O/P :
									Without using rtrim
										--  Darshit   
									With using rtrim
										--  Darshit

						ltrim() :
							We can remove white space from left side of the string
								using ltrim function.

							-- Syntax :
								Select LTRIM(value) from tbl_name

							-- Example :
								Select LTRIM('   Darshit   ') --Darshit   
								Select '   Darshit   '

								-- Use with table column
								Select Registration_FirstName,
									Registration_LastName,
									LTRIM(Registration_FirstName),
									LTRIM(Registration_LastName)
								from tbl_RegistrationMaster

								Select * from tbl_RegistrationMaster
								where trim(Registration_FirstName) like 'd%'

								Update tbl_RegistrationMaster set
									Registration_FirstName = TRIM(Registration_FirstName)

								Insert into tbl_RegistrationMaster(Registration_Id,
								Registration_FirstName,Registration_LastName)
								values(6,trim('  Darshit   '),'   Kansara')

						replace() :
							When we need to replace char / word in a string
								then we can use replace function.

							-- Syntax :
								Select REPLACE(value,searching_value,replace_value)
								from tbl_Name

							-- Example :
								Select REPLACE('Hello World','H','E') -- Eello World
								Select REPLACE('Hello World', 'o','E') -- HellE WErld

								Select REPLACE('Hello World', 'O','E') -- HellE WErld

								Select REPLACE('Hello World','hello','Hi') -- Hi World

								Select REPLACE('Hello World','hello','') --  World

								-- Use with table column
								select * from tbl_RegistrationMaster

								Alter table tbl_RegistrationMaster
								Alter column Registration_MobileNo nvarchar(15)

								Update tbl_RegistrationMaster
									set Registration_MobileNo = '91 784-457-5845' 

								Select REPLACE(Registration_MobileNo,'-','') 
								from tbl_RegistrationMaster

						substring :	
							To extract a particular part of string from actual string.
							I can extract string using starting index.

							-- Syntax :
								Select SUBSTRING(value, starting_Point,No_of_count)

							-- Example :
								Select SUBSTRING('Hello World',2,3) -- ell
								Select SUBSTRING('Hello World',2,5) -- ello 

								-- Employee Id
									DateOfBirth-FirstName 2 char-Department Id

								-- Use with table column
								Select Registration_FirstName,
								SUBSTRING(Registration_FirstName,1,2)
								from tbl_RegistrationMaster

								-- Combination for
									-- RegistrationId-2 char of first name
								Select Registration_Id,Registration_FirstName,
								CONCAT_WS('-',SUBSTRING(cast(Registration_Id as nvarchar(10)),1,2),
									SUBSTRING(Registration_FirstName,1,2),SUBSTRING(Registration_LastName,1,2))
									as Employee_Id
								from tbl_RegistrationMaster

						reverse :
							Display a string into reverese order.

							-- Syntax :
								Select REVERSE(value) from tbl_Name

							-- Example :
								Select REVERSE('Hello') -- olleH
								
								Select REVERSE(Registration_FirstName)
								from tbl_RegistrationMaster

						char :
							When we want to replace special type of char in betweeen 
							string then we can use char function.

							-- Syntax :
								Select CHAR(Number)

							-- Example :
								Select CHAR(65) --
								
						lower :
							Lower return the string into lower case.

							-- Syntax :	
								Select LOWER(value) from tbl_Name

							-- Example :
								Select LOWER('aBcDEFGHi') -- abcdefghi

								Select LOWER(Registration_FirstName)
								from tbl_RegistrationMaster

						upper :
							Convert a text into upper case.

							-- Syntax :
								Select UPPER(value) from tbl_name

							-- Example :
								Select UPPER('abcDFGHi') -- ABCDFGHI

								Select UPPER(Registration_FirstName)
								from tbl_RegistrationMaster

				3. Date functions :
					Date function is used when we need to compare two dates, extract
						particular value from date like month, year, day, minute, hour
							,second, millisecond.

					-- Types of date functions :
						sysdatetime :
							Sysdatetime return a current system date and time.

							-- Syntax :
								Sysdatetime()

							-- Example :	
								Select SYSDATETIME() -- 2025-04-27 10:23:15.8409006

						sysutcdatetime :
							UTC : Coordinated Universal Time.
							It will return time and date which is same across the world.

							-- Syntax :
								sysutcdatetime()

							-- Example :
								Select SYSUTCDATETIME() -- 2025-04-27 05:07:42.4569740
								Select SYSDATETIME() -- 2025-04-27 10:37:42.4569740

						SYSDATETIMEOFFSET
							Return  a value with offset.
							It will retuen current date and time with offset value.

							-- Syntax :
								Select SYSDATETIMEOFFSET()

							-- Example :
								Select SYSDATETIMEOFFSET() -- 2025-04-27 10:47:24.9718451 +05:30
															-- 2025-04-27 10:18:03.0238420 +05:00

						CURRENT_TIMESTAMP
							Current timestamp is used to return current date and time value 
								from system.

							-- Syntax :
								current_timestamp

							-- Example :
								Select CURRENT_TIMESTAMP -- 2025-04-27 10:51:06.737
						

						getdate() :
							This function return date and time where our SQl server is installed.

							-- Syntax :
								Getdate()

							-- Example :
								Select GETDATE() -- 2025-04-27 10:55:35.667

						getutcdate() :
							GetUTCDate is common time for all the countries.
							It is not depend on any region or system.

							-- Syntax :
								GetUtcDate()

							-- Example :
								select GETUTCDATE() -- 2025-04-27 05:30:53.650

						datename() :
							Using datename function we  can extract a value of date and time.
							DateName function return value in string format.

							-- Example :
								Select DATENAME(day,getdate()) as current_day
								Select DATENAME(MONTH,GETDATE()) as current_month
								Select DATENAME(YEAR,GETDATE()) as current_year
								Select DATENAME(HOUR,GETDATE()) as current_hour
								Select DATENAME(SECOND,GETDATE()) as current_Second
								Select DATENAME(MILLISECOND,GETDATE()) as current_milisecond
								Select DATENAME(QUARTER,GETDATE()) as current_Quarter
								Select DATENAME(WEEKDAY,GETDATE()) as current_Weekday
								Select DATENAME(WEEK,GETDATE()) as current_week
								Select DATENAME(DAYOFYEAR,GETDATE()) as Day_Of_Year								

						datepart() :
							Datepart is same as datename function.
							The difference between this two is datepart return value in number
								format.

							-- Example :	
								

						isdate :
							When we want to validate that given date is valid or not.
							If date is valid then output will be 1 else 0. 
							This function return a value in bool datatype.

							-- Syntax :
								Select ISDATE(expression)

							-- Example :
								Select GETDATE()

								Select ISDATE('2025-13-27 11:38:01.520')

								Select ISDATE('2025-13-36 11:38:01.520')

						datediff :
							Date difference function return a difference of days, month or year.

							-- Syntax :
								Select DATEDIFF(interval,date1,date2)

							-- Example :
								Select GETDATE() -1 

								Select DATEDIFF(DAY,GETDATE() - 1,GETDATE())
								Select DATEDIFF(YEAR,'2025-04-26 11:42:05.840','2027-04-26 11:42:05.840')
								Select DATEDIFF(MONTH,'2025-04-26 11:42:05.840','2026-05-30 11:42:05.840')



		2. User defined function (UDF)