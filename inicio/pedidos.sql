-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2023 a las 00:34:20
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pedidoselina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `dniCuit` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo1` varchar(255) NOT NULL,
  `cantidad1` int(11) NOT NULL,
  `tipo2` varchar(255) DEFAULT NULL,
  `cantidad2` int(11) DEFAULT NULL,
  `tipo3` varchar(255) DEFAULT NULL,
  `cantidad3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `nombre`, `apellido`, `dniCuit`, `email`, `tipo1`, `cantidad1`, `tipo2`, `cantidad2`, `tipo3`, `cantidad3`) VALUES
(15, 'Roberto', 'Marzioli', '13567984', 'Robert_mar@gmail.com', '18cm', 7, 'Pascualinas', 10, '13cm', 9),
(16, 'Ines', 'Gutierrez', '35134567', 'Ines.gutierrez@gmail.com', 'copetin', 15, 'copetin', 20, 'dulces copetin', 12),
(17, 'PAN FRESCO', 'S.A', '3233313303', 'panaderia.panfresco@gmail.com', '13cm', 45, '13cm', 50, 'dulces', 70),
(18, 'Pedro', 'Roites', '41765766', 'P.roites.98@gmail.com', '18cm', 20, 'Pascualinas', 0, 'dulces', 0),
(19, 'Augusto', 'Martinez', '38898768', 'augus.rocket@hotmail.com', 'Pascualinas', 2, '18cm', 24, 'dulces', 5),
(20, 'Kevin', 'Mamani', '43043980', 'KevinTurro@yahoo.com.ar', '22cm', 8, '22cm', 4, '13cm', 12),
(21, 'Roman', 'Sabeiro', '20453676', 'KioskoFamiliar@gmail.com', '18cm', 25, '18cm', 25, 'dulces copetin', 30),
(22, 'Carlos', 'Ortega', '11876892', 'Carlos.negocio@outlook.com.ar', '13cm', 50, '13cm', 50, '13cm', 50),
(23, 'Leones', 'Messi', '33777888', 'campeonesdelmundo@gmail.com', '13cm', 3, '13cm', 3, '13cm', 3),
(24, 'Javier', 'Milei', '23456987', 'elleon.libertario@gmail.com', '22cm', 10, '22cm', 100, '13cm', 1),
(25, 'Segio', 'Maza', '9856666', 'tu_panqueque_ladron@gmail.com', '22cm', 5, '18cm', 1, '13cm', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
