SELECT substr(i.InvoiceDate, 1, 4) AS "Year", SUM(i.Total) AS "Total Sales"
FROM Invoice i 
WHERE i.InvoiceDate like '%2009%'
UNION
SELECT substr(i.InvoiceDate, 1, 4) AS "Year", SUM(i.Total) AS "Total Sales"
FROM Invoice i 
WHERE i.InvoiceDate like '%2011%';