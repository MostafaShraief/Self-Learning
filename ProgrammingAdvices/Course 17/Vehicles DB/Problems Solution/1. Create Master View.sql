-- Subqueries Method
Create View VehicleMasterDetails As
Select v.ID, v.MakeID,
'Make' = 
(
	Select top 1 m.Make From Makes m
	Where m.MakeID = v.MakeID
),
v.ModelID,
'ModelName' = 
(
	Select top 1 m.ModelName From MakeModels m
	Where m.ModelID = v.ModelID
),
v.SubModelID,
'SubModelName' = 
(
	Select top 1 s.SubModelName From SubModels s
	Where s.SubModelID = v.SubModelID
),
v.BodyID,
'BodyName' = 
(
	Select top 1 b.BodyName From Bodies b
	Where b.BodyID = v.BodyID
),
v.Vehicle_Display_Name, v.Year, v.DriveTypeID,
'DriveTypeName' =
(
	Select top 1 d.DriveTypeName From DriveTypes d
	Where d.DriveTypeID = v.DriveTypeID
),
v.Engine, v.Engine_CC,
v.Engine_Cylinders, v.Engine_Liter_Display, v.FuelTypeID,
'FuelTypeName' = 
(
	Select top 1 f.FuelTypeName From FuelTypes f
	Where f.FuelTypeID = v.FuelTypeID
),
v.NumDoors
From VehicleDetails v

-- Join Method (Best Performance)
Create View VehicleMasterDetails As
Select v.ID, v.MakeID, m.Make, v.ModelID, md.ModelName,
v.SubModelID, sm.SubModelName, v.BodyID, b.BodyName,
v.Vehicle_Display_Name, v.Year, v.DriveTypeID, d.DriveTypeName,
v.Engine, v.Engine_CC, v.Engine_Cylinders, v.Engine_Liter_Display,
v.FuelTypeID, f.FuelTypeName, v.NumDoors
From 
VehicleDetails v Join 
Makes m
On v.MakeID = m.MakeID
Join MakeModels md 
On v.ModelID = md.ModelID
Join SubModels sm 
On v.SubModelID = sm.SubModelID
Left Join Bodies b 
On v.BodyID = b.BodyID
Left Join DriveTypes d
On v.DriveTypeID = d.DriveTypeID
Left Join FuelTypes f
On v.FuelTypeID = f.FuelTypeID