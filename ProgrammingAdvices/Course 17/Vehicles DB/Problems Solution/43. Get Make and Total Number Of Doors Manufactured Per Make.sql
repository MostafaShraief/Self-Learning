--43. Get Make and Total Number Of Doors Manufactured Per Make

Select m.Make, Sum(v.NumDoors) As TotalNumberOfDoors From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Group By m.Make
Order By TotalNumberOfDoors Desc