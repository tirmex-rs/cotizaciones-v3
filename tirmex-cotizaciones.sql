-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2024 a las 00:28:33
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
-- Base de datos: `tirmex-cotizaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categorias`
--

CREATE TABLE `tbl_categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_categorias`
--

INSERT INTO `tbl_categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Camaras'),
(2, 'Control de acceso'),
(3, 'Control peatonal'),
(4, 'Control de acceso vehicular'),
(5, 'Detectores de humo fotoelectricos'),
(6, 'Paneles solares'),
(7, 'Trackers GPS'),
(8, 'GPS'),
(9, 'Dashcam'),
(10, 'Camaras de reversa'),
(11, 'Drones'),
(12, 'Categoria 5E'),
(13, 'RJ45'),
(14, 'UPS'),
(15, 'Respaldo de energia'),
(16, 'Torniquetes'),
(17, 'Fusionadora'),
(18, 'Carrete'),
(19, 'Señalamientos'),
(20, 'Luces auxiliares vehiculares'),
(21, 'Luces para montacargas'),
(22, 'Plantas de emergencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`id_cliente`, `nombre_cliente`) VALUES
(1, 'Alsara'),
(2, 'Christus Murgueza Reynosa'),
(3, 'Diebold de México Sa de Cv'),
(4, 'Calzados Andrea de zapatería de México'),
(5, 'Venore paqueteria'),
(6, 'Sumitronics'),
(7, 'Baterias Rivera'),
(8, 'Tapiceria Gonzales'),
(9, 'MacTell De Mexico'),
(10, 'Transporte Gonzales'),
(11, 'Tortilleria Leguz'),
(12, 'Grupo ASVEC'),
(13, 'Instituto Tecnologico de Reynosa'),
(14, 'Itech analytic'),
(15, 'Seguro velas(GRUPO VELAS)'),
(16, 'ZAPATERIA ZAPATILLA DE CRISTAL'),
(17, 'Grupo Burgos'),
(18, 'Trareysa'),
(19, 'Steel Mart'),
(20, 'Grupo Iconn'),
(21, 'Eco Industrial del Noreste'),
(22, 'Global México'),
(23, 'Acero Ventas'),
(24, 'Femsa'),
(25, 'Pesajes y basculas del norte s.a de c.v'),
(26, 'Grupo GOR'),
(27, 'super mercados smart'),
(28, 'Nidec'),
(29, 'Safety Training Solutions'),
(30, 'Agencia Aduanal Sierra, S.C.'),
(31, 'Office Depot'),
(32, 'Reco de Reynosa, S.A. de C.V.'),
(33, 'TRISA Comercial S.A. de C.V'),
(34, 'Hospital Santander'),
(35, 'Fortune Plastic & Metal de Mexico SA de CV'),
(36, 'Border Freight'),
(37, 'Boxes.mx Planta Reynosa'),
(38, 'Cano and Son Mexico'),
(39, 'Techos y Proyectos Industriales sa de cv'),
(40, 'Tecmilenio'),
(41, 'IIES'),
(42, 'KND Industrias'),
(43, 'Anchor Bay Packaging'),
(44, 'Empaquemex'),
(45, 'Almex'),
(46, 'Omoda'),
(47, 'sharp Reynosa'),
(48, 'Hydro Precisión Reynosa'),
(49, 'Weldmex Industries'),
(50, 'Impresora Donneco Internacional'),
(51, 'Sarreal S.A DE C.V'),
(52, 'Auto transportes Varela'),
(53, 'Oro al Espíritu Santo'),
(54, 'ATL AUTOTRANSPORTES'),
(55, 'Paquete Express'),
(56, 'Fymersa'),
(57, 'GRUPO SEPSA'),
(58, 'Servicio Ideal'),
(59, 'Transporte Padilla'),
(60, 'Unimex'),
(61, 'Imobil'),
(62, 'Camy Graphics'),
(63, 'Nueva clean'),
(64, 'Ferreteria Genesis'),
(101, 'Camy Graphics'),
(102, 'Nueva clean'),
(103, 'Ferreteria Genesis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `Id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(355) NOT NULL,
  `categoria_producto` varchar(355) NOT NULL,
  `descripcion_producto` varchar(355) NOT NULL,
  `cantidad_producto` int(11) NOT NULL,
  `precio_producto` varchar(355) NOT NULL,
  `imagen_producto` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`Id_producto`, `nombre_producto`, `categoria_producto`, `descripcion_producto`, `cantidad_producto`, `precio_producto`, `imagen_producto`) VALUES
(1, 'TURBO HD 2 MEGAPIXEL (1080P)', 'CAMARAS', 'Lente fijo: 2.8 mm (ángulo de visión 101°). 30 mts smart IR (visión nocturna). Soporta las 4 tecnologías del mercado (TVI / AHD / CVI / CVBS). dWDR / AGC / BLC / HLC / 2D DNR. Soporta coaxitron.', 1, '90', 0x313732363736353338375f436170747572612064652070616e74616c6c6120323032342d30392d3133203135353032382e706e67),
(2, 'DS-2CE72DF3T-PIRXOS', 'CAMARAS', 'Resolución Máxima 2 Megapixel (1920 x 1080) Detección de humano por medio de sensor PIR. Luz blanca con 20 m de distancia. Salida de audio en cámara para conectar una bocina preamplificada', 1, '2,183.54', 0x313732363736353432345f436170747572612064652070616e74616c6c6120323032342d30392d3139203131353833392e706e67),
(4, 'DS-2CD1143G0-I(C)', 'CAMARAS', 'Resolución máxima: 4 Megapíxel. Distancia focal: 2.8 mm (ángulo de visión 98°) Iluminación mínima: color 0.01 Lux @ (F2.0, AGC ON).', 3, '3,210.25', 0x313732363736363032355f436170747572612064652070616e74616c6c6120323032342d30392d3139203132313332382e706e67),
(5, 'E8-TURBO-G2P/A', '', '2 Megapixel (1920 x 1080). Lente fijo: 2.8 mm (ángulo de visión 106.4°). 20 mts smart IR (visión nocturna). Micrófono Integrado para Grabar AUDIO', 1, '788', 0x313732363834363939325f436170747572612064652070616e74616c6c6120323032342d30392d3230203130343330342e706e67),
(6, 'DX360-15X', '', '2 Megapíxel (1920 x 1080). Iluminación mínima: Color 0.005 Lux (F1.6, AGC ON). Distancia Focal: 5 a 75 mm (15X Zoom óptico / 16X Zoom digital). Distancia de Infrarrojos: 100 mts IR (visión nocturna).', 0, '1', 0x313732363834373230365f436170747572612064652070616e74616c6c6120323032342d30392d3230203130343634312e706e67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `Id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(355) NOT NULL,
  `email_usuario` varchar(355) NOT NULL,
  `password_usuario` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`Id_usuario`, `nombre_usuario`, `email_usuario`, `password_usuario`) VALUES
(1, 'admin', 'tirmex@gmail.com', 'tirmex2024');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`Id_producto`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `Id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `Id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
