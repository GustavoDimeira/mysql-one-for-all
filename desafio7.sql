SELECT
  a.artista AS artista,
  ab.album AS album,
  COUNT(s.artista) AS seguidores
FROM SpotifyClone.artistas a

INNER JOIN SpotifyClone.albuns ab
ON a.artista_id = ab.artista

INNER JOIN SpotifyClone.seguindo_artistas s
ON a.artista_id = s.artista

GROUP BY a.artista, ab.album
ORDER BY COUNT(s.artista) DESC, a.artista ASC, album
;