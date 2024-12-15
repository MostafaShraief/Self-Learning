--Problem 11: Get Total Makes that runs with GAS

-- My solution
Select Count(distinct m.Make) As TotalGasMakesVehicles From VehicleDetails v Join FuelTypes f
On v.FuelTypeID = f.FuelTypeID Join Makes m
On v.MakeID = m.MakeID
Where f.FuelTypeName = N'Gas'

-- AbuHadhoud solution:
Select Count(*) As TotalGasMakesVehicles From
(
	Select Distinct m.Make, f.FuelTypeName From VehicleDetails v Join FuelTypes f
	On v.FuelTypeID = f.FuelTypeID Join Makes m
	On v.MakeID = m.MakeID
	Where f.FuelTypeName = N'Gas'
) T