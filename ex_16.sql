SELECT InvoiceId AS "Идентификатор счет-фактуры", count(Quantity) AS "Количество позиций в счет-фактуре"
FROM InvoiceLine
GROUP BY InvoiceId; 