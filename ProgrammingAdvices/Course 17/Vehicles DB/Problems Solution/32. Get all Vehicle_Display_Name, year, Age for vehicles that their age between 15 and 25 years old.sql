-- 32. Get all Vehicle_Display_Name, year, Age for vehicles that their age between 15 and 25 years old

Select v.Vehicle_Display_Name, v.Year, Age =
(YEAR(GETDATE()) - v.Year) 
From VehicleDetails v
Where (YEAR(GETDATE()) - v.Year)  between 15 And 25
Order By Age Desc

-- Another way:
select * from
( 
	Select VehicleDetails.Vehicle_Display_Name, Year, Age= YEAR(GetDate()) - VehicleDetails.year
	from VehicleDetails
) R1
Where Age between 15 and 25