-- 47. Get the highest number of models manufactured

--Select m.ModelName, Count(*) As NumberOfModelsManufactured From SubModels s Join MakeModels m
--On s.ModelID = m.ModelID
--Group By m.ModelName
--Order By NumberOfModelsManufactured Desc

select Max(NumberOfModels) as MaxNumberOfModels
from
(

		SELECT        Makes.Make, COUNT(*) AS NumberOfModels
		FROM            Makes INNER JOIN
								 MakeModels ON Makes.MakeID = MakeModels.MakeID
		GROUP BY Makes.Make
		
) R1

-- Another Way:
		SELECT        top 1 COUNT(*) AS NumberOfModels
		FROM            Makes INNER JOIN
								 MakeModels ON Makes.MakeID = MakeModels.MakeID
		GROUP BY Makes.Make
		Order By Count(*) Desc