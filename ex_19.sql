SELECT sum(i.Total) AS "Сумма продаж за 2010 год", e.FirstName || ' ' || e.LastName AS "Продавец"
FROM Invoice i
	JOIN Customer c 
		ON i.CustomerId = c.CustomerId
	JOIN Employee e 
		ON c.SupportRepId = e.EmployeeId
	WHERE i.InvoiceDate like '%2010%'
	GROUP BY c.SupportRepId
	ORDER BY sum(i.Total) DESC
	LIMIT 1;
