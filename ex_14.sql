SELECT count(pt.TrackId) AS "Количество треков", pl.Name AS "Название плейлиста" 
FROM PlaylistTrack pt
	JOIN Playlist pl
		ON pt.PlaylistId = pl.PlaylistId
	GROUP BY pl.Name;