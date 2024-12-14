Select m.Make, Count(*) As NumberOfVehicles From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Where Year Between 1950 And 2000
Group By m.Make
Order By NumberOfVehicles Desc;

Select Make, Count(*) As NumberOfVehicles From VehicleMasterDetails
Where Year Between 1950 And 2000
Group By Make
Order By NumberOfVehicles Desc;