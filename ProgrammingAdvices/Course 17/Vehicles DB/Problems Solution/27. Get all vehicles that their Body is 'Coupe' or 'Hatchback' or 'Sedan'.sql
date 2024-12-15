-- 27. Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'

Select b.BodyName, v.* From VehicleDetails v Join Bodies b
On v.BodyID = b.BodyID
Where b.BodyName in ('Coupe', 'Hatchback', 'Sedan')