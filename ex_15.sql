SELECT tr.Name AS "Название трека", al.Title AS "Нзавание альбома", me.Name AS "Медиа-тип", ge.Name AS "Жанр трека"  
FROM Track tr
	LEFT JOIN Album al
		ON tr.AlbumId = al.AlbumId
	LEFT JOIN MediaType me
		ON tr.MediaTypeId = me.MediaTypeId
	LEFT JOIN Genre ge
		ON tr.GenreId = ge.GenreId;