-- Problem 8: Get Make, FuelTypeName and Number of Vehicles per FuelType per Make

--Select T.Make, f.FuelTypeName, count(*) From
--(
--	Select m.Make, v.FuelTypeID From VehicleDetails v Join Makes m
--	On v.MakeID = m.MakeID
--) T Join FuelTypes f
--On T.FuelTypeID = f.FuelTypeID
--Group By t.Make
--Order By T.Make Asc


-- My Solution Afer Getting Hint About Group By ',' (:
Select m.Make, f.FuelTypeName, Count(*) From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID Join FuelTypes f
On v.FuelTypeID = f.FuelTypeID
Group By m.Make, f.FuelTypeName
Order By m.Make, f.FuelTypeName