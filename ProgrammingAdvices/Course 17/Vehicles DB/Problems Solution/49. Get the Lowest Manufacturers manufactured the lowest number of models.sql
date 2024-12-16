-- 49. Get the Lowest Manufacturers manufactured the lowest number of models

Select mk.Make, Count(*) As NumberOfModels From MakeModels m Join Makes mk
On m.MakeID = mk.MakeID
Group By mk.Make
Having Count(*) in
(
	Select Distinct Top 1 count(*) As NumberOfModels From MakeModels m Join Makes mk
	On m.MakeID = mk.MakeID
	Group By mk.Make
	Order By NumberOfModels Asc
)
Order By NumberOfModels Desc