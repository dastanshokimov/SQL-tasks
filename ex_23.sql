SELECT tr.Name AS "Название трека", count(i.Quantity) AS "Количество экземпляров трека"
FROM Track tr
	LEFT JOIN InvoiceLine i
		ON tr.TrackId = i.TrackId
	GROUP BY tr.Name
	ORDER BY count(i.Quantity) DESC;