-- 48. Get the highest Manufacturers manufactured the highest number of models

-- This solution can not solve 'remember that they could be more than one manufacturer have the same high number of models' issue
--Select top 1 m.Make From Makes m Join MakeModels s
--On m.MakeID = s.MakeID
--Group By m.Make
--Order By Count(*) Desc;

-- This Query have the same issue like above query
--Select Make From
--(
--	Select Distinct Top 1 mk.Make, Count(*) As NumberOfModels From Makes mk Join MakeModels m
--	On mk.MakeID = m.MakeID
--	Group By mk.Make
--	Order By NumberOfModels Desc
--) T1

Select mk.Make, Count(*) As NumberOfModels From MakeModels m Join Makes mk
On m.MakeID = mk.MakeID
Group By mk.Make
Having Count(*) in
(
	Select Distinct Top 1 count(*) As NumberOfModels From MakeModels m Join Makes mk
	On m.MakeID = mk.MakeID
	Group By mk.Make
	Order By NumberOfModels Desc
)
Order By NumberOfModels Desc

-- AboHadhood solution:
SELECT        Makes.Make, COUNT(*) AS NumberOfModels
		FROM            Makes INNER JOIN
								 MakeModels ON Makes.MakeID = MakeModels.MakeID
		GROUP BY Makes.Make

		having COUNT(*) = (

										select Max(NumberOfModels) as MaxNumberOfModels
										from
										(

												SELECT      MakeID, COUNT(*) AS NumberOfModels
												FROM       
																		 MakeModels
												GROUP BY MakeID
												
										) R1

							)