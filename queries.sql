-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select p.ProductName
    , c.CategoryName
from Product as p
join Category as c
    on p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.Id
    , s.CompanyName
from [Order] as o
join Shipper as s
    on o.ShipVia = s.Id;
WHERE o.OrderDate BETWEEN '2012-07-04' AND '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName
    ,p.QuantityPerUnit as Quantity
FROM OrderDetail as od
JOIN Product as p
    ON od.ProductId = p.Id
WHERE od.OrderId = 10251
ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id as OrderID
    ,c.CompanyName
    , e.LastName
FROM [Order] as o
JOIN Customer as c
    ON o.CustomerId = c.Id
JOIN Employee as e
    ON o.EmployeeId = e.Id;
