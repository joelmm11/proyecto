-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda_virtual
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `user_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Central','Areguá'),(2,'Concepción','Concepción'),(3,'San Pedro','San Pedro de Ycuamandiyú'),(4,'Coordillera','Caacupé'),(5,'Guairá','Villarica'),(6,'Caaguazú','Coronel Oviedo'),(7,'Caazapá','Caazapá'),(8,'Itapúa','Encarnación'),(9,'Misiones','San Juan Bautista'),(10,'Paraguarí','Paraguarí'),(11,'Alto Paraná','Ciudad del Este'),(12,'Ñeembucú','Pilar'),(13,'Amambay','Pedro Juan Caballero'),(14,'Canindeyú','Salto del Guairá'),(15,'Presidente Hayes','Villa Hayes'),(16,'Boquerón','Filadelfia'),(17,'Alto Paraguay','Fuerte Olimpo');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(100) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `precio` int DEFAULT NULL,
  `imagen` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'1001','teclado red dragon','Teclado reddragon RGB',100000,'https://m.media-amazon.com/images/I/61dvE+1pUYL._AC_SL1500_.jpg'),(3,'1003','mouse red dragon','Mouse red dragon Gamer',150000,'https://nissei.com/media/catalog/product/cache/16a9529cefd63504739dab4fc3414065/m/o/mouse_grifins.jpg'),(4,'1003','Notebook dell latitude','Ultrabook Dell Latitude 14 serie 7000',1500000,'https://m.media-amazon.com/images/I/512P6cpw3ML._AC_SL1500_.jpg'),(6,'1006','Celular Xiaomi redmi 10a','Serie Redmi Note 10 De la Antártida al espacio, la serie Redmi Note está lista para conquistar el mundo. Nuestra actitud es desafiar y superar las expectativas una y otra vez. ¡Ahora es tu turno! Desafía tus límites y descubre de lo que es capaz.\n\nCELULAR XIAOMI REDMI NOTE 10S 6/128  AZUL OCEANO',1500000,'https://www.alemaniacell.com/uploads/imagen-principal20871-1-1662581910.jpg'),(7,'1007','Apple Watch Series 7 45MM','Pantalla retina siempre activa.\nCasi 20% más grande que la del Apple Watch SE\nApp Oxígeno en Sangre.\nNotificaciones de frecuencia cardíaca alta y baja.\nEmergencia SOS. \nLlamada de emergencia en el extranjero.\nDetección de caídas\nConexión celular disponible.\nCristal frontal más resistente a golpes\nDiseñado para nadar\nCertificación IP6X de resistencia al polvo. ',2500000,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_ru58rvNCFRUdMgT2QWu2I9xcvqgHaXuIN-sGbZFP4qlKGPVCMHKmMMSTDadHslzDT94&usqp=CAU'),(8,'1007','Memoria Micro SD SanDisk Ultra 80 MB/S C10 Con Adaptador 16 GB','La memoria micro SD SanDisk Ultra es el complemento ideal para los teléfonos inteligentes y las tabletas Android para que funcionen en su máximo rendimiento, con velocidades de transferencia de hasta 80 MB/s. también incluye la clasificación de video de clase 10 para grabación de video de alta calidad, de modo que puedes capturar full HD sin exclusiones ni sobresaltos. Además, son resistentes al agua, a prueba de golpes, a prueba de rayos x y resistentes a la temperatura.',25000,'https://nissei.com/media/catalog/product/cache/16a9529cefd63504739dab4fc3414065/3/6/36770-1_2_2.jpg'),(9,'1009','Consola Nintendo Switch Lite','Presentamos la consola Nintendo Switch Lite, una nueva versión del sistema Nintendo Switch que está optimizada para el juego personal y portátil. Nintendo Switch Lite es un sistema Nintendo Switch pequeño y liviano a un excelente precio. Con un panel de control incorporado y un diseño elegante, el Nintendo Switch Lite es ideal para jugar mientras viajas. Nintendo Switch Lite es compatible con juegos populares como Super Mario Odyssey, Mario Kart 8 Deluxe, Super Smash Bros. Ultimate, The Legend of Zelda: Breath of the Wild y más. Si buscas un sistema de juego propio, Nintendo Switch Lite está listo para salir a la carretera cuando tú lo estés.',1836485,'data:image/jpeg;base64,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'),(10,'1020','Mochila Kolke KVM-339 Con Candado','La mochila Kolke KVM-339 ofrece máxima comodidad, incluye puerto exterior USB para carga de celulares, tablets y laptops y hueco para salida de auriculares. Esta mochila incluye un candado tipo TSA de combinación para el cierre principal para tu mayor tranquilidad. Es impermeable, resistente al agua, superresistente con material a prueba de cortes. En el interior cuenta con múltiples separadores y organizadores: bolsillos extra para más espacio de guardado y correas ajustables.',160552,'https://www.tupi.com.py/imagen/600__600__531d75-kvm-3396_gr_claro.jpg'),(11,'1030','Notebook/Tablet Asus Zenbook Flip S UX371EA-HL489W 13.3\" ','El ZenBook Flip S es elegante y versátil, combina sofisticación con un nuevo diseño. Su pantalla 4K UHD OLED NanoEdge y la bisagra ErgoLift de 360° lo hacen ultracompacto y con un rendimiento excelente gracias al procesador Intel Core de 11.ª generación y los gráficos Intel Iris Xe. Además, está fabricado de acuerdo al exigente estándar militar MIL-STD 810G. Para contrastar su fiabilidad y durabilidad, lo han sometido a un banco de pruebas de estrés que atestiguan su correcto funcionamiento en rangos extremos de altitud, temperatura y humedad.',10273999,'https://nissei.com/media/catalog/product/cache/16a9529cefd63504739dab4fc3414065/a/s/asus_zenbook_ux371ea-hl489t_-_3_1_1.jpg');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-06 15:02:00
