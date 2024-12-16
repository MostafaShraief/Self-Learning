-- 51. Get all employees that have manager along with Manager's name.

Select es.Name As EmployeeName, manager.Name as ManagerName From Employees manager Join Employees es
On manager.EmployeeID = es.ManagerID