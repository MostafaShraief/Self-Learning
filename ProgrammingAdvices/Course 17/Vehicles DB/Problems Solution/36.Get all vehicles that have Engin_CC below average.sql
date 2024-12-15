-- 36.Get all vehicles that have Engin_CC below average

Select * From VehicleDetails v
Where v.Engine_CC < (Select AVG(v.Engine_CC) From VehicleDetails v)