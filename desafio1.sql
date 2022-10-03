DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.planos(
      plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      plano VARCHAR(45) NOT NULL,
      valor_plano INT NOT NULL
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.planos (plano, valor_plano)
  VALUES
    ('gratuito', 0.00),
    ('uniersitário' 5.99),
    ('pessoal', 6.99),
    ('familiar', 7.99);

  CREATE TABLE SpotifyClone.usuarios(
      usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      usuario VARCHAR(45) NOT NULL,
      idade INT NOT NULL,
      data_assinatura DATE NOT NULL,
      plano INT NOT NULL,
      FOREIGN KEY (plano) REFERENCES SpotifyClone.planos (plano_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.usuarios (usuario, idade, data_assinatura, plano)
  VALUES
    ('Barbara Liskov', 82, '2019-10-20', 1),
    ('Robert Cecil Martin', 58, '2017-01-06', 1),
    ('Ada Lovelace', 37, '2017-13-30', 4),
    ('Martin Fowler', 46, '2017-01-17', 4),
    ('Sandi Metz', 58, '2018-04-29', 4),
    ('Paulo Freire', 19, '2018-02-14', 5),
    ('Bell Hooks', 26, '2018-01-05', 5),
    ('Christopher Alexander', 85, '2019-06-05', 3),
    ('Judith Butler', 45, '2020-05-13', 3),
    ('Jorge Amado', 58, '2017-02-17', 3);

  CREATE TABLE SpotifyClone.artistas(
      artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      artista VARCHAR(45) NOT NULL
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.artistas(artista)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blund Guardian'),
    ('Nina Simone');

  CREATE TABLE SpotifyClone.albuns(
      album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      album VARCHAR(45) NOT NULL,
      ano_lancamento DATETIME NOT NULL,
      artista INT NOT NULL,
      FOREIGN KEY (artista) REFERENCES SpotifyClone.artistas (artista_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.albuns(album, ano_lancamento, artistas_artista_id)
  VALUES
    ('Renaissance', 2022, 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2012, 6);

  CREATE TABLE SpotifyClone.cancoes(
      cancao_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      cancao VARCHAR(45) NOT NULL,
      duracao_segundos INT NOT NULL,
      album INT,
      FOREIGN KEY (album) REFERENCES SpotifyClone.albuns (album_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.cancoes(cancao, duracao_segundos, album) VALUES
    ('BREAK MY SOUL', 279, 1),
    ('VIRGO’S GROOVE', 369, 1),
    ('ALIEN SUPERSTAR', 116, 1),
    ('Don’t Stop Me Now', 203, 2),
    ('Under Pressure', 152, 3),
    ('Como Nossos Pais', 105, 4),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
    ('Samba em Paris', 267, 6),
    ('The Brad’s Song', 244, 7),
    ('Felling Good', 100, 8);

  CREATE TABLE SpotifyClone.historico_de_reproducoes(
      id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      cancao INT NOT NULL,
      usuario INT NOT NULL,
      data_reproducao DATETIME NOT NULL,
      FOREIGN KEY (cancao) REFERENCES SpotifyClone.cancaoes (cancao_id),
      FOREIGN KEY (usuario) REFERENCES SpotifyClone.usuarios (usuario_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.historico_de_reproducoes(cancao, usuario, data_reproducao)
  VALUES
    (8, 1, '2022-02-28 10:45:55'),
    (2, 1, '2020-05-02 05:30:35'),
    (10, 1, '2020-03-06 11:22:33'),
    (10, 2, '2022-08-05 08:05:17'),
    (7, 2, '2020-01-02 07:40:33'),
    (10, 3, '2020-11-13 16:55:13'),
    (2, 3, '2020-12-05 18:38:30'),
    (8, 4, '2021-08-15 17:10:10'),
    (8, 5, '2022-01-09 01:44:33'),
    (5, 5, '2020-08-06 15:23:43'),
    (7, 6, '2017-01-24 00:31:17'),
    (1, 6, '2017-10-12 12:35:20'),
    (4, 7, '2011-12-15 22:30:49'),
    (4, 8, '2012-03-17 14:56:41'),
    (9, 9, '2022-02-20 21:14:22'),
    (3, 10, '2015-12-13 08:30:22');

  CREATE TABLE SpotifyClone.seguindo_artistas(
      id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      artista INT NOT NULL,
      usuario INT NOT NULL,
      FOREIGN KEY (artista) REFERENCES SpotifyClone.artistas (artistas_id),
      FOREIGN KEY (usuario) REFERENCES SpotifyClone.usuarios (usuarios_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.seguindo_artistas(artista, usuario)
  VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 1),
    (7, 6),
    (9, 3),
    (10, 2);