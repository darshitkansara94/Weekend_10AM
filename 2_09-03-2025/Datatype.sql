Datatype :
	We as a developer restrict user to enter data in particular format or 
		in particular type.

	-- Types of datatypes :
		String :
			String is collection of alphabet, Special char and numbers.
			String always written in single quote('')

			Example :
				'Weltec' = Contain alphabet only
				'Weltec123' = Contain alphabet and numbers
				'Weltec@123' = Contain alphabet, number and special char

			-- Types of string :
				Varchar :
					Varchar support single type of script language.
					Assign length to the datatype is mandatory.

					-- Syntax :
						varchar(length)

					-- Example :
						varchar(10)
						varchar(max)

				nvarchar :
					Support multiple scripting language.
					For ex. If our website is in multiple language and website
						accept value of different laguage then we need to use
						nvarchar datatype.
					Datatype length is mandatory.

					-- Syntax :
						nvarchar(length)

					-- Example :
						nvarchar(10)
						nvarchar(max)

		Number :
			Number contain value between 0 to 9.

			-- Types of Number
				int :
					Int datatype contain numbers only.
					length of int datatype if less than 10 numbers.

					-- Syntax :
						int

				bigint :
					Compare to int, bigint store more numbers.

					-- Syntax :
						bigint

		Decimal :
			Decimal value contain value with point.
			Ex : 14.34
			Decimal value can be written within single quote.
			Lenght is mandatory to define.

			-- Syntax :
				decimal(total_length,value after point)

			-- Example :
				decimal(10,2) = 10001.20
				decimal(10,3) = 10001.201

				ToatlAmount = '13.52'

		Datetime :
			When we need to store date and time into database then we can use this datatype

			-- Syntax :
				datetime

		char :
			Char is used when we want to store a value with fixed length.
			We need to define a length for the char datatype.

			-- Syntax :
				char(length)

			-- Example :
				char(10)

				varchar(7) = 'abc' -- here varchar consume only three char
				char(7)		= 'abc    ' -- Here char consume all the 7 char

		varbinary :
			Store binary values.

			-- Syntax :	
				varbinary(50)

			-- Example :
				-- 123

				select cast('weltec' as varbinary(20)) -- 0x77656C746563
