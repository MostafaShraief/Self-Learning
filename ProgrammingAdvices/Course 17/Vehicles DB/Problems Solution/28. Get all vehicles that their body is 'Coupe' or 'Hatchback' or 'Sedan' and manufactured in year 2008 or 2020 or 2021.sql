-- 28. Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan' and manufactured in year 2008 or 2020 or 2021

Select b.BodyName, v.* From VehicleDetails v Join Bodies b
On v.BodyID = b.BodyID
Where ((b.BodyName in ('Coupe', 'Hatchback', 'Sedan')) And (v.Year In (2008, 2020, 2021)))