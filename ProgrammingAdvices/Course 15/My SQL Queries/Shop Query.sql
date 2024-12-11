
--USE Shop_Database;
--EXEC sp_changedbowner 'sa';

USE Shop_Database;

Select * FROM Customers

-- Join
Select Customers.CustomerID, Customers.Name, Orders.Amount, Orders.OrderID, Orders.CustomerID
From Customers Join Orders On (Customers.CustomerID = Orders.CustomerID);


Select Customers.CustomerID, Customers.Name, Orders.Amount, Orders.OrderID, Orders.CustomerID
From Customers Inner Join Orders On (Customers.CustomerID = Orders.CustomerID);


Select Customers.CustomerID, Customers.Name, Orders.Amount, Orders.OrderID, Orders.CustomerID
From Customers Left Join Orders On (Customers.CustomerID = Orders.CustomerID);


Select Customers.CustomerID, Customers.Name, Orders.Amount, Orders.OrderID, Orders.CustomerID
From Customers Left Outer Join Orders On (Customers.CustomerID = Orders.CustomerID);

SELECT   Orders.*, Customers.*
FROM       Orders LEFT OUTER JOIN
                    Customers ON Orders.CustomerID = Customers.CustomerID

SELECT   Orders.OrderID, Orders.Amount, Orders.CustomerID, Customers.CustomerID AS Expr1, Customers.Name
FROM       Orders FULL OUTER JOIN
                    Customers ON Orders.CustomerID = Customers.CustomerID

SELECT   Orders.OrderID, Orders.Amount, Orders.CustomerID, Customers.CustomerID AS Expr1, Customers.Name
FROM       Orders RIGHT OUTER JOIN
                    Customers ON Orders.CustomerID = Customers.CustomerID

-- Exists
Select * From Customers T1
Where Exists
(
	Select Top 1 R = 'Y' From Orders T
	Where T1.CustomerID = T.CustomerID And T.Amount < 600
)

-- Union
Select * From Customers t
--Where t.CustomerID = 1	
Union 
Select * From Customers n
--where n.CustomerID = 2

