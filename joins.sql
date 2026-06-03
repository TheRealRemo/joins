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
JOIN suppliers ON products.SupplierID = suppliers.SupplierID; 