SELECT t.Name, count(il.Quantity)
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.TrackId
JOIN Invoice iv ON il.InvoiceId = iv.InvoiceId
GROUP BY t.Name
ORDER BY count(il.Quantity) DESC; 
