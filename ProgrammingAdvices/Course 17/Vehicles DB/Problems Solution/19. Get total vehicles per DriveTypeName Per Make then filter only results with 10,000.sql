-- Problem 19: Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000

Select m.Make, d.DriveTypeName, Count(*) As Total From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID Join DriveTypes d
On v.DriveTypeID = d.DriveTypeID
Group By m.Make, d.DriveTypeName
Having Count(*) > 10000
Order By m.Make Asc, d.DriveTypeName Desc

