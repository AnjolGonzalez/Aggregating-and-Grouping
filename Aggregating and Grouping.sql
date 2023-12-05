USE northwind;

-- 1. How many uppliers are there?
SELECT COUNT(*) AS Total_Suppliers
 FROM Suppliers;

-- 2. What is the sum of all employees' salaries?
SELECT ROUND(SUM(Salary), 2) AS Total_Salary 
FROM Employees;

-- 3. What is the price of the cheapest item that Northwind sells?
SELECT CONCAT("$", ROUND(MIN(UnitPrice), 2)) AS Cheapest_Price 
FROM Products;

-- 4. What is the average price of items that Northwind sells?
SELECT CONCAT("$", ROUND(AVG(UnitPrice), 2)) AS Average_Price 
FROM Products;

-- 5. What is the price of the most expensive item that Northwind sells?
SELECT CONCAT("$", ROUND(MAX(UnitPrice), 2)) AS Expensive_Price 
FROM Products;

-- 6. What is the supplier ID of each supplier and the number of items they supply?
SELECT SupplierID, COUNT(ProductID) 
FROM Products 
GROUP BY SupplierID;

-- 7. What is the category ID of each category and the average price of each item in the category?
SELECT CategoryID, AVG(UnitPrice) 
FROM Products 
GROUP BY CategoryID;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply?
SELECT SupplierID, COUNT(UnitsInStock) AS Stock_Count 
FROM Products 
GROUP BY SupplierID 
ORDER BY Stock_Count;

-- 9. List the product id, product name and inventory value(calculated by multiplying unit price by the number of units in hand)
-- Sort results in descending order by value. If two or more have the same value, order by product name.
SELECT ProductID, ProductName, 
ROUND((UnitsInStock * UnitPrice), 2) AS Inventory_Value,
CONCAT("$", ROUND((UnitsInStock * UnitPrice), 2)) AS Inventory_Value_With_Currency
FROM Products 
ORDER BY Inventory_Value DESC, ProductName;




