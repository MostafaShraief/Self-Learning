-- 29. Return found=1 if there is any vehicle made in year 1950

Select Top 1 found = 1 From VehicleDetails v
Where v.Year = 1950

Select Found = 1 
Where Exists (Select Top 1 1 From VehicleDetails v Where v.Year = 1950)

If Exists (Select Top 1 1 From VehicleDetails v Where v.Year = 1950)
Select Found = 1
Else
Select Found = 0
