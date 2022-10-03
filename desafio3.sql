SELECT u.usuario AS usuario,
COUNT(h.cancao) AS qt_de_musicas_ouvidas,
ROUND(SUM(c.duracao_segundos / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios u

INNER JOIN SpotifyClone.historico_de_reproducoes h
ON h.usuario = u.usuario_id

INNER JOIN SpotifyClone.cancoes c
on c.cancao_id = h.cancao

GROUP BY usuario_id
ORDER BY u.usuario
;
