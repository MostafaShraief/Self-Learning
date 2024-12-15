-- 35. Get all vehicles that have the Maximum Engine_CC

Select * From VehicleDetails v
Where v.Engine_CC = (Select top 1 Max(v.Engine_CC) From VehicleDetails v)