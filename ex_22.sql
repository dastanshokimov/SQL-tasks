SELECT BillingCountry AS "Название страны", SUM(Total) AS "Сумма счет-фактур"
FROM Invoice
GROUP BY BillingCountry
ORDER BY SUM(Total) DESC;
