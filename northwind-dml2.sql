UPDATE Products
SET Price = 25.00
WHERE CategoryID = 6;
SELECT * FROM Products
WHERE CategoryID = 6;
sql

INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes)
VALUES ('Ana', 'Silva', '1990-05-15', 'EmpID11.pic', 'Ana has a BA degree in French.');
SELECT * FROM Employees;
sql

SELECT *
FROM Customers
WHERE ContactName IS NULL;
sql

DELETE FROM Suppliers
WHERE City = 'Tokyo';
SELECT * FROM Suppliers;
sql

SELECT OrderID, CustomerID, OrderDate, ShipperID
FROM Orders
WHERE OrderDate > '1997-01-01'
ORDER BY OrderDate DESC;
sql

UPDATE Products
SET Unit = Unit + 10
WHERE Unit > 0;
SELECT * FROM Products;
sql

DELETE FROM Customers
WHERE Country = 'USA';
SELECT * FROM Customers;
sql

INSERT INTO CategoryProducts (CategoryName, Description)
VALUES ('Bakery', 'Baked goods like bread and cakes');
SELECT * FROM CategoryProducts;
sql

SELECT ProductName, Price, Unit
FROM Products
WHERE Price BETWEEN 10 AND 50;
sql

UPDATE Employees
SET Notes = 'He was a Senior Sales Representative.'
WHERE EmployeeID = 5;
SELECT * FROM Employees;
