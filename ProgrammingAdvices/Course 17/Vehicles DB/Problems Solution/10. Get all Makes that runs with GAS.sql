-- Problem 10: Get all Makes that runs with GAS

Select Distinct m.Make, f.FuelTypeName From VehicleDetails v Join FuelTypes f
On v.FuelTypeID = f.FuelTypeID Join Makes m
On v.MakeID = m.MakeID
Where f.FuelTypeName = N'Gas'