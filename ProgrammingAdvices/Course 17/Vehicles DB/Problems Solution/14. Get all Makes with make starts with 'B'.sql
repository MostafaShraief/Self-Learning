-- Problem 14: Get all Makes with make starts with 'B'

-- Wrong Solution:
Select distinct m.Make From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Where m.Make like 'B%'

-- Right Solution:
Select m.Make From Makes m
Where m.Make like 'B%'
