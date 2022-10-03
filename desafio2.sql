SELECT
  COUNT(DISTINCT(c.cancao)) AS cancoes,
  COUNT(DISTINCT(a.artista)) AS artistas,
  COUNT(DISTINCT(ab.album)) AS albuns
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns ab
;