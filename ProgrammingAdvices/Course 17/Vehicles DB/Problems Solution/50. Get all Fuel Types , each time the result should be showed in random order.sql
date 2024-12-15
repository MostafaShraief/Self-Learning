-- 50. Get all Fuel Types , each time the result should be showed in random order

Select FuelTypeName From FuelTypes
Order By NewID();