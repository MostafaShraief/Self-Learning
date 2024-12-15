-- 31. Get all Vehicle_Display_Name, year and add extra column to calculate the age of the car then sort the results by age desc.

Select v.Vehicle_Display_Name, v.Year, Age =
(YEAR(GETDATE()) - v.Year)
From VehicleDetails v
Order By Age Desc