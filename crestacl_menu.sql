-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2013 at 10:06 AM
-- Server version: 5.1.70-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crestacl_menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE IF NOT EXISTS `Menu` (
  `longitud` varchar(20) NOT NULL,
  `latitud` varchar(20) NOT NULL,
  `Producto` varchar(40) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Descripción` text NOT NULL,
  PRIMARY KEY (`longitud`,`latitud`,`Producto`),
  KEY `latitud` (`latitud`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Restorant`
--

CREATE TABLE IF NOT EXISTS `Restorant` (
  `longitud` varchar(20) NOT NULL,
  `latitud` varchar(20) NOT NULL,
  `Happy Hour` int(11) NOT NULL,
  `Domicilio` int(11) NOT NULL,
  `Comida Rapida` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  PRIMARY KEY (`longitud`,`latitud`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Restorant`
--

INSERT INTO `Restorant` (`longitud`, `latitud`, `Happy Hour`, `Domicilio`, `Comida Rapida`, `Nombre`, `Telefono`, `Direccion`) VALUES
('2342o34', 'i12i3u12', 0, 1, 0, '', 0, '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Menu`
--
ALTER TABLE `Menu`
  ADD CONSTRAINT `Menu_ibfk_1` FOREIGN KEY (`longitud`) REFERENCES `Menu` (`longitud`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Menu_ibfk_2` FOREIGN KEY (`latitud`) REFERENCES `Menu` (`longitud`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
