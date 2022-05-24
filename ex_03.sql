SELECT c.FirstName || ' ' || c.LastName AS "FullName",
       i.InvoiceId,
       i.InvoiceDate,
       c.Country
FROM Customer c
		JOIN Invoice i
		ON c.CustomerId = i.CustomerId
WHERE  c.Country = 'Brazil';