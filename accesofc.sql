-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: accesofc
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comandantes`
--

DROP TABLE IF EXISTS `comandantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comandantes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NoEmp` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `adscripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TurnoID` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comandantes_noemp_foreign` (`NoEmp`),
  KEY `users` (`TurnoID`),
  CONSTRAINT `comandantes_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`),
  CONSTRAINT `comandantes_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comandantes`
--

LOCK TABLES `comandantes` WRITE;
/*!40000 ALTER TABLE `comandantes` DISABLE KEYS */;
INSERT INTO `comandantes` VALUES (1,1,'2022-07-25','17:53:33','POLICIAL ESTATAL DE CAMINOS','ACTIVO','Entrada',2,NULL,NULL),(2,2,'2022-07-25','17:55:24','POLICIAL ESTATAL DE CAMINOS','ACTIVO','Entrada',1,NULL,NULL),(3,2,'2022-07-25','17:58:40','GUARDIA EN PREVENCIÓN','ACTIVO','Salida',1,NULL,NULL);
/*!40000 ALTER TABLE `comandantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `NoEmp` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`NoEmp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'xd','sd','sd','sd','sd','sd','sd','sd','sd',NULL,NULL),(2,'xd','xd','xd','xd','xd','xd','xd','xd','xd',NULL,NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NombreInstitucion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ano` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2022_06_22_163831_empleados',1),(5,'2022_06_22_170204_vehiculos',1),(6,'2022_06_22_171920_institucion',1),(7,'2022_06_22_174530_regasistencia',1),(8,'2022_06_22_175258_usuarios',1),(9,'2022_06_22_190349_proveedores',1),(10,'2022_06_22_190731_visitantes',1),(11,'2022_06_30_192906_observaciones',1),(12,'2022_06_30_194451_comandantes',1),(13,'2022_07_23_174424_add__f_k__proveedores',1),(14,'2022_07_23_205544_add__f_k__visitantes',1),(15,'2022_07_23_205654_add__f_k__observaciones',1),(16,'2022_07_23_205736_add__f_k__comandantes',1),(17,'2022_07_25_160531_add__f_k_regasistencia',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observaciones`
--

DROP TABLE IF EXISTS `observaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observaciones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numempleado` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `hora` time NOT NULL,
  `comentarios` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TurnoID` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `observaciones_numempleado_foreign` (`numempleado`),
  KEY `users` (`TurnoID`),
  CONSTRAINT `observaciones_numempleado_foreign` FOREIGN KEY (`numempleado`) REFERENCES `empleados` (`NoEmp`),
  CONSTRAINT `observaciones_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observaciones`
--

LOCK TABLES `observaciones` WRITE;
/*!40000 ALTER TABLE `observaciones` DISABLE KEYS */;
INSERT INTO `observaciones` VALUES (1,1,'2022-07-25','17:53:56','xd',2,NULL,NULL),(2,2,'2022-07-25','17:55:39','xd',1,NULL,NULL),(3,2,'2022-07-25','17:59:04','dsdsd',1,NULL,NULL);
/*!40000 ALTER TABLE `observaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NoEmp` int(11) NOT NULL,
  `NombreProveedor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Asunto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha` date NOT NULL,
  `h_entrada` time NOT NULL,
  `h_salida` time DEFAULT NULL,
  `TurnoID` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedores_noemp_foreign` (`NoEmp`),
  KEY `users` (`TurnoID`),
  CONSTRAINT `proveedores_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`),
  CONSTRAINT `proveedores_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,1,'xdddd','xxdddsadadadda','xddddd','2022-07-25','17:54:40','19:55:00',1,NULL,'2022-07-26 02:33:14'),(2,2,'xdhuguu','xdjhuihuihihihi','xdjuhuhyiuh','2022-07-25','17:56:18','18:57:00',1,NULL,'2022-07-26 02:34:48'),(3,2,'xd','xd','xd','2022-07-25','17:59:57','19:01:00',1,NULL,NULL),(4,1,'xd','xd','xd','2022-07-25','21:33:14','23:35:00',1,NULL,NULL),(5,2,'vhvhuihuhuh','dzdxrfxfcx','ujggu','2022-07-25','21:34:49','13:35:00',1,NULL,'2022-07-26 02:35:56');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regasistencia`
--

DROP TABLE IF EXISTS `regasistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regasistencia` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NoEmp` int(11) NOT NULL,
  `f_entrada` date NOT NULL,
  `h_entrada` time NOT NULL,
  `f_salida` date DEFAULT NULL,
  `h_salida` time DEFAULT NULL,
  `adscripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placas_vehiculos` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TurnoID` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `regasistencia_noemp_foreign` (`NoEmp`),
  KEY `users` (`TurnoID`),
  CONSTRAINT `regasistencia_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`),
  CONSTRAINT `regasistencia_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regasistencia`
--

LOCK TABLES `regasistencia` WRITE;
/*!40000 ALTER TABLE `regasistencia` DISABLE KEYS */;
INSERT INTO `regasistencia` VALUES (1,1,'2022-07-25','17:52:40','2022-07-26','12:58:12','sd','sd',NULL,1,'2022-07-25 22:52:40','2022-07-25 22:52:44'),(2,2,'2022-07-25','17:53:20','2022-07-26','12:58:12','xd','xd',NULL,2,'2022-07-25 22:53:20','2022-07-25 22:53:22'),(3,1,'2022-07-25','17:58:27','2022-07-26','12:58:12','sd','sd',NULL,1,'2022-07-25 22:58:27','2022-07-25 22:58:37'),(4,2,'2022-07-25','18:00:24','2022-07-26','12:58:12','POLICIAL ESTATAL DE CAMINOS','BAJA',NULL,1,NULL,NULL),(5,2,'2022-07-25','21:38:05','2022-07-26','12:58:12','xd','xd',NULL,1,'2022-07-26 02:38:05','2022-07-26 02:38:54'),(6,1,'2022-07-25','21:38:22','2022-07-26','12:58:12','sd','sd',NULL,1,'2022-07-26 02:38:22','2022-07-26 02:38:40'),(7,1,'2022-08-01','21:40:57','2022-07-26','12:58:12','COMISARÍA Y AYUDANTÍA','ACTIVO',NULL,1,NULL,NULL),(8,1,'2022-07-26','12:47:56','2022-07-26','12:58:12','sd','sd',NULL,NULL,'2022-07-26 17:47:56','2022-07-26 17:54:29'),(9,1,'2022-07-26','12:55:44','2022-07-26','12:58:12','sd','sd',NULL,NULL,'2022-07-26 17:55:44','2022-07-26 17:55:46'),(10,2,'2022-07-26','12:56:18','2022-07-26','12:58:12','xd','xd',NULL,NULL,'2022-07-26 17:56:18','2022-07-26 17:56:26'),(11,1,'2022-07-26','12:57:58','2022-07-26','12:58:12','POLICIAL ESTATAL DE CAMINOS','ACTIVO',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `regasistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jonathan Salazar','s@hotmail.com',NULL,'$2y$10$.cqAlyy2enFFv2vKMrVnQuyPD7ipd0dx13Pc.zkmn1mLTPkFQ4Yey',NULL,'2022-07-25 22:52:34','2022-07-25 22:52:34'),(2,'Eder','E@gmail.com',NULL,'$2y$10$cmREAUFJ5ovWR64hkne67.YPyJbBEHQEMHDfv.ndmwCAAUiX22EE6',NULL,'2022-07-25 22:53:15','2022-07-25 22:53:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NoEmp` int(11) NOT NULL,
  `NoPlacas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Marca` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Modelo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Vigencia` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehiculos_noemp_foreign` (`NoEmp`),
  CONSTRAINT `vehiculos_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitantes`
--

DROP TABLE IF EXISTS `visitantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitantes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NoEmp` int(11) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ApellidoPaterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ApellidoMaterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Asunto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_entrada` time NOT NULL,
  `h_salida` time DEFAULT NULL,
  `TurnoID` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visitantes_noemp_foreign` (`NoEmp`),
  KEY `users` (`TurnoID`),
  CONSTRAINT `visitantes_noemp_foreign` FOREIGN KEY (`NoEmp`) REFERENCES `empleados` (`NoEmp`),
  CONSTRAINT `visitantes_turnoid_foreign` FOREIGN KEY (`TurnoID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitantes`
--

LOCK TABLES `visitantes` WRITE;
/*!40000 ALTER TABLE `visitantes` DISABLE KEYS */;
INSERT INTO `visitantes` VALUES (1,1,'xdsddd','xd','xdasdasas','2022-07-25','xd','xd','17:54:12','18:55:00',1,NULL,'2022-07-26 02:36:44'),(2,2,'xd','xd','xd','2022-07-25','xd','xd','17:55:57','18:57:00',1,NULL,NULL),(3,2,'xd','xd','xd','2022-07-25','xd','xd','17:59:17','19:01:00',1,NULL,NULL);
/*!40000 ALTER TABLE `visitantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-26 13:09:16
