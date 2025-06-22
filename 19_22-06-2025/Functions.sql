Functions :
	Function is block of code which perform some operation.
	We can not directly use function into UI or frontend.
	We can use that using SP.

	Types of functions :
		1. Scalar valued function
			Scalar value function return a single value.
			It can be string, int, double, decimal , bit, etc

			-- Syntax :
				Create function fn_name
				(
					-- Parameter
				)
				Returns datatype
				As
				Begin
					Return code
				End

			-- Example :
				Alter function fn_ConcatString
				(
					@Id int,
					@FirstName nvarchar(50),
					@LastName nvarchar(50)
					
				)
				Returns nvarchar(100)
				As
				Begin
					Return (Cast(@Id as nvarchar(10)) + ' ' + @FirstName + ' ' + @LastName)
				End

				-- Execute function
				Select dbo.fn_ConcatString(1,'Darshit','Kansara') as fullname -- Darshit Kansara

				

		2. Table valued function :
			Table value function return table as output.
			It can combine with another table too.

			-- Syntax :
				Create function fn_Name
				(
					-- Parameter
				)
				Returns Table
				As
					Return statement

				-- How to fetch/ exeucte table value function
					Select * from dbo.fn_name()