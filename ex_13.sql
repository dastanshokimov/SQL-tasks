SELECT count(*) AS "Количество позиций счет-фактур", inv.BillingCountry AS "Название страны"
FROM InvoiceLine il
JOIN Invoice inv 
	ON il.InvoiceId = inv.InvoiceId
	GROUP BY BillingCountry;
