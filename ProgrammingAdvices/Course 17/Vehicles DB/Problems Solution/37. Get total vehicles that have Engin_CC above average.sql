-- 37. Get total vehicles that have Engin_CC above average

Select Count(v.Engine_CC) From VehicleDetails v
Where v.Engine_CC > (Select AVG(v.Engine_CC) From VehicleDetails v)

-- Another Way:
Select Count(*) From
(
Select * From VehicleDetails v
Where v.Engine_CC > (Select AVG(v.Engine_CC) From VehicleDetails v)
) t1