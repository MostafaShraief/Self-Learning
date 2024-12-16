-- 54. Get All Employees managed by 'Mohammed'

Select e.Name As EmployeeName, m.Name As ManagerName From Employees m Join Employees e
On m.EmployeeID = e.ManagerID
Where m.Name = 'Mohammed'