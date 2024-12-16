-- 53. Get all employees that have manager or does not have manager along with Manager's name, incase no manager name the same employee name as manager to himself

Select es.Name As EmployeeName, ManagerName =
Case
	When manager.Name Is Null Then es.Name
	Else manager.Name
End
From Employees manager Right Join Employees es
On manager.EmployeeID = es.ManagerID