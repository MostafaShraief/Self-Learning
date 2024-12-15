-- Problem 18: Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Des

Select m.Make, d.DriveTypeName, Count(*) As Total From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID Join DriveTypes d
On v.DriveTypeID = d.DriveTypeID
Group By m.Make, d.DriveTypeName
Order By m.Make Asc, d.DriveTypeName Desc

