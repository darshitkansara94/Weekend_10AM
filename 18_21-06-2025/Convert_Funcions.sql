Convert functions :
	Convert function is used to convert value from one datatype to
		another datatype.
	There are some limitation too while converting data.
	There are two types of convert function
		1. Convert
			Convert function is used to convert onr datatype to another.
			It allows to format date into custom format.

			-- Syntax :
				Convert(datatype,value,format_type)

			-- Example :
				-- Convert int to string

				Select 15 as number
				Select CONVERT(varchar(20),15) as String_Number

				use Amazon_Database
				select * from tbl_SubCategory

				Select Subcategory_Id,Subcategory_Name, 
				Subcategry_Price,
				CONVERT(int,Subcategry_Price) as Price
				from tbl_SubCategory

				-- Date conversion
				Select GETDATE()

				Select CONVERT(nvarchar(20),GETDATE(),102) as getdate_string

		2. Cast :
			Cast function is use to convert value from one datatype to
				another datatype.
			This function only convert value. It is not capable to format
				any value.

			-- Syntax :
				Cast(value as datatype)

			-- Example 
				Select '125.25' as numbers

				Select CAST(125.25 as int) as intType

				Select CAST(125 as decimal(18,2)) as DecimalType

				Select * from tbl_SubCategory

				Select Subcategory_Name,
				Subcategry_Price,
				CAST(Subcategry_Price as int) as price
				from tbl_SubCategory


Select GETDATE()