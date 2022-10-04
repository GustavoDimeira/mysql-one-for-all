SELECT
  COUNT(h.usuario) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes h

INNER JOIN SpotifyClone.usuarios u
ON u.usuario_id = h.usuario

WHERE u.usuario = 'Barbara Liskov'
GROUP BY u.usuario_id
;