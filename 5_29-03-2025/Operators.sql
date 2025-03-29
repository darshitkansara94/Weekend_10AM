Operator :
	Operator is use to filter data based on condition.


	Types of Operator :
		Comparision Operator :
			Equal to (=) :	
				Equal to operator used to get a matching data from left hand side.
				It fllows LHS = RHS.

				-- Syntax :
					Select column1,column2...columnN from tbl_name
					Where column_name = 'value'

				-- Example :
					use Amazon_Database

					Select * from tbl_RegistrationMaster
					where Registration_FirstName =  'abc'

					Select * from tbl_RegistrationMaster
					Where Registration_MobileNo = 1234567890

			Not Equal to (!=) :
				Not equal to return data opposite to equal to operator.

				-- Syntax :
					Select column1, column2, column3...columnN
					from tbl_Name
					Where columName != 'value'

				-- Example :
					Select * from tbl_RegistrationMaster
					Where Registration_FirstName != 'abc'

					Select * from tbl_RegistrationMaster
					Where Registration_FirstName <> 'abc'

			Greater than (>) :
				Return value which is right hand side.
				Compare a value LHS > RHS.

				-- Syntax :
					Select column1,column2..columN
					from tbl_Name
					Where columnName > number

				-- Example :
					Select * from tbl_RegistrationMaster
					where Registration_Id > 2

			Greater than Equal to (>=) :
				Return a data which is greater than and equal to.

				-- Syntax :
					Select column1,colum2..columnN from tbl_Name
					Where columnName >= number

				-- Example :
					Select * from tbl_RegistrationMaster
					Where Registration_Id >= 6

					Select * from tbl_RegistrationMaster
					Where Registration_Id > 5


			Less than (<):
				return Left side value is smaller than right side value.

				-- Syntax :
					Select column1, column2...columnN
					from tbl_Name
					where columnName < number

				-- Example :
					Select * from tbl_RegistrationMaster
					where Registration_Id < 2

			Less than Equal to (<=) :
				Return equal value or less than value.

				-- Syntax :
					Select column1, column2...columnN
					from tbl_Name
					where columnName <= number

				-- Example :
					Select * from tbl_RegistrationMaster
					where Registration_Id <= 2

					Select * from tbl_RegistrationMaster
					where Registration_Id < 2
		Logical Operator :
			We need to use logical operator when we need to apply multiple condition
			or define searching criteria more accurate.

			Types of Logical Operator :
				And :
					And operator return value if all the conditions are true.
					We can create n no of conditions.

					-- Syntax :
						Select column1, column2.. columnN from tbl_Name
						Where column_name = 'value1' And column_Name = 'value2'

					-- Example :
						Select * from tbl_RegistrationMaster
						Where Registration_Id = 2 And Registration_FirstName = 'abc'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							And Registration_FirstName = 'abc'
							And Registration_LastName = 'xyz'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							And Registration_FirstName = 'abc'
							And Registration_LastName = 'xy'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							And Registration_Id = 5
				Or :
					If any condition is true then query return data.
					We can apply n number of conditions.

					-- Syntax :
						Select column1, column2.. columnN from tbl_Name
						Where column_name = 'value1' or column_Name = 'value2'

					-- Example :
						Select * from tbl_RegistrationMaster
						Where Registration_Id = 2 or Registration_FirstName = 'ab'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							or Registration_FirstName = 'abc'
							or Registration_LastName = 'xyz'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							or Registration_FirstName = 'abc'
							or Registration_LastName = 'xy'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 6
							or Registration_Id = 5

				Like
				Between
				Exists
				In
				Not

		Arithmetic Operator