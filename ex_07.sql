SELECT i.Total, 
	   c.FirstName || ' ' || c.LastName AS "Customer", 
	   i.BillingCountry, 
	   e.FirstName || ' ' || e.LastName AS "Sales Agent" 
FROM Invoice i
	LEFT JOIN Customer c 
		ON i.CustomerId = c.CustomerId
	LEFT JOIN Employee e 
		ON e.EmployeeId = c.SupportRepId
	WHERE e.Title like '%agent%';