Triggers :
	Trigger is a block of code which perform some events.
	Event perform on table.
	Event types are Insert, Update and Delete.
	We can execute trigger through table only.
	We will define trigger with the prefix 'tr_'.
	We can not define parameter into trigger.

	-- Two types of triggers
		1. For :
			-- Syntax :
				Create trigger tr_Name
				On tbl_name -- Table on which we need to perform event
				For insert / update / delete
				As
				Begin
					-- SQL statement
				End

				-- modify trigger
					Alter trigger tr_Name
					On tbl_name -- Table on which we need to perform event
					For insert / update / delete
					As
					Begin
						-- SQL statement
					End
		2. After :
			-- Syntax :
				Create trigger tr_name
				On tbl_name
				After Insert/ Update / Delete
				As
				Begin
					-- SQL statement
				End