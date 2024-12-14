Select m.Make, Count(*) As NumberOfVehicles From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Where (Year Between 1950 And 2000)
Group By m.Make
Having Count(*) > 12000
Order By NumberOfVehicles Desc;

-- Without Having:
Select * From 
(
	Select m.Make, Count(*) As NumberOfVehicles From VehicleDetails v Join Makes m
	On v.MakeID = m.MakeID
	Where (Year Between 1950 And 2000)
	Group By m.Make
) T1
Where NumberOfVehicles > 12000
Order By NumberOfVehicles Desc;