USE northwind;

-- 1. How many uppliers are there?
SELECT * FROM Suppliers;

-- 2. What is the sum of all employees' salaries?
SELECT SUM(Salary) FROM Employees;

-- 3. What is the price of the cheapest item that Northwind sells?
SELECT MIN(UnitPrice) FROM Products;

-- 4. What is the average price of items that Northwind sells?
SELECT AVG(UnitPrice) FROM Products;

-- 5. What is the price of the most expensive item that Northwind sells?
SELECT MAX(UnitPrice) FROM Products;

-- 6. What is the supplier ID of each supplier and the number of items they supply?
SELECT SupplierID, COUNT(ProductID) FROM Products GROUP BY SupplierID;

-- 7. What is the category ID of each category and the average price of each item in the category?
SELECT CategoryID, AVG(UnitPrice) FROM Products GROUP BY CategoryID;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply?
SELECT SupplierID, COUNT(UnitsInStock) AS Stock_Count FROM Products GROUP BY SupplierID ORDER BY Stock_Count;

-- 9. List the product id, product name and inventory value(calculated by multiplying unit price by the number of units in hand)
-- Sort results in descending order by value. If two or more have the same value, order by product name.
SELECT ProductID, ProductName, UnitsInStock * UnitPrice AS Inventory_Value FROM Products ORDER BY Inventory_Value DESC, ProductName;
