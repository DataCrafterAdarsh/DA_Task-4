
SELECT 
    i.InvoiceId,
    c.FirstName,
    c.LastName,
    i.InvoiceDate,
    i.Total
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId;


SELECT 
    c.CustomerId,
    c.FirstName,
    c.LastName
FROM Customer c
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE i.InvoiceId IS NULL;

SELECT 
    t.Name AS Product,
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM InvoiceLine il
JOIN Track t
ON il.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY TotalRevenue DESC;


SELECT 
    g.Name AS Category,
    SUM(il.UnitPrice * il.Quantity) AS Revenue
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name
ORDER BY Revenue DESC;


SELECT *
FROM Invoice
WHERE InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31';
