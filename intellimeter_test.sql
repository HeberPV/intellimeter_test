-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2022 a las 21:33:59
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intellimeter_test`
-- test

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_sheet`
--

CREATE TABLE `data_sheet` (
  `id` int(10) NOT NULL,
  `panel_number` varchar(50) NOT NULL,
  `job_number` varchar(50) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  `seal` varchar(1) NOT NULL,
  `type` varchar(50) NOT NULL,
  `modbus_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serial_numbers`
--

CREATE TABLE `serial_numbers` (
  `id` int(10) NOT NULL,
  `serial_number` varchar(50) NOT NULL,
  `panel_number` varchar(50) NOT NULL,
  `meter_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `data_sheet`
--
ALTER TABLE `data_sheet`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serial_numbers`
--
ALTER TABLE `serial_numbers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `data_sheet`
--
ALTER TABLE `data_sheet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `serial_numbers`
--
ALTER TABLE `serial_numbers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
