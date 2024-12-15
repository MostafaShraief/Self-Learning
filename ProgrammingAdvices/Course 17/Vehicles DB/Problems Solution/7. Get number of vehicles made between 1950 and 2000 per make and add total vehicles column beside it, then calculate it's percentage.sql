-- 7. Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside it, then calculate it's percentage
Select *, 'Percentage' = (Cast(NumberOfVehicles as float) * 100) / TotalVehicles From
-- Or Select *, 'Percentage' = (NumberOfVehicles * 100.0) / TotalVehicles From
(
	Select m.Make, Count(*) As NumberOfVehicles,
	'TotalVehicles' = (Select Count(*) From VehicleDetails)
	From VehicleDetails v Join Makes m
	On v.MakeID = m.MakeID
	Where v.Year Between 1950 And 2000
	Group By m.Make
) T1
Order By NumberOfVehicles Desc