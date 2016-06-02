-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2016 a las 15:07:50
-- Versión del servidor: 5.7.9
-- Versión de PHP: 5.6.16




SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `onlinejob`
--

-- --------------------------------------------------------
CREATE DATABASE IF NOT EXISTS `onlinejob`;
USE `onlinejob`;


--
-- Estructura de tabla para la tabla `demandante`
--

DROP TABLE IF EXISTS `demandante`;
CREATE TABLE IF NOT EXISTS `demandante` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `dni` varchar(32) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `email` varchar(32) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `ofertademandante` bigint(20) DEFAULT NULL,
  `perfil` bigint(20) DEFAULT NULL,
  `usuario` bigint(20) DEFAULT NULL,
  `usuariod` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pke34t8i4dxrvtj0x8b07mk52` (`ofertademandante`),
  KEY `FK_6mnowhfkr7gqotgmci4yrry5r` (`perfil`),
  KEY `FK_easbdttsurflhhldddb36shvn` (`usuario`),
  KEY `FK_rwvcl6iag01t78nasiwwtjkxr` (`usuariod`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `demandante`
--

INSERT INTO `demandante` (`id`, `version`, `dni`, `nombre`, `direccion`, `email`, `estado`, `fecha_nacimiento`, `sexo`, `telefono`, `ofertademandante`, `perfil`, `usuario`, `usuariod`) VALUES
(1, 0, '76084612V', 'juan', 'camnod ela piruleta', 'ddddddddddd@gggggggg', 2, '2016-05-26 00:00:00', 'hombre', '666 77 88 99', 1, NULL, NULL, NULL),
(2, 0, '4444444444444', 'ffffffffff', 'caminod e la pirtule', 'dddddddddd', 0, '2016-05-03 00:00:00', 'Hombre', '333445566', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

DROP TABLE IF EXISTS `direccion`;
CREATE TABLE IF NOT EXISTS `direccion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `nombre` varchar(32) NOT NULL,
  `num` varchar(255) NOT NULL,
  `cp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id`, `version`, `nombre`, `num`, `cp`) VALUES
(1, 0, 'camino de la piruleta', '12', '11130');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actividad_profesional` varchar(256) DEFAULT NULL,
  `cif` varchar(9) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `nombre` varchar(32) NOT NULL,
  `num_empleados` float DEFAULT NULL,
  `telefono` varchar(255) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `usuario` bigint(20) DEFAULT NULL,
  `direccion` bigint(20) DEFAULT NULL,
  `oferta` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d3nm4bkmn198h94okwmqdfh6w` (`usuario`),
  KEY `FK_834gy4iew8s54mp07vlpg76f9` (`direccion`),
  KEY `FK_g9o0gs7vrcx72jl59icel8gb1` (`oferta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_trabajo`
--

DROP TABLE IF EXISTS `oferta_trabajo`;
CREATE TABLE IF NOT EXISTS `oferta_trabajo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `tipologia_contrato` varchar(32) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `sueldo_bruto` float NOT NULL,
  `num_vacantes` varchar(255) NOT NULL,
  `formacion` varchar(32) NOT NULL,
  `perfil` varchar(256) NOT NULL,
  `experiencia_previa` varchar(255) NOT NULL,
  `estado_empleo` int(11) DEFAULT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oferta_trabajo`
--

INSERT INTO `oferta_trabajo` (`id`, `version`, `tipologia_contrato`, `fecha_inicio`, `sueldo_bruto`, `num_vacantes`, `formacion`, `perfil`, `experiencia_previa`, `estado_empleo`, `nombre`) VALUES
(1, 0, 'eeeeeeeeeee', '2016-05-18 00:00:00', 400, '2', 'nada', 'vago', 'comer', 3, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE IF NOT EXISTS `perfil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `trayectoria` varchar(256) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `lista_puesto_trabajo` varchar(32) DEFAULT NULL,
  `curso_especializacion` varchar(32) DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `fecha_inicio` datetime NOT NULL,
  `idioma` varchar(32) DEFAULT NULL,
  `nombre_empresa` varchar(32) DEFAULT NULL,
  `puesto_trabajo_desempenado` varchar(32) DEFAULT NULL,
  `titulo_academico` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `version`, `trayectoria`, `foto`, `lista_puesto_trabajo`, `curso_especializacion`, `fecha_fin`, `fecha_inicio`, `idioma`, `nombre_empresa`, `puesto_trabajo_desempenado`, `titulo_academico`) VALUES
(1, 0, 'rrrrrrrrrr', 'wwwwww', 'wwwwww', 'wwwwwwwwww', '2016-05-30 00:00:00', '2016-05-18 00:00:00', 'wwwwwwwwwww', 'wwwwwwwwwwwwwww', 'eeeee', 'wwwwwwwwww');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `password` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `rol` int(11) NOT NULL,
  `enabled` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `fecha_registro`, `password`, `username`, `version`, `rol`, `enabled`) VALUES
(10, 'admin@admin', '2016-06-01 00:00:00', '12345678', 'admin', 0, 0, '1'),
(11, 'empresa@empresa', '2016-06-01 00:00:00', '12345678', 'empresa', 0, 2, '1'),
(12, 'demandante@demandante', '2016-06-01 00:00:00', '12345678', 'demandante', 0, 1, '1');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `demandante`
--
ALTER TABLE `demandante`
  ADD CONSTRAINT `FK_6mnowhfkr7gqotgmci4yrry5r` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`),
  ADD CONSTRAINT `FK_easbdttsurflhhldddb36shvn` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_pke34t8i4dxrvtj0x8b07mk52` FOREIGN KEY (`ofertademandante`) REFERENCES `oferta_trabajo` (`id`),
  ADD CONSTRAINT `FK_rwvcl6iag01t78nasiwwtjkxr` FOREIGN KEY (`usuariod`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `FK_834gy4iew8s54mp07vlpg76f9` FOREIGN KEY (`direccion`) REFERENCES `direccion` (`id`),
  ADD CONSTRAINT `FK_d3nm4bkmn198h94okwmqdfh6w` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_g9o0gs7vrcx72jl59icel8gb1` FOREIGN KEY (`oferta`) REFERENCES `oferta_trabajo` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
