SELECT u.usuario AS usuario,
  IF(MAX(YEAR(h.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
  FROM SpotifyClone.usuarios u

  INNER JOIN SpotifyClone.historico_de_reproducoes h
  ON u.usuario_id = h.usuario

  GROUP BY u.usuario
  ORDER BY u.usuario
;