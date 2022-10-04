SELECT
  c.cancao AS cancao,
  COUNT(h.data_reproducao) AS reproducoes
  FROM SpotifyClone.cancoes c

  INNER JOIN SpotifyClone.historico_de_reproducoes h
  ON h.cancao = c.cancao_id

  GROUP BY cancao_id
  ORDER BY reproducoes DESC, c.cancao ASC

  LIMIT 2
;