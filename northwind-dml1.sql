SELECT * FROM OrderDetails
ORDER BY Quantity DESC;

SELECT OrderDetailID, OrderID, ProductID, Quantity
FROM OrderDetails
WHERE OrderDetailID IN (401, 103)
ORDER BY Quantity DESC;

UPDATE OrderDetails
SET Quantity =
    CASE
        WHEN OrderDetailID = 401 THEN 423
        WHEN OrderDetailID = 103 THEN 288
    END
WHERE OrderDetailID IN (401, 103);

SELECT * FROM OrderDetails
ORDER BY Quantity DESC;

DELETE FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31';

SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31';

SELECT * 
FROM Orders 
WHERE OrderDate BETWEEN '1996-08-01' AND '1996-08-31';

DELETE FROM Orders
WHERE OrderDate LIKE '1996-08%';

SELECT * 
FROM Orders 
WHERE OrderDate LIKE '1996-08%';

SELECT
    EmployeeID,
    FirstName,
    LastName,
    BirthDate,
    Photo,
    Notes
FROM Employees
ORDER BY BirthDate ASC;

SELECT
    FirstName,
    LastName,
    BirthDate,
    (CAST(strftime('%Y', '2025-06-18') AS INTEGER) - CAST(strftime('%Y', BirthDate) AS INTEGER)) -
    CASE
        WHEN CAST(strftime('%m%d', '2025-06-18') AS INTEGER) < CAST(strftime('%m%d', BirthDate) AS INTEGER) THEN 1
        ELSE 0
    END AS IdadeAtual
FROM Employees
WHERE
    (CAST(strftime('%Y', '2025-06-18') AS INTEGER) - CAST(strftime('%Y', BirthDate) AS INTEGER)) -
    CASE
        WHEN CAST(strftime('%m%d', '2025-06-18') AS INTEGER) < CAST(strftime('%m%d', BirthDate) AS INTEGER) THEN 1
        ELSE 0
    END > 60;
