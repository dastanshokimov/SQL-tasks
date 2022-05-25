SELECT tr.Name AS "Название трека", count(il.Quantity) AS "Количество экземпляров трека"
FROM Track tr
	JOIN InvoiceLine il
		ON tr.TrackId = il.TrackId
	JOIN Invoice i
		ON il.InvoiceId = i.InvoiceId
	GROUP BY tr.Name
	ORDER BY count(il.Quantity) DESC;
