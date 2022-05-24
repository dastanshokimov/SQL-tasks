SELECT DISTINCT(InvoiceId) AS "Идентификатор счет-фактуры", Count(InvoiceLineId) AS "Количество позиций"
FROM Invoiceline
	GROUP BY InvoiceID;