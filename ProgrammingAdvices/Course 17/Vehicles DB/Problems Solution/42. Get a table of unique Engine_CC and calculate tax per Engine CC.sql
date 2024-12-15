-- 42. Get a table of unique Engine_CC and calculate tax per Engine CC

-- Get a table of unique Engine_CC and calculate tax per Engine CC as follows:
	-- 0 to 1000    Tax = 100
	-- 1001 to 2000 Tax = 200
	-- 2001 to 4000 Tax = 300
	-- 4001 to 6000 Tax = 400
	-- 6001 to 8000 Tax = 500
	-- Above 8000   Tax = 600
	-- Otherwise    Tax = 0

Select Distinct v.Engine_CC, Tax =
Case
	When (v.Engine_CC Between 0 And 1000) Then 100
	When (v.Engine_CC Between 1000 And 2000) Then 200
	When (v.Engine_CC Between 2000 And 4000) Then 300
	When (v.Engine_CC Between 4000 And 6000) Then 400
	When (v.Engine_CC Between 6000 And 8000) Then 500
	When (v.Engine_CC > 8000) Then 600
	Else 0
End
From VehicleDetails v
Order By v.Engine_CC