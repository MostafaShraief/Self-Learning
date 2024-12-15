-- 23. Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite'

--Select m.MakeID, m.Make, s.SubModelName From VehicleDetails v Join Makes m
--On m.MakeID = v.MakeID Join SubModels s
--On s.SubModelID = v.SubModelID
--Where s.SubModelName = 'Elite';

SELECT    distinct    VehicleDetails.MakeID, Makes.Make, SubModelName
FROM            VehicleDetails INNER JOIN
                         SubModels ON VehicleDetails.SubModelID = SubModels.SubModelID INNER JOIN
                         Makes ON VehicleDetails.MakeID = Makes.MakeID
	
	where SubModelName='Elite'