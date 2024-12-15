-- 24. Get all vehicles that have Engines > 3 Liters and have only 2 doors

Select * From VehicleDetails v
Where ((v.Engine_Liter_Display > 3) And (v.NumDoors = 2))
