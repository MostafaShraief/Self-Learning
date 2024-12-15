-- Problem 21: Get Total Vehicles that number of doors is not specified

Select Count(*) As Total From VehicleDetails v
Where v.NumDoors Is Null