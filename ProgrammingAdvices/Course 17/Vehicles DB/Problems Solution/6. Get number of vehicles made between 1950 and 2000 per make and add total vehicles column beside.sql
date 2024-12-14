-- My solution:
Select * From
(
Select m.Make, Count(*) As NumberOfVehicles From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Where Year Between 1950 And 2000
Group By m.Make
) T1 Join
(
	Select Count(*) As TotalVehicles From VehicleDetails v Join Makes m
	On v.MakeID = m.MakeID
) T2
On T1.NumberOfVehicles >= 0
Order By NumberOfVehicles Desc;

-- AbuHadhoud Solution:
Select m.Make, Count(*) As NumberOfVehicles, 
(Select Count(*) As TotalVehicles From VehicleDetails) As TotalVehicles
From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Where Year Between 1950 And 2000
Group By m.Make
Order By NumberOfVehicles Desc;
