-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-03-2014 a las 22:17:00
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29;

--
-- Volcar la base de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `name`, `description`, `category`, `price`) VALUES
(1, 'zapatos adidas', 'zapatos adidas de color gris', 'Deportes', 89),
(2, 'Zapatos de hombre', 'Zapatos de hombre de color negro para salir de fiesta.', 'Calzado', 90.23),
(3, 'Vestido rosa', 'Vestido para mujer de color Rosa.', 'Vestidos', 110.23),
(4, 'Vestido blanco', 'Vestido de color blanco.', 'Vestidos', 120),
(5, 'Sujetador rojo', 'Sujetador rojo para que tu novio se ponga a cien.', 'Ropa interior', 30.33),
(6, 'Tanga de mujer con pitufos', 'Tanga de mujer con pitufos para ir a la playa.', 'BaÃ±ador', 34.78),
(7, 'Gafas de sol', 'Gafas de sol de alta gama.', 'Complementos', 45),
(8, 'Gafas azules', 'Gafas de sol con cristales azules.', 'Complementos', 78.77),
(9, 'Ordenador portÃ¡til', 'Ordenador portÃ¡til', 'InformÃ¡tica', 350.21),
(10, 'Curso de PHP', 'Curso avanzado de PHP', 'ProgramaciÃ³n', 120),
(11, 'Curso de Javascript', 'Curso bÃ¡sico de Javascript', 'ProgramaciÃ³n', 90),
(12, 'Pulsera azul', 'Pulsera de color azul', 'Complementos', 10),
(13, 'Reloj de hombre', 'Reloj analÃ³gico de hombre', 'Complementos', 87.3),
(14, 'BalÃ³n de baloncesto', 'BalÃ³n de baloncesto profesional.', 'Deportes', 50),
(15, 'Pelota de tenÃ­s', 'Pack de 8 pelotas de tenÃ­s', 'Deportes', 33),
(16, 'Raqueta de tenis', 'Raqueta de tenis profesional', 'Deportes', 150),
(17, 'Curso de Python', 'Curso de Python avanzado.', 'ProgramaciÃ³n', 130.21),
(18, 'Reloj acuÃ¡tico', 'Reloj femenino acuÃ¡tico.', 'Complementos', 88.77),
(19, 'Memoria RAM 8GB', 'Memoria RAM 8GB', 'InformÃ¡tica', 100),
(20, 'Disco duro 250GB', 'Disco duro 250GB', 'InformÃ¡tica', 120),
(21, 'Curso de CSS', 'Curso de CSS bÃ¡sico', 'ProgramaciÃ³n', 60),
(22, 'Chaqueta de cuero masculina', 'Chaqueta de cuero masculina', 'Chaquetas', 200.23),
(23, 'Abrigo rosa', 'Abrigo de color rosa', 'Abrigos', 300),
(24, 'BalÃ³n de fÃºtbol', 'BalÃ³n de fÃºtbol', 'Deportes', 30),
(25, 'Camisa deportiva masculina', 'Camisa deportiva masculina.', 'Deportes', 20.99),
(26, 'Camisa deportiva femenina', 'Camisa deportiva femenina', 'Deportes', 21),
(27, 'MÃ³vil Android', 'MÃ³vil Android Ice Cream 4.0', 'MÃ³viles', 300),
(28, 'Torre ordenador', 'Torre ordenador 32GB de Memoria RAM y 300GB de disco duro.', 'InformÃ¡tica', 600);

