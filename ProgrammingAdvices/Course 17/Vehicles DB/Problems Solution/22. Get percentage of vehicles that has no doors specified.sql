-- 22. Get percentage of vehicles that has no doors specified

-- Good:
Select 'perc' = 
cast((Select count(*) From VehicleDetails v Where NumDoors is null) as float) *
100 / cast(count(*) as float) From VehicleDetails v

-- Best:
select 
	(
	
	
		CAST(	(select count(*) as TotalWithNoSpecifiedDoors from VehicleDetails
		where NumDoors is Null) as float)


		/
	
	
		Cast( (select count(*) from VehicleDetails as TotalVehicles) as float)
	
	
	) as PercOfNoSpecifiedDoors