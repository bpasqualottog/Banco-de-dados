-- Chaves primárias
ALTER TABLE Customers
ADD PRIMARY KEY (CustomerID);

ALTER TABLE Orders
ADD PRIMARY KEY (OrderID);

ALTER TABLE Employees
ADD PRIMARY KEY (EmployeeID);

ALTER TABLE Shippers
ADD PRIMARY KEY (ShipperID);

ALTER TABLE OrderDetails
ADD PRIMARY KEY (OrderDetailID);

ALTER TABLE Products
ADD PRIMARY KEY (ProductID);

ALTER TABLE Categories
ADD PRIMARY KEY (CategoryID);

ALTER TABLE Suppliers
ADD PRIMARY KEY (SupplierID);

-- Chaves estrangeiras
ALTER TABLE Orders
ADD FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Orders
ADD FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE Orders
ADD FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID);

ALTER TABLE OrderDetails
ADD FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);

ALTER TABLE OrderDetails
ADD FOREIGN KEY (ProductID) REFERENCES Products(ProductID);

ALTER TABLE Products
ADD FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID);

ALTER TABLE Products
ADD FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
