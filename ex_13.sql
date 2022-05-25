SELECT count(InvoiceId) AS "Количество позиций счет-фактур", BillingCountry AS "Название страны"
FROM Invoice 
	GROUP BY BillingCountry;
