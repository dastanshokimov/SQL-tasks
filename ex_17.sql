SELECT sum(i.Total) AS "Общий объем продаж", e.FirstName || ' ' || e.LastName AS "Торговый агент"
FROM Invoice i
	JOIN Customer c 
		ON i.CustomerId = c.CustomerId
	JOIN Employee e 
		ON c.SupportRepId = e.EmployeeId
	GROUP BY c.SupportRepId;
