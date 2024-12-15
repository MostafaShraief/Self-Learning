-- 34. Get all vehicles that have the minimum Engine_CC

Select .Vehicle_Display_Name From VehicleDetails v
Where v.Engine_CC = (Select top 1 Min(v.Engine_CC) From VehicleDetails v)