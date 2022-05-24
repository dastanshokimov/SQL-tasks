SELECT Count(*) AS "Количество клиентов", e.FirstName || ' ' || e.LastName AS "Полное имя продавца"
FROM Employee e
	JOIN Customer c
		ON c.SupportRepId = e.EmployeeId
	WHERE e.Title like '%agent%'	
	GROUP BY e.EmployeeId;