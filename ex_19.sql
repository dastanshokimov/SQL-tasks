SELECT sum(i.Total) AS "Сумма продаж за 2009 год", e.FirstName || ' ' || e.LastName AS "Продавец"
FROM Invoice i
	JOIN Customer c 
		ON i.CustomerId = c.CustomerId
	JOIN Employee e 
		ON c.CustomerId = e.EmployeeId
	WHERE e.Title like '%agent%' AND i.InvoiceDate like '%2010%'
	GROUP BY EmployeeId;