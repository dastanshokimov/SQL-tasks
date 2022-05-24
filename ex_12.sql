SELECT i.InvoiceId AS "Идентификатор счет-фактуры", t.Name AS "Название трека", t.Composer AS "Имя исполнителя" 
FROM InvoiceLine i
	JOIN Track t 
	ON i.TrackId = t.TrackId;