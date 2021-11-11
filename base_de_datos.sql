-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2021 a las 20:32:44
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base de datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(18) NOT NULL,
  `usuario_id` int(4) NOT NULL,
  `tipo_id` int(4) NOT NULL,
  `equipo_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discos`
--

CREATE TABLE `discos` (
  `id` int(18) NOT NULL,
  `disco_duro` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(18) NOT NULL,
  `estado_id` int(1) NOT NULL,
  `torre_id` int(1) NOT NULL,
  `monitor_id` int(1) NOT NULL,
  `teclado_id` int(1) NOT NULL,
  `raton_id` int(1) NOT NULL,
  `otro_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `funcional` varchar(1) NOT NULL,
  `funcional con errores` varchar(1) NOT NULL,
  `no funcional` varchar(1) NOT NULL,
  `id` int(18) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `id` int(18) NOT NULL,
  `usuario_id` int(4) NOT NULL,
  `comentarios` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `masculino` varchar(1) NOT NULL,
  `femenino` varchar(1) NOT NULL,
  `id` int(18) NOT NULL,
  `genero` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(18) NOT NULL,
  `actividad_id` int(4) NOT NULL,
  `equipo_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memorias`
--

CREATE TABLE `memorias` (
  `id` int(11) NOT NULL,
  `marca` varchar(1) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitores`
--

CREATE TABLE `monitores` (
  `id` int(18) NOT NULL,
  `n_bien` int(5) NOT NULL,
  `n_serie` varchar(5) NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `marca` varchar(5) NOT NULL,
  `modelo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros`
--

CREATE TABLE `otros` (
  `Microfonos` varchar(1) NOT NULL,
  `Camaras web` varchar(1) NOT NULL,
  `Joystick` varchar(1) NOT NULL,
  `Mouse pad` varchar(1) NOT NULL,
  `Id` int(18) NOT NULL,
  `dispositivo` int(1) NOT NULL,
  `n_bien` int(5) NOT NULL,
  `n_serie` varchar(5) NOT NULL,
  `marca` varchar(5) NOT NULL,
  `modelo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratones`
--

CREATE TABLE `ratones` (
  `id` int(18) NOT NULL,
  `n_bien` varchar(5) NOT NULL,
  `n_serie` varchar(5) NOT NULL,
  `marca` varchar(5) NOT NULL,
  `modelo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `cliente` varchar(1) NOT NULL,
  `admin` varchar(1) NOT NULL,
  `proveedor` varchar(1) NOT NULL,
  `id` int(18) NOT NULL,
  `rol` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte_act`
--

CREATE TABLE `soporte_act` (
  `id` int(18) NOT NULL,
  `usuario_id` int(4) NOT NULL,
  `actividad_id` int(4) NOT NULL,
  `tipo_id` int(4) NOT NULL,
  `fecha` date NOT NULL,
  `origen` varchar(2) NOT NULL,
  `localidad` varchar(2) NOT NULL,
  `proceso` varchar(2) NOT NULL,
  `descripcion` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller_act`
--

CREATE TABLE `taller_act` (
  `id` int(18) NOT NULL,
  `usuario_id` int(4) NOT NULL,
  `actividad_id` int(4) NOT NULL,
  `tipo_id` int(4) NOT NULL,
  `fecha` date NOT NULL,
  `origen` varchar(2) NOT NULL,
  `localidad` varchar(2) NOT NULL,
  `proceso` varchar(2) NOT NULL,
  `descripcion` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teclados`
--

CREATE TABLE `teclados` (
  `id` int(18) NOT NULL,
  `n_bien` int(5) NOT NULL,
  `n_serie` varchar(5) NOT NULL,
  `marca` varchar(5) NOT NULL,
  `modelo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_act`
--

CREATE TABLE `tipos_act` (
  `Soporte técnico` varchar(1) NOT NULL,
  `Actualización` varchar(1) NOT NULL,
  `Mantenimiento software` varchar(1) NOT NULL,
  `Mantenimiento Hardware` varchar(1) NOT NULL,
  `Id` int(18) NOT NULL,
  `Tipo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torres`
--

CREATE TABLE `torres` (
  `id` int(18) NOT NULL,
  `n_bien` int(5) NOT NULL,
  `n_serie` varchar(5) NOT NULL,
  `marca` varchar(5) NOT NULL,
  `modelo` varchar(5) NOT NULL,
  `procesador` varchar(1) NOT NULL,
  `discoduro_id` int(1) NOT NULL,
  `memoria_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(18) NOT NULL,
  `n_usuario` varchar(1) NOT NULL,
  `cedula` int(1) NOT NULL,
  `nombre` varchar(1) NOT NULL,
  `apellido` varchar(1) NOT NULL,
  `genero_id` int(1) NOT NULL,
  `contra` varchar(1) NOT NULL,
  `rol_id` int(1) NOT NULL,
  `correo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
