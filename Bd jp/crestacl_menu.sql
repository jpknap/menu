-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-12-2013 a las 16:24:43
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `crestacl_menu`
--
CREATE DATABASE IF NOT EXISTS `crestacl_menu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crestacl_menu`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `longitud` double NOT NULL,
  `latitud` double NOT NULL,
  `Producto` varchar(40) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Descripción` text NOT NULL,
  PRIMARY KEY (`longitud`,`latitud`,`Producto`),
  KEY `latitud` (`latitud`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restorant`
--

CREATE TABLE IF NOT EXISTS `restorant` (
  `latitud` double NOT NULL,
  `Happy Hour` int(11) NOT NULL,
  `Domicilio` int(11) NOT NULL,
  `Comida Rapida` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `longitud` double NOT NULL,
  PRIMARY KEY (`latitud`,`longitud`),
  KEY `latitud` (`latitud`),
  KEY `longitud` (`longitud`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `restorant`
--

INSERT INTO `restorant` (`latitud`, `Happy Hour`, `Domicilio`, `Comida Rapida`, `Nombre`, `Telefono`, `Direccion`, `longitud`) VALUES
(-73.245692, 1, 123, 1, 'rest 2', 12345, 'rest2', -39.833372),
(-39.833372, 0, 456, 1, 'rest1', 6789, 'rest 1 ', -73.245341);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`longitud`) REFERENCES `restorant` (`longitud`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`latitud`) REFERENCES `restorant` (`latitud`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
