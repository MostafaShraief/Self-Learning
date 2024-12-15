-- Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD

Select count(distinct m.Make) From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID Join DriveTypes d
On v.DriveTypeID = d.DriveTypeID
Where d.DriveTypeName = N'FWD'