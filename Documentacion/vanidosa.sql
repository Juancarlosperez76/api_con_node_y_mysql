-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2022 a las 01:40:15
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vanidosa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Rol` varchar(15) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `TipoDocumento` varchar(25) NOT NULL,
  `Documento` int(15) NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Correo` varchar(35) NOT NULL,
  `Contrasena` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Rol`, `Nombre`, `Apellidos`, `TipoDocumento`, `Documento`, `Direccion`, `Telefono`, `Correo`, `Contrasena`) VALUES
('Administrador', 'Juan Carlos', 'Pérez Molina', 'Cédula', 10183863, 'Calle 30#77-78', '3117794075', 'sebasydan@gmail.com', 'abc123'),
('Empleado', 'Diego Alberto', 'Torres Bastidas', 'Cédula', 18092347, 'Cra 80#52-47', '3017480934', 'diego23@gmail.com', 'tew23iopa&'),
('Cliente', 'Anderson Camilo', 'Roa Parra', 'Cédula', 24836012, 'Cll 33#76-32', '3202760934', 'ander26@gmail.com', 'fgdh$%gg8%'),
('Cliente', 'Wilson', 'Bastidas Marín', 'Cédula', 43789154, 'Cra 72#10-09', '3169870243', 'wilson23@gmail.com', 'qhjs20&er3'),
('Empleado', 'Josefina', 'López', 'Cédula', 50839746, 'Cra 59#12-16', '2147483647', 'josefina@gmail.com', 'fgh2ffh29'),
('Empleado', 'María del Pilar', 'Ibarra', 'Cédula de extranjería', 56103743, 'Calle 112#60-98', '3139120245', 'maria23@gmail.com', '$fgffdh6788!'),
('Empleado', 'Oscar Esteban', 'Gutierrez', 'Cédula', 78832746, 'Calle 16#80-35', '3216795079', 'oscar@gmail.com', 'fghjy5646'),
('Empleado', 'Adrian', 'Romero', 'Cédula de extrnajería', 1022112765, 'Cra 55#72-18', '3146794071', 'adrian@gmail.com', 'adrian10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Documento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
