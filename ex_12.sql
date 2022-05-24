SELECT il.invoiceid,
       t.name,
       art.name
FROM   invoiceline il
       LEFT JOIN track t
         ON t.trackid = il.trackId
       LEFT JOIN album a
         ON a.albumid = t.albumid
       LEFT JOIN artist art
         ON art.artistid = a.artistid
GROUP BY t.Name;
