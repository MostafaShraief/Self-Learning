-- 45. Get Number of Models Per Make

Select mk.Make, Count(*) As NumberOfModels From MakeModels m Join Makes mk
On m.MakeID = mk.MakeID
Group By mk.Make
Order By NumberOfModels Desc