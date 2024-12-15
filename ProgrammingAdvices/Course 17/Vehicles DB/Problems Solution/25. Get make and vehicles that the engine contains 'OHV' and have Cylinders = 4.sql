-- 25. Get make and vehicles that the engine contains 'OHV' and have Cylinders = 4

-- Forgot make column (:
Select * From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Where ((v.Engine_Cylinders = 4) And (v.Engine like '%OHV%'));

-- Correct:
SELECT         Makes.Make, VehicleDetails.*
FROM            VehicleDetails INNER JOIN
                         Makes ON VehicleDetails.MakeID = Makes.MakeID
WHERE        (VehicleDetails.Engine LIKE '%OHV%') AND (VehicleDetails.Engine_Cylinders = 4)