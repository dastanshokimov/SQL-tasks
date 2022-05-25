SELECT Count(*) AS "Количество клиентов", e.FirstName || ' ' || e.LastName AS "Полное имя продавца"
FROM Customer c
	JOIN Employee e
		ON c.SupportRepId = e.EmployeeId
	GROUP BY c.SupportRepId;
