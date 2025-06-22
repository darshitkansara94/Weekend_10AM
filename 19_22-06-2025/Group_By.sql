Group by :
	Group by used with Aggregate functions. We can also use it without aggregate function
	Group by merge the same value column into single column.

	-- Syntax :
		Select column_name1, column_name2...column_nameN
		from tbl_name
		group by column_names

	-- Example :
		Select * from tbl_CategoryMaster order by Category_Name

		Select Category_Name from tbl_CategoryMaster
		group by Category_Name

		Select Category_Id,Category_Name from tbl_CategoryMaster
		group by Category_Id,Category_Name
		order by Category_Name

		Select Student_name, Student_Subject,Sum(Student_Marks) as TotalBySubject from tbl_Student
		Group by Student_name,Student_Subject

		Select Student_name,Sum(Student_Marks) as TotalBySubject from tbl_Student
		Group by Student_name

		Select * from tbl_Student

		--Update tbl_Student set Student_Subject = 'Science' where Student_Id = 5

		--Insert into tbl_Student(Student_Name,Student_Subject,Student_Marks)
		--values('Nikhil','Maths',52)