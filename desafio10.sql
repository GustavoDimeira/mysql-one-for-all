SELECT
  c.cancao AS nome,
  COUNT(u.plano) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes h

INNER JOIN SpotifyClone.usuarios u
ON u.usuario_id = h.usuario

INNER JOIN SpotifyClone.cancoes c
ON h.cancao = c.cancao_id

WHERE u.plano = 1 OR u.plano = 3

GROUP BY c.cancao
ORDER BY nome
;