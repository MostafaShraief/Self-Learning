-- Problem 9: Get all vehicles that runs with GAS

Select v.*, f.FuelTypeName From VehicleDetails v Join FuelTypes f
On v.FuelTypeID = f.FuelTypeID
Where f.FuelTypeName = N'Gas'

-- Note That 'N' character near 'Gas' Word in 'Where' clause is
-- refer to unicode characters (Arabic, English, Chineese, etc...)