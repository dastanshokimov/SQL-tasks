SELECT count(InvoiceId) AS "Количество позиций счет-фактур", BillingCountry AS "Название страны"
FROM Invoice
	WHERE NOT BillingCountry = 'NULL' 
	GROUP BY BillingCountry;
