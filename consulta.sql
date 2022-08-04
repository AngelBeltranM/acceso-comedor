-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2022 a las 22:41:07
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consulta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comandantes`
--

CREATE TABLE `comandantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NoEmp` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `adscripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TurnoID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `NoEmp` int(11) NOT NULL,
  `Grado` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NombreCompleto` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Adscripcion` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Genero` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bloque` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Institucion` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Situacion` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Observaciones` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`NoEmp`, `Grado`, `NombreCompleto`, `Adscripcion`, `Genero`, `Bloque`, `Estatus`, `Institucion`, `Situacion`, `Observaciones`, `created_at`, `updated_at`) VALUES
(1, 'xd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', NULL, NULL),
(2, 'xd', 'xd', 'xd', 'xd', 'xd', 'xd', 'xd', 'xd', 'xd', NULL, NULL),
(538, 'xd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', NULL, NULL),
(36574, 'xd', 'xd', 'xd', 'xd', 'xd', 'xd', 'xd', 'xd', 'xd', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id` int(3) NOT NULL,
  `horario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id`, `horario`) VALUES
(3, 'cena'),
(2, 'comida'),
(1, 'desayuno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NombreInstitucion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ano` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comida` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_horario` int(1) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `comida`, `id_horario`, `fecha`, `hora`) VALUES
(1, 'milanesa', 2, '2022-08-04', '15:21:27'),
(2, 'Pollo', 2, '2022-08-02', '08:23:52'),
(3, 'Milanesa', 3, '2022-08-03', '21:27:03'),
(4, 'desayuno americano', 1, '2022-08-03', '21:27:42'),
(6, 'Pollo con arroz', 2, '2022-08-04', '13:54:57'),
(7, 'Ensalada', 2, '2022-08-04', '14:20:37'),
(8, 'papas', 2, '2022-08-04', '15:22:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comida` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_comida` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_06_22_163831_empleados', 1),
(5, '2022_06_22_170204_vehiculos', 1),
(6, '2022_06_22_171920_institucion', 1),
(7, '2022_06_22_174530_regasistencia', 1),
(8, '2022_06_22_175258_usuarios', 1),
(9, '2022_06_22_190349_proveedores', 1),
(10, '2022_06_22_190731_visitantes', 1),
(11, '2022_06_30_192906_observaciones', 1),
(12, '2022_06_30_194451_comandantes', 1),
(13, '2022_07_23_174424_add__f_k__proveedores', 1),
(14, '2022_07_23_205544_add__f_k__visitantes', 1),
(15, '2022_07_23_205654_add__f_k__observaciones', 1),
(16, '2022_07_23_205736_add__f_k__comandantes', 1),
(17, '2022_07_25_160531_add__f_k_regasistencia', 1),
(18, '2022_07_27_131608_menu', 1),
(19, '2022_07_27_131635_horario', 1),
(20, '2022_07_31_120237_create_menus_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observaciones`
--

CREATE TABLE `observaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numempleado` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `hora` time NOT NULL,
  `comentarios` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TurnoID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NoEmp` int(11) NOT NULL,
  `NombreProveedor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Asunto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha` date NOT NULL,
  `h_entrada` time NOT NULL,
  `h_salida` time DEFAULT NULL,
  `TurnoID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regasistencia`
--

CREATE TABLE `regasistencia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NoEmp` int(11) NOT NULL,
  `f_entrada` date NOT NULL,
  `h_entrada` time NOT NULL,
  `f_salida` date DEFAULT NULL,
  `h_salida` time DEFAULT NULL,
  `adscripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placas_vehiculos` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TurnoID` bigint(20) UNSIGNED DEFAULT NULL,
  `horario` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `regasistencia`
--

INSERT INTO `regasistencia` (`id`, `NoEmp`, `f_entrada`, `h_entrada`, `f_salida`, `h_salida`, `adscripcion`, `estatus`, `placas_vehiculos`, `TurnoID`, `horario`, `created_at`, `updated_at`) VALUES
(15, 1, '2022-08-04', '15:21:14', NULL, NULL, 'sd', 'sd', NULL, NULL, 2, '2022-08-04 20:21:14', '2022-08-04 20:21:14'),
(16, 538, '2022-08-04', '15:23:30', NULL, NULL, 'sd', 'sd', NULL, NULL, 2, '2022-08-04 20:23:30', '2022-08-04 20:23:30'),
(17, 2, '2022-08-04', '15:23:36', NULL, NULL, 'xd', 'xd', NULL, NULL, 2, '2022-08-04 20:23:36', '2022-08-04 20:23:36'),
(18, 1, '2022-08-04', '15:23:45', NULL, NULL, 'sd', 'sd', NULL, NULL, 2, '2022-08-04 20:23:45', '2022-08-04 20:23:45'),
(19, 1, '2022-08-04', '15:23:48', NULL, NULL, 'sd', 'sd', NULL, NULL, 2, '2022-08-04 20:23:48', '2022-08-04 20:23:48'),
(20, 1, '2022-08-04', '15:25:35', NULL, NULL, 'sd', 'sd', NULL, NULL, 2, '2022-08-04 20:25:35', '2022-08-04 20:25:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juan Angel Beltran Martinez', '301910870@ute.edu.mx', NULL, '$2y$10$kexdbtqH/qPJYtxFAOZ7BOObSW24fqS7DCVeKOS6pQalTG4t/19uO', NULL, '2022-07-30 00:23:49', '2022-07-30 00:23:49'),
(2, 'Luis Daniel Ramirez', 'angelbm.0227@gmail.com', NULL, '$2y$10$UzipZjSSEtxhWfwCV9A85umCQnc1ZmFQVQKFyS7DrAqlWnqPptO7i', NULL, '2022-08-02 13:37:10', '2022-08-02 13:37:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NoEmp` int(11) NOT NULL,
  `NoPlacas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Marca` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Modelo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Vigencia` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NoEmp` int(11) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ApellidoPaterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ApellidoMaterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Asunto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_entrada` time NOT NULL,
  `h_salida` time DEFAULT NULL,
  `TurnoID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comandantes`
--
ALTER TABLE `comandantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comandantes_noemp_foreign` (`NoEmp`),
  ADD KEY `users` (`TurnoID`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`NoEmp`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horario` (`horario`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_horario` (`id_horario`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `observaciones_numempleado_foreign` (`numempleado`),
  ADD KEY `users` (`TurnoID`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedores_noemp_foreign` (`NoEmp`),
  ADD KEY `users` (`TurnoID`);

--
-- Indices de la tabla `regasistencia`
--
ALTER TABLE `regasistencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regasistencia_noemp_foreign` (`NoEmp`),
  ADD KEY `users` (`TurnoID`),
  ADD KEY `id` (`horario`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehiculos_noemp_foreign` (`NoEmp`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitantes_noemp_foreign` (`NoEmp`),
  ADD KEY `users` (`TurnoID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comandantes`
--
ALTER TABLE `comandantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `NoEmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36575;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `observaciones`
--
ALTER TABLE `observaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regasistencia`
--
ALTER TABLE `regasistencia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comandantes`
--
ALTER TABLE `comandantes`
  ADD CONSTRAINT `comandantes_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`),
  ADD CONSTRAINT `comandantes_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id`);

--
-- Filtros para la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD CONSTRAINT `observaciones_numempleado_foreign` FOREIGN KEY (`numempleado`) REFERENCES `empleados` (`NoEmp`),
  ADD CONSTRAINT `observaciones_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`),
  ADD CONSTRAINT `proveedores_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `regasistencia`
--
ALTER TABLE `regasistencia`
  ADD CONSTRAINT `horario_fk` FOREIGN KEY (`horario`) REFERENCES `horario` (`id`),
  ADD CONSTRAINT `regasistencia_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`),
  ADD CONSTRAINT `regasistencia_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`);

--
-- Filtros para la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD CONSTRAINT `visitantes_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`),
  ADD CONSTRAINT `visitantes_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
