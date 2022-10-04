SELECT
  a.artista AS artista,
  ab.album AS album
FROM SpotifyClone.artistas a

INNER JOIN SpotifyClone.albuns ab
ON ab.artista = a.artista_id

WHERE a.artista = 'Elis Regina'
;