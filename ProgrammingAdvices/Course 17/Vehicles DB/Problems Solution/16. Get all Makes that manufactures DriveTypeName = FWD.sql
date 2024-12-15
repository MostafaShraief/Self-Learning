-- Problem 16: Get all Makes that manufactures DriveTypeName = FWD

Select distinct m.Make From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID Join DriveTypes d
On v.DriveTypeID = d.DriveTypeID
Where d.DriveTypeName = N'FWD'

