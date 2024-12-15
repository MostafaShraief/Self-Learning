-- 41. Get all Makes that manufactures one of the Max 3 Engine CC

Select Distinct m.Make From VehicleDetails v Join Makes m
On v.MakeID = m.MakeID
Where v.Engine_CC in 
(
	Select Distinct Top 3 v.Engine_CC From VehicleDetails v
	Order By v.Engine_CC Desc
)
Order By Make