-- DATA MANIPULATION LANGUAGE (comandos INSERT, UPDATE, DELETE, SELECT)

-- Consulta detalhes de pedidos filtrados por qtde decrescente
SELECT * FROM OrderDetails
ORDER BY Quantity DESC;

-- Consulta dados de pedidos com mais qtde em OrderDetails
SELECT OrderDetailID, OrderID, ProductID, Quantity
FROM OrderDetails
WHERE OrderDetailID IN (401, 103)
ORDER BY Quantity DESC;

-- Atualiza qtde de produtos de IDs 55 e 35 na tab detalhes de pedidos
UPDATE OrderDetails
SET Quantity =
    CASE 
        WHEN ProductID = 55 THEN 423
        WHEN ProductID = 35 THEN 288
    END
WHERE ProductID IN (55, 35);
-- Confere a atualização da coluna quantidade
SELECT * FROM OrderDetails
ORDER BY Quantity DESC;

-- Remove pedidos feitos em jan/1997
DELETE FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31';
-- Confere se ainda há pedidos de jan/1997
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31';

-- Consulta pedidos feitos em ago/1996
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-08-01' AND '1996-08-31';

-- Remove pedidos feitos em ago/1996
DELETE FROM Orders
WHERE OrderDate BETWEEN '1996-08-01' AND '1996-08-31';
-- Confere se ainda há pedidos de ago/1996
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-08-01' AND '1996-08-31';

-- Consulta empregados por data de nascimento na tab Employees
SELECT
    EmployeeID,
    FirstName,
    LastName,
    BirthDate,
    Photo,
    Notes
FROM
    Employees
ORDER BY
    BirthDate ASC; -- ASC é opcional, pois ascendente é a ordem padrão 

-- Consulta funcionários acima de 60 anos
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
