SELECT sum(i.Total) AS "Сумма продаж за 2009 год", e.FirstName || ' ' || e.LastName AS "Продавец"
FROM Invoice i
	JOIN Customer c 
		ON i.CustomerId = c.CustomerId
	JOIN Employee e 
		ON c.SupportRepId = e.EmployeeId
	WHERE i.InvoiceDate Like '2009%'
	GROUP BY c.SupportRepId
	ORDER BY sum(i.Total) DESC
	LIMIT 1;
