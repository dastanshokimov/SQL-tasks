SELECT sum(i.Total) AS "Общий объем продаж", e.FirstName  ' '  e.LastName AS "Торговый агент"
FROM Invoice i
    JOIN Employee e 
        ON c.SupportRepId = e.EmployeeId
    JOIN Customer c 
        ON i.CustomerId = c.CustomerId
    WHERE e.Title like '%general%' or e.Title like '%agent%'
    GROUP BY e.EmployeeId;
