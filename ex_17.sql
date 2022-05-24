SELECT sum(i.Total) AS "Общий объем продаж", e.FirstName || ' ' || e.LastName AS "Торговый агент"
FROM Invoice i
	JOIN Customer c 
		ON i.CustomerId = c.CustomerId
	JOIN Employee e 
		ON c.CustomerId = e.EmployeeId
	WHERE e.Title like '%agent%'
	GROUP BY EmployeeId;