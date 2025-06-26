-- 3. Consulta dados da tabela Customers
SELECT * FROM Customers;


-- 4. Atualiza coluna de endereços ma tabela Customers
UPDATE Customers
SET Address = 'Holz Str. 82'
WHERE CostumerID = 1;

-- Consulta a atualização na tabela 
SELECT * FROM Customers;


-- 5. Insere nova categoria de produto na tabela CategoryProducts
INSERT INTO CategoryProducts (CategoryID, CategoryName, Description) VALUES
(10, 'Veganos', 'Produtos alimentícios que não contêm ingredientes de origem animal');

-- Consulta tabela de categorias de produtos
SELECT * FROM CategoryProducts;


-- 6. Consulta produtos veganos na tabela Products
SELECT * FROM Products
WHERE CategoryID = 10;


-- 7. Atualiza coluna de preços na tabela Products
UPDATE Products
SET Price = Products.Price * 0.5 -- Aplica desconto de 50%
FROM CategoryProducts
WHERE Products. CategoryID = CategoryProducts.CategoryID
  AND CategoryProducts.CategoryID = 10
  AND CategoryProducts.CategoryName = 'Veganos';

-- Consulta atualização de preços na tabela 
SELECT * FROM Products
WHERE CategoryID = 10;


-- 8.Consulta clientes da Polônia na tabela  
SELECT * FROM Customers
WHERE Country = 'Poland';


-- 9. Remove clientes da Polônia da tabela
DELETE FROM Customers
WHERE Country = 'Poland';

-- Consulta para confirmar exclusão
SELECT * from Customers;
where Country = 'Poland';


