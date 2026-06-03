-- Question 1
SELECT ProductID, ProductName, UnitPrice, CategoryName
From Products
Join categories on products.CategoryID = categories.CategoryID
Order By CategoryName, ProductName;

-- Question 2
SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM products
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName;

-- Question 3
SELECT ProductID, ProductName, UnitPrice, CategoryName, CompanyName
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
Order BY ProductName;

-- Question 4
SELECT ProductName, CategoryName, UnitPrice
From products
Join categories ON products.CategoryID = categories.CategoryID
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products); 
-- Question 5
SELECT OrderID, ShipName, ShipAddress, CompanyName, ShipCountry
From orders 
Join shippers ON orders.ShipVia = shippers.ShipperID
WHERE ShipCountry = "Germany";
-- Question 6
SELECT o.OrderID, OrderDate, ShipName, ShipAddress, ProductName
From orders o
Join `Order Details` ON o.OrderID = `Order Details`.OrderID
Join products ON `Order Details`.ProductID = products.ProductID
WHERE ProductName = "Sasquatch Ale";
