-- 26. Get all vehicles that their body is 'Sport Utility' and Year > 2020

-- this script will retrieve body id twice!
Select * From VehicleDetails v Join Bodies b -- Select all!
On v.BodyID = b.BodyID
Where ((b.BodyName = 'Sport Utility') And (v.Year > 2020))

SELECT      BodyName,  VehicleDetails.* -- You can solve this mistake like this (:
FROM            VehicleDetails INNER JOIN
                         Bodies ON VehicleDetails.BodyID = Bodies.BodyID
Where BodyName='Sport Utility' and Year > 2020