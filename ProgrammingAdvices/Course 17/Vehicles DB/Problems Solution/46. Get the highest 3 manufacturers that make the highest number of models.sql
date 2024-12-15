-- 46. Get the highest 3 manufacturers that make the highest number of models

--Select Top 3 mk.Make, Count(*) as NumberOfModels From MakeModels m Join Makes mk
--On m.MakeID = mk.MakeID
--Group By mk.Make
--Order By NumberOfModels Desc

-- Best:
Select mk.Make, Count(*) as NumberOfModels From MakeModels m Join Makes mk
On m.MakeID = mk.MakeID
Group By mk.Make
Having Count(*) in
(
	Select distinct Top 3 Count(*) From MakeModels m
	Group By m.MakeID
	Order By Count(*) Desc
)
Order By NumberOfModels Desc