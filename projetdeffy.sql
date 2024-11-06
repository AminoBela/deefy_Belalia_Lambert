-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-11-2024 a las 15:22:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `projetdeffy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nom`) VALUES
(1, 'Best of rock'),
(2, 'Musique classique'),
(3, 'Best of country music'),
(4, 'Best of Elvis Presley'),
(5, 'Gingembre'),
(6, 'Relaxation');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist2track`
--

CREATE TABLE `playlist2track` (
  `id_pl` int(11) NOT NULL,
  `id_track` int(11) NOT NULL,
  `no_piste_dans_liste` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `playlist2track`
--

INSERT INTO `playlist2track` (`id_pl`, `id_track`, `no_piste_dans_liste`) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(2, 4, 2),
(3, 5, 1),
(3, 6, 2),
(4, 7, 1),
(4, 8, 2),
(5, 10, 1),
(5, 11, 2),
(6, 12, 1),
(6, 13, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track`
--

CREATE TABLE `track` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `genre` varchar(30) DEFAULT NULL,
  `duree` int(3) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `artiste_album` varchar(30) DEFAULT NULL,
  `titre_album` varchar(30) DEFAULT NULL,
  `annee_album` int(4) DEFAULT NULL,
  `numero_album` int(11) DEFAULT NULL,
  `auteur_podcast` varchar(100) DEFAULT NULL,
  `date_posdcast` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `track`
--

INSERT INTO `track` (`id`, `titre`, `genre`, `duree`, `filename`, `type`, `artiste_album`, `titre_album`, `annee_album`, `numero_album`, `auteur_podcast`, `date_posdcast`) VALUES
(1, 'Wish You Were Here', 'rock', 334, 'pink_wish.mp3', 'A', 'Pink Floyd', 'Wish You Were Here', 1975, 1, NULL, NULL),
(2, 'Samba Pati', 'rock', 300, 'santana_abra.mp3', 'A', 'Santana', 'Abraxas', 1970, 1, NULL, NULL),
(3, 'Danube Bleu', 'musique classique', 300, 'straus_danube.mp3', 'A', 'Johann Strauss', 'Valses', 2000, 1, NULL, NULL),
(4, 'Lettre à Elise', 'musique classique', 400, 'beethoven_elise.mp3', 'A', 'Beethoven', 'Piano', 1966, 1, NULL, NULL),
(5, 'Annie song', 'country', 200, 'denver_annie.mp3', 'A', 'John Denver', 'Best of J. Denver', 2001, 1, NULL, NULL),
(6, 'Tequila sunrise', 'country', 300, 'eagles_teq.mp3', 'A', 'Eagles', 'Best of Eagles', 2007, 1, NULL, NULL),
(7, 'In the ghetto', 'country', 200, 'elvis_annie.mp3', 'A', 'Elvis Presley', 'Best of E. Presley', 2002, 1, NULL, NULL),
(8, 'La vie des papillons', 'docu', 200, 'papillons.mp3', 'P', NULL, NULL, NULL, NULL, 'Bolo', '2004-10-12'),
(9, 'La vie des libellules', 'docu', 200, 'libellules.mp3', 'P', NULL, NULL, NULL, NULL, 'Bolo', '2004-10-12'),
(10, 'El Nano', 'Pop Espagnol', 161, 'Melendi - El Nano (Videoclip Oficial)_oq9HlVE86OA.mp3', NULL, 'Melendi', NULL, NULL, NULL, NULL, '2003-05-21'),
(11, 'Rap chinois', 'Pop', 221, 'Rap chinois.mp3', NULL, 'Mao', NULL, NULL, NULL, NULL, '2019-05-21'),
(12, 'El Nano', 'Pop', 161, 'Melendi - El Nano (Videoclip Oficial)_oq9HlVE86OA.mp3', NULL, 'Melendi', NULL, NULL, NULL, NULL, '2003-05-21'),
(13, 'Rap Chinois', 'Rap', 221, 'Rap chinois.mp3', NULL, 'Mao', NULL, NULL, NULL, NULL, '2019-05-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `passwd` varchar(256) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `passwd`, `role`) VALUES
(1, 'user1@mail.com', '$2y$12$e9DCiDKOGpVs9s.9u2ENEOiq7wGvx7sngyhPvKXo2mUbI3ulGWOdC', 1),
(2, 'user2@mail.com', '$2y$12$4EuAiwZCaMouBpquSVoiaOnQTQTconCP9rEev6DMiugDmqivxJ3AG', 1),
(3, 'user3@mail.com', '$2y$12$5dDqgRbmCN35XzhniJPJ1ejM5GIpBMzRizP730IDEHsSNAu24850S', 1),
(4, 'user4@mail.com', '$2y$12$ltC0A0zZkD87pZ8K0e6TYOJPJeN/GcTSkUbpqq0kBvx6XdpFqzzqq', 1),
(5, 'admin@mail.com', '$2y$12$JtV1W6MOy/kGILbNwGR2lOqBn8PAO3Z6MupGhXpmkeCXUPQ/wzD8a', 100),
(6, 'bonjour@mail.com', '$2y$10$RlE4zAK5ypECfOu1G38SjO1r/wYCBiDHlkGOFHqRZM1/7DzlmQW9.', 1),
(7, 'adminadmin@mail.com', '$2y$10$uA4hP1ubufg8S29E1bkZjuNjfFnE9wfyaQJrYgNWceJwsDv/EhHxS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user2playlist`
--

CREATE TABLE `user2playlist` (
  `id_user` int(11) NOT NULL,
  `id_pl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `user2playlist`
--

INSERT INTO `user2playlist` (`id_user`, `id_pl`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(6, 5),
(7, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist2track`
--
ALTER TABLE `playlist2track`
  ADD PRIMARY KEY (`id_pl`,`id_track`),
  ADD KEY `id_track` (`id_track`);

--
-- Indices de la tabla `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user2playlist`
--
ALTER TABLE `user2playlist`
  ADD PRIMARY KEY (`id_user`,`id_pl`),
  ADD KEY `id_pl` (`id_pl`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `track`
--
ALTER TABLE `track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `playlist2track`
--
ALTER TABLE `playlist2track`
  ADD CONSTRAINT `playlist2track_ibfk_1` FOREIGN KEY (`id_pl`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist2track_ibfk_2` FOREIGN KEY (`id_track`) REFERENCES `track` (`id`);

--
-- Filtros para la tabla `user2playlist`
--
ALTER TABLE `user2playlist`
  ADD CONSTRAINT `user2playlist_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user2playlist_ibfk_2` FOREIGN KEY (`id_pl`) REFERENCES `playlist` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
