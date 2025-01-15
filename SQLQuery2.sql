CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR("100") NOT NULL,
    Category VARCHAR("50")
    Price DECIMAL("10,2") NOT NULL,
    Stock INT DEFAULT 0
);
INSERT INTO Products (ProductName, Category, Price, Stock)
VALUES 
('Laptop', 'Electronics', 1200.50, 10),
('Smartphone', 'Electronics', 750.00, 25),
('Headphones', 'Accessories', 50.75, 100),
('Desk Chair', 'Furniture', 85.00, 15),
('Notebook', 'Stationery', 2.50, 200);
SELECT * FROM Products;
SELECT ProductName, Price 
FROM Products
WHERE Price > 100;
SELECT ProductName, Stock 
FROM Products
WHERE Stock < 20;
UPDATE Products
SET Price = 1300.00
WHERE ProductName = 'Laptop';
DELETE FROM Products
WHERE ProductName = 'Notebook';