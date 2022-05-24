SELECT Count(*) AS "Количество позиций счет-фактур", i.billingcountry AS "Название страны"
FROM InvoiceLine il
	JOIN invoice i
	ON il.invoiceId = i.invoiceId
GROUP  BY i.billingcountry;
