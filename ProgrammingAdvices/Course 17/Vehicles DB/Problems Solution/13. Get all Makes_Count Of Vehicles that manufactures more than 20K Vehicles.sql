-- Problem 13: Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles

Select m.Make, Count(*) As NumberOfVehicles From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Group By m.Make
Having Count(*) > 20000
Order By NumberOfVehicles Desc