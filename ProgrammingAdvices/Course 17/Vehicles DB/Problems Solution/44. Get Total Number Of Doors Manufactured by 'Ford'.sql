-- 44. Get Total Number Of Doors Manufactured by 'Ford'

Select m.Make, Sum(v.NumDoors) As TotalNumberOfDoors From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Where m.Make = 'Ford'
Group By m.Make