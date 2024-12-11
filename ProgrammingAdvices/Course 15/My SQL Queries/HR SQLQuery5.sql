USE HR_Database;
Select * From Employees;
Select Employees.* From Employees;
Select * From Countries;
Select * From Departments;

Select FirstName, ID, LastName From Employees;

Select DepartmentID From Employees; -- Get All Departmetn ID .
Select Distinct DepartmentID From Employees; -- Get Distinct (One Time) Departmetn ID.

Select Distinct FirstName From Employees;

Select FirstName, DepartmentID From Employees;
Select Distinct FirstName, DepartmentID From Employees;






Select * From Employees
Where (Not (Gendor = 'M' And MonthlySalary > 500));

Select * From Employees
Where ExitDate is Not Null;




Select * From Employees
	Where DepartmentID in (1, 2, 3);


Select * From Departments
	Where ID in (Select DepartmentID From Employees Where DepartmentID = 1);

Select * From Departments
	Where ID not in (Select DepartmentID From Employees Where DepartmentID = 1);




Select * From Employees
	Order By MonthlySalary asc;

Select * From Employees
	Order By FirstName Asc, MonthlySalary Desc;



Select Distinct Top 5 MonthlySalary From Employees
	Order By MonthlySalary Desc;


Select ID, FirstName, MonthlySalary From Employees
	Where MonthlySalary in 
	(
	Select Distinct Top 10 MonthlySalary From Employees Order By
	MonthlySalary Desc
	)
	Order By MonthlySalary Desc;


Select A = 1, B = 1 + 2 + 3;

Select ID, FirstName + ' ' + LastName As FullName From Employees;

Select ID, FirstName, DateOfBirth, Age = DATEDIFF(YEAR,  DateOfBirth, GETDATE()), YearlySalary = (MonthlySalary * 12)  From Employees
Where DateOfBirth in
(
	Select Distinct Top 10 DateOfBirth From Employees
	Order By DateOfBirth Desc
)
Order By Age;

Select ID, FirstName, DateOfBirth, Age = DATEDIFF(YEAR,  DateOfBirth, GETDATE()), YearlySalary = (MonthlySalary * 12)  From Employees
Where DATEDIFF(YEAR,  DateOfBirth, GETDATE()) >= 36
Order By Age;

Select Distinct Top 10 Age From
(
Select ID, FirstName, DateOfBirth, Age = DATEDIFF(YEAR,  DateOfBirth, GETDATE()), YearlySalary = (MonthlySalary * 12)  From Employees
) Test
Order By Age Asc;

Select Today = GETDATE();





Select * From Employees
Where MonthlySalary Between 400 and 500
Order By MonthlySalary ASC;


Select 
DepartmentID,
TotalCount = Count(ID),
TotalSum = Sum(MonthlySalary),
TotalAvg = Avg(MonthlySalary),
MinSalary = Min(MonthlySalary),
MaxSalary = Max(MonthlySalary)
From Employees
Group By DepartmentID
Order By TotalAvg Desc;


-- Having
Select 
DepartmentID,
TotalCount = Count(ID),
TotalSum = Sum(MonthlySalary),
TotalAvg = Avg(MonthlySalary),
MinSalary = Min(MonthlySalary),
MaxSalary = Max(MonthlySalary)
From Employees
Group By DepartmentID
Having Count(ID) > 120
Order By TotalAvg Desc;

Select * From
(
	Select 
	DepartmentID,
	TotalCount = Count(ID),
	TotalSum = Sum(MonthlySalary),
	TotalAvg = Avg(MonthlySalary),
	MinSalary = Min(MonthlySalary),
	MaxSalary = Max(MonthlySalary)
	From Employees
	Group By DepartmentID
) D1
Where TotalCount > 120;

-- Like
Select * From Employees
Where FirstName Like 'a%' or FirstName like 'b%';


--WideCards
Update Employees
	set FirstName = 'Mohammed'
Where ID = 1000;

Update Employees
	set FirstName = 'Mohammad'
Where ID = 1001;

Update Employees
	set FirstName = 'Mohamm[ae]d'
Where ID = 1002;

Select * From Employees
	Where FirstName Like 'mohamm[^a]d';

--Join
SELECT   Employees.ID, Employees.FirstName, Employees.LastName, Departments.Name, Countries.Name AS Expr1, Employees.MonthlySalary
FROM       Employees INNER JOIN
                    Departments ON Employees.DepartmentID = Departments.ID INNER JOIN
                    Countries ON Employees.CountryID = Countries.ID
					Where Countries.Name = 'UK' and Departments.Name like '%IT%';


Select Employees.ID, Employees.FirstName, Employees.LastName, Employees.MonthlySalary, Departments.Name As DeptName, Countries.Name As CountryName
	From Employees Join Departments On Employees.DepartmentID = Departments.ID Join
		 Countries On Employees.CountryID = Countries.ID
					Where Countries.Name = 'UK' and Departments.Name like '%IT%';


--View
--Create View ActiveEmployees As
Select Employees.ID, Employees.FirstName, Employees.LastName, Employees.MonthlySalary, Employees.Gendor From Employees
Where ExitDate Is Null;

Create View ResignedEmployees As
Select Employees.ID, Employees.FirstName, Employees.LastName, Employees.MonthlySalary, Employees.Gendor From Employees
Where ExitDate Is Not Null;

Select * From ActiveEmployee Order By ActiveEmployee.MonthlySalary;

-- Union
select * from ActiveEmployees
where Gendor = 'F'
union
select * from ResignedEmployees
where Gendor = 'F'
order by ID;

SELECT *
FROM (
    SELECT *
    FROM ActiveEmployees
    UNION
    SELECT *
    FROM ResignedEmployees
) AS CombinedEmployees
WHERE CombinedEmployees.gendor = 'F'
ORDER BY ID;

-- Case
Select *,
(
Case
	When Gendor = 'M' Then 'Male'
	When Gendor = 'F' Then 'Female'
End
) as Gender,
(
Case
	When Gendor = 'M' Then MonthlySalary * 1.50
	When Gendor = 'F' Then 0
End
) as Salary
From Employees;