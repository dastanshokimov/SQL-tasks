SELECT i.InvoiceId, e.FirstName || ' ' || e.LastName AS "Employee"
FROM Invoice i
JOIN Customer c ON  i.CustomerId = c.CustomerId
JOIN Employee e ON c.CustomerId = e.EmployeeId
WHERE e.Title like '%agent%';