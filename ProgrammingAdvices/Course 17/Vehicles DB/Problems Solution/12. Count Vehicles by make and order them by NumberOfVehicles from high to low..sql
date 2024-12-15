-- 12. Count Vehicles by make and order them by NumberOfVehicles from high to low.

Select m.Make, Count(*) As NumberOfVehicles From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Group By m.Make
Order By NumberOfVehicles Desc;