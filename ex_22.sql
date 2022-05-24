SELECT BillingCountry AS "Название страны", SUM(Total) AS "Сумма счет-фактур"
FROM Invoice
WHERE  BillingCountry <> 'NULL'
GROUP BY BillingCountry
ORDER BY SUM(Total) DESC;
