Order By :
	When we want to sort a data into ascending or descending order than we can use
		order by clause.
	To sort a data into ascendnig order we need to mention 'ASC'.
	To sort a data into descending order we need to mention 'DESC'
	By default our order by type is ascending order.
	We can apply it on any datatype of column.
	We can apply it on multiple columns as well.

	-- Syntax :
		Select column1,column2,column3...columnN
			from tbl_name
		order by column_name asc/desc

		-- With multiple column
		Select column1,column2...columnN
			from tbl_name
		order by column1,column2..columnN asc/desc

	-- Example :
		Select * from tbl_registrationMaster

		Select * from tbl_registrationMaster
			order by Registration_Firstname

		Select * from tbl_registrationMaster
			order by Registration_Firstname desc

		Select * from tbl_registrationMaster
		where registration_Id  in (3,1,4)
			order by Registration_Firstname