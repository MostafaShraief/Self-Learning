-- 52. Get all employees that have manager or does not have manager along with Manager's name, incase no manager name show null

Select es.Name As EmployeeName, manager.Name as ManagerName From Employees manager Right Join Employees es
On manager.EmployeeID = es.ManagerID