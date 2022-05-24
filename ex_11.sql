SELECT i.InvoiceId AS "Идентификатор счет-фактуры", t.Name AS "Название трека" 
FROM InvoiceLine i
	JOIN Track t 
	ON i.TrackId = t.TrackId
	GROUP BY t.Name;
