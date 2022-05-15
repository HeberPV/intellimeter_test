-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2022 a las 19:59:02
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
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_sheet`
--

CREATE TABLE `data_sheet` (
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
  ADD PRIMARY KEY (`panel_number`);

--
-- Indices de la tabla `serial_numbers`
--
ALTER TABLE `serial_numbers`
  ADD PRIMARY KEY (`serial_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
