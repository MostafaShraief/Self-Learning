-- 30. Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of doors by words, and if door is null display 'Not Set'

Select distinct NumDoors From VehicleDetails
Order by NumDoors

Select v.Vehicle_Display_Name, v.NumDoors,
NumberOfDoors = 
Case
	When v.NumDoors is null Then 'Not Set'
	When v.NumDoors = 0 Then 'Zero'
	When v.NumDoors = 1 Then 'One'
	When v.NumDoors = 2 Then 'Two'
	When v.NumDoors = 3 Then 'Three'
	When v.NumDoors = 4 Then 'Four'
	When v.NumDoors = 5 Then 'Five'
	When v.NumDoors = 6 Then 'Six'
	When v.NumDoors = 8 Then 'Eight'
	Else 'Unknown'
End
From VehicleDetails v

