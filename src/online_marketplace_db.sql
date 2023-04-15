-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: makretplace_schema
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
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_account` (
  `bankAccountID` int NOT NULL,
  `customerID` int DEFAULT NULL,
  `bankAccountBalance` float DEFAULT NULL,
  PRIMARY KEY (`bankAccountID`),
  KEY `fk1` (`customerID`),
  CONSTRAINT `fk1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
INSERT INTO `bank_account` VALUES (1301255,16369,644324),(1301482,16461,164455),(1301603,16510,1176500),(1301802,16511,1030170),(1301964,16605,1219440),(1302009,16631,979634),(1302230,16667,601794),(1302412,16717,635088),(1302445,16743,941901),(1302655,16841,140456);
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `best_deviverymans`
--

DROP TABLE IF EXISTS `best_deviverymans`;
/*!50001 DROP VIEW IF EXISTS `best_deviverymans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `best_deviverymans` AS SELECT 
 1 AS `deliverymanName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `compare_prices`
--

DROP TABLE IF EXISTS `compare_prices`;
/*!50001 DROP VIEW IF EXISTS `compare_prices`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compare_prices` AS SELECT 
 1 AS `sellerName`,
 1 AS `productName`,
 1 AS `pricePerUnit`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` int NOT NULL,
  `firstName` varchar(64) DEFAULT NULL,
  `lastName` varchar(64) DEFAULT NULL,
  `telephoneNumber` bigint DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `address` text,
  `email` text,
  `registrationDate` date DEFAULT NULL,
  `ransomPercentage` float DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (16369,'Kira','Ryan',896957680689,'Perm','street Pushkina, building 57, apartment 186','com.ryan9@gmail.kira','2016-04-25',65.16),(16461,'Peter','Jones',894485821869,'Ulyupensk','street Hikalova, building 30, apartment 130','com.jones9@gmail.peter','2013-09-18',74.48),(16510,'Eva','Johnson',897720034291,'Kostroma','street Stalina, building 1, apartment 163','com.johnson10@gmail.eva','2013-05-12',40.27),(16511,'Alice','Taylor',899698178317,'Perm','street Kosugina, building 86, apartment 175','com.taylor10@gmail.alice','2022-04-08',61.52),(16605,'Peter','Tremblay',893418962710,'Vladivostok','street Petrova, building 78, apartment 73','com.tremblay8@gmail.peter','2022-04-13',19.94),(16631,'Maria','Wang',895224348034,'Kostroma','street Vosstania, building 44, apartment 67','com.wang13@gmail.maria','2013-06-17',28.28),(16667,'Evgeny','Williams',891425775903,'Ulyupensk','street Kosugina, building 69, apartment 29','com.williams11@gmail.evgeny','2021-09-26',83.82),(16717,'Peter','Gilberto',895439081810,'Perm','street Petrova, building 4, apartment 39','com.gilberto15@gmail.peter','2017-07-19',31.9),(16743,'Vasilisa','Roy',893527036594,'Petrozavodsk','street Zvezdnia, building 40, apartment 55','com.roy20@gmail.vasilisa','2011-05-18',35.62),(16841,'Elizabeth','Williams',899777344747,'Kirov','street Pushkina, building 92, apartment 96','com.williams9@gmail.elizabeth','2021-01-28',52.18);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_prefered_categories`
--

DROP TABLE IF EXISTS `customer_prefered_categories`;
/*!50001 DROP VIEW IF EXISTS `customer_prefered_categories`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_prefered_categories` AS SELECT 
 1 AS `customerID`,
 1 AS `category`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `deliveryID` int NOT NULL,
  `deliverymanID` int DEFAULT NULL,
  `addressFrom` text,
  `addressTo` text,
  `commencementOfCarriageDate` date DEFAULT NULL,
  `deliveryDate` date DEFAULT NULL,
  `deliveryStatus` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`deliveryID`),
  KEY `fk9` (`deliverymanID`),
  CONSTRAINT `fk9` FOREIGN KEY (`deliverymanID`) REFERENCES `deliveryman` (`deliverymanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1538992,110055,'street Lenina, building 63, apartment 173','street Pushkina, building 92, apartment 96','2017-01-05','2017-01-22','delivered'),(1539049,110233,'street Zvezdnia, building 80, apartment 61','street Pushkina, building 92, apartment 96','2017-01-05','2017-01-26','undelivered'),(1539063,110055,'street Hikalova, building 20, apartment 56','street Pushkina, building 92, apartment 96','2017-01-05','2017-01-31','undelivered'),(1539156,110055,'street Gigalova, building 49, apartment 49','street Stalina, building 1, apartment 163','2018-11-19','2018-11-27','undelivered'),(1539238,110299,'street Petrova, building 7, apartment 4','street Stalina, building 1, apartment 163','2018-11-19','2018-11-30','undelivered'),(1539255,110233,'street Stalina, building 26, apartment 195','street Vosstania, building 44, apartment 67','2021-03-19','2021-04-07','undelivered'),(1539348,110299,'street Kosugina, building 49, apartment 18','street Vosstania, building 44, apartment 67','2021-03-19','2021-04-16','delivered'),(1539390,110055,'street Stalina, building 79, apartment 145','street Vosstania, building 44, apartment 67','2021-03-19','2021-04-09','undelivered'),(1539417,110299,'street Chkalova, building 69, apartment 172','street Vosstania, building 44, apartment 67','2021-03-19','2021-04-18','undelivered'),(1539426,110154,'street Stalina, building 9, apartment 53','street Petrova, building 4, apartment 39','2017-03-19','2017-04-01','undelivered'),(1539796,110261,'street Kosugina, building 61, apartment 148','street Petrova, building 4, apartment 39','2022-05-19','2022-06-02','delivered'),(1539884,110299,'street Kosugina, building 67, apartment 152','street Petrova, building 4, apartment 39','2022-05-19','2022-05-29','delivered'),(1539966,110299,'street Jucova, building 45, apartment 119','street Petrova, building 4, apartment 39','2022-05-19','2022-06-13','undelivered'),(1539986,110055,'street Gigalova, building 68, apartment 42','street Petrova, building 4, apartment 39','2022-05-19','2022-06-18','delivered'),(1539990,110299,'street Zvezdnia, building 98, apartment 120','street Pushkina, building 92, apartment 96','2020-12-14','2020-12-22','undelivered'),(1540051,110154,'street Zvezdnia, building 86, apartment 171','street Pushkina, building 92, apartment 96','2020-12-14','2021-01-09','delivered'),(1540146,110154,'street Vosstania, building 42, apartment 5','street Pushkina, building 92, apartment 96','2020-12-14','2020-12-31','delivered'),(1540202,110261,'street Jucova, building 16, apartment 28','street Pushkina, building 92, apartment 96','2020-12-14','2021-01-07','undelivered'),(1540248,110055,'street Kosugina, building 83, apartment 97','street Pushkina, building 92, apartment 96','2020-12-14','2020-12-27','undelivered');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryman`
--

DROP TABLE IF EXISTS `deliveryman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryman` (
  `deliverymanID` int NOT NULL,
  `deliverymanName` varchar(64) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`deliverymanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryman`
--

LOCK TABLES `deliveryman` WRITE;
/*!40000 ALTER TABLE `deliveryman` DISABLE KEYS */;
INSERT INTO `deliveryman` VALUES (110055,'BoxBerry',1.25),(110154,'24Express',4.03),(110233,'Dmax',1.5),(110261,'SBT',4.78),(110299,'WestPost',2.97);
/*!40000 ALTER TABLE `deliveryman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `docinfo`
--

DROP TABLE IF EXISTS `docinfo`;
/*!50001 DROP VIEW IF EXISTS `docinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `docinfo` AS SELECT 
 1 AS `paymentDocumentID`,
 1 AS `orderID`,
 1 AS `customerID`,
 1 AS `sellerID`,
 1 AS `totalCost`,
 1 AS `createdAt`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `order_`
--

DROP TABLE IF EXISTS `order_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_` (
  `orderID` int NOT NULL,
  `customerID` int DEFAULT NULL,
  `deliveryCity` varchar(64) DEFAULT NULL,
  `deliveryAddress` text,
  `createdAt` datetime DEFAULT NULL,
  `orderCost` float DEFAULT NULL,
  `deliveryCost` float DEFAULT NULL,
  `deliveryMethod` varchar(64) DEFAULT NULL,
  `paymentMethod` varchar(64) DEFAULT NULL,
  `totalCost` float DEFAULT NULL,
  `orderStatus` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `fk2` (`customerID`),
  CONSTRAINT `fk2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_`
--

LOCK TABLES `order_` WRITE;
/*!40000 ALTER TABLE `order_` DISABLE KEYS */;
INSERT INTO `order_` VALUES (457824,16841,'Kirov','street Pushkina, building 92, apartment 96','2017-01-05 00:00:00',57277,334,'self-pickup','Visa',57611,'undelivered'),(457864,16510,'Kostroma','street Stalina, building 1, apartment 163','2018-11-19 00:00:00',19593,280,'courier','Visa',19873,'delivered'),(457917,16631,'Kostroma','street Vosstania, building 44, apartment 67','2021-03-19 00:00:00',46098,355,'urgent','Visa',46453,'undelivered'),(457945,16717,'Perm','street Petrova, building 4, apartment 39','2017-03-19 00:00:00',48699,761,'self-pickup','ApplePay',49460,'undelivered'),(458035,16717,'Perm','street Petrova, building 4, apartment 39','2022-05-19 00:00:00',100183,336,'urgent','Visa',100519,'undelivered'),(458076,16841,'Kirov','street Pushkina, building 92, apartment 96','2020-12-14 00:00:00',99974,755,'urgent','Mastercard',100729,'undelivered');
/*!40000 ALTER TABLE `order_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_document`
--

DROP TABLE IF EXISTS `payment_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_document` (
  `paymentDocumentID` int NOT NULL,
  `orderID` int DEFAULT NULL,
  `customerID` int DEFAULT NULL,
  `sellerID` int DEFAULT NULL,
  `documentTotalCost` float DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `documentStatus` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`paymentDocumentID`),
  KEY `fk4` (`orderID`),
  KEY `fk5` (`customerID`),
  KEY `fk6` (`sellerID`),
  CONSTRAINT `fk4` FOREIGN KEY (`orderID`) REFERENCES `order_` (`orderID`),
  CONSTRAINT `fk5` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  CONSTRAINT `fk6` FOREIGN KEY (`sellerID`) REFERENCES `seller` (`sellerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_document`
--

LOCK TABLES `payment_document` WRITE;
/*!40000 ALTER TABLE `payment_document` DISABLE KEYS */;
INSERT INTO `payment_document` VALUES (3853477,457824,16841,19442,13278,'2017-01-05','paid'),(3853514,457824,16841,19329,41742,'2017-01-05','paid'),(3853594,457824,16841,19399,2257,'2017-01-05','paid'),(3853659,457864,16510,19701,15239,'2018-11-19','unpaid'),(3853706,457864,16510,19701,4354,'2018-11-19','unpaid'),(3853741,457917,16631,19136,13236,'2021-03-19','paid'),(3853785,457917,16631,19701,6531,'2021-03-19','paid'),(3853865,457917,16631,19329,6957,'2021-03-19','paid'),(3853940,457917,16631,19055,19374,'2021-03-19','unpaid'),(3854001,457945,16717,19329,48699,'2017-03-19','unpaid'),(3854338,458035,16717,19499,27096,'2022-05-19','unpaid'),(3854392,458035,16717,19399,9028,'2022-05-19','paid'),(3854491,458035,16717,19252,23415,'2022-05-19','unpaid'),(3854574,458035,16717,19499,40644,'2022-05-19','unpaid'),(3854576,458076,16841,19542,5982,'2020-12-14','paid'),(3854637,458076,16841,19499,27096,'2020-12-14','unpaid'),(3854716,458076,16841,19329,34785,'2020-12-14','unpaid'),(3854816,458076,16841,19442,4426,'2020-12-14','unpaid'),(3854853,458076,16841,18929,27685,'2020-12-14','unpaid');
/*!40000 ALTER TABLE `payment_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `predoc`
--

DROP TABLE IF EXISTS `predoc`;
/*!50001 DROP VIEW IF EXISTS `predoc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `predoc` AS SELECT 
 1 AS `paymentDocumentID`,
 1 AS `orderID`,
 1 AS `sellerID`,
 1 AS `totalCost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` int NOT NULL,
  `sellerID` int DEFAULT NULL,
  `productName` varchar(64) DEFAULT NULL,
  `pricePerUnit` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `category` text,
  `weight` float DEFAULT NULL,
  `producingCountry` varchar(64) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `quantityOnStock` int DEFAULT NULL,
  `availability` int DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `fk3` (`sellerID`),
  CONSTRAINT `fk3` FOREIGN KEY (`sellerID`) REFERENCES `seller` (`sellerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (826483,19151,'Wintercoat Adidas',3376,0.02,'clothes',2.5,'UK',3.26,80,1),(826553,19230,'Washing machine Bosh',4582,0,'appliance',2.55,'USA',1.71,0,0),(826567,19252,'Toy car',4683,0.08,'toys',0.7,'Russia',0.82,0,0),(826641,19329,'Barbie',6957,0.07,'toys',1.79,'India',3.27,43,1),(826711,19399,'Chair',2257,0.03,'furniture',1,'India',3.61,14,1),(826721,19442,'Mirror',4426,0.16,'furniture',0.88,'Russia',0.53,51,1),(826805,19499,'Wall clock',6774,0.16,'furniture',2.21,'China',0.78,0,0),(826842,19542,'Set of Corean cosmetics',997,0.25,'cosmetics',3.29,'Brazilia',3.47,60,1),(826902,19634,'Iphone XR',587,0.01,'smartphones',1.18,'India',4.69,0,0),(826981,19701,'Smartwatch Xiaomi',2177,0.07,'electronics',2.57,'USA',4.45,31,1),(827015,19758,'Wintercoat Adidas',2068,0.03,'clothes',1.31,'China',4.5,20,1),(827023,18923,'Washing machine Bosh',6945,0.25,'appliance',2.82,'Brazilia',4.79,70,1),(827048,18929,'Toy car',3955,0.06,'toys',1.67,'Brazilia',1.73,73,1),(827080,18972,'Barbie',3316,0.03,'toys',1.26,'UK',2.74,21,1),(827157,19055,'Chair',3229,0.27,'furniture',0.92,'Brazilia',3.32,0,0),(827170,19136,'Mirror',6618,0.24,'furniture',1.79,'India',2.45,27,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `sellerID` int NOT NULL,
  `sellerName` varchar(64) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `email` text,
  `registrationDate` date DEFAULT NULL,
  `quantityOfSoldProducts` int DEFAULT NULL,
  `quantityOfDefectiveProducts` int DEFAULT NULL,
  `rateByDef` float DEFAULT NULL,
  PRIMARY KEY (`sellerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (18923,'DMWear',3.93,'Perm','com.perm@gmail.dmwear','2022-07-17',8950,87,4.39986),(18929,'2Pets',2.75,'Ufa','com.ufa@gmail.2pets','2019-06-17',69,29,3.85329),(18972,'RetroSp',0.44,'Tver','com.tver@gmail.retrosp','2010-09-20',56466,2400,0.923055),(19055,'PrimeCraft',3.06,'Petrozavodsk','com.petrozavodsk@gmail.primecraft','2010-12-06',4365,100,3.95513),(19136,'MagHunt',0.27,'Ufa','com.ufa@gmail.maghunt','2012-03-15',766,3,2.63275),(19151,'1Win',0.94,'Dno','com.dno@gmail.1win','2014-08-27',63456,566,2.54622),(19230,'LukUgar',2.89,'Kostroma','com.kostroma@gmail.lukugar','2014-03-10',6467,35,3.91879),(19252,'GameMSt',1.94,'Perm','com.perm@gmail.gamemst','2011-02-16',365,36,3.44305),(19329,'InterTop',4.29,'Ulyupensk','com.ulyupensk@gmail.intertop','2010-08-10',4533,24,4.62703),(19399,'Kikkers',0.78,'Khabarovsk','com.khabarovsk@gmail.kikkers','2016-08-28',11,1,2.88925),(19442,'SamaraOSG',4.47,'Ufa','com.ufa@gmail.samaraosg','2013-12-17',366,43,4.7028),(19499,'TverProd',0.34,'Moscow','com.moscow@gmail.tverprod','2018-11-09',6,1,2.66925),(19542,'Dno3FR',0.73,'Kostroma','com.kostroma@gmail.dno3fr','2017-02-26',10,0,2.865),(19634,'30HDStec',5,'Vladivostok','com.vladivostok@gmail.30hdstec','2017-04-07',9,0,5),(19701,'SoulCraft',4.26,'Moscow','com.moscow@gmail.soulcraft','2015-08-16',3,1,4.62925),(19758,'DotaGifts',4.89,'Moscow','com.moscow@gmail.dotagifts','2013-01-23',453,13,4.93527);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sellers_revenue`
--

DROP TABLE IF EXISTS `sellers_revenue`;
/*!50001 DROP VIEW IF EXISTS `sellers_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sellers_revenue` AS SELECT 
 1 AS `sellerName`,
 1 AS `revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `specproduct`
--

DROP TABLE IF EXISTS `specproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specproduct` (
  `orderID` int NOT NULL,
  `productID` int NOT NULL,
  `deliveryID` int NOT NULL,
  `paymentDocumentID` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `pricePerUnit` float DEFAULT NULL,
  `plannedDeliveryDate` date DEFAULT NULL,
  `deliveredAt` date DEFAULT NULL,
  `receivedAt` date DEFAULT NULL,
  `specproductStatus` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`orderID`,`productID`,`deliveryID`),
  KEY `fK11` (`productID`),
  KEY `fK12` (`deliveryID`),
  KEY `fk13` (`paymentDocumentID`),
  CONSTRAINT `fk10` FOREIGN KEY (`orderID`) REFERENCES `order_` (`orderID`),
  CONSTRAINT `fK11` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  CONSTRAINT `fK12` FOREIGN KEY (`deliveryID`) REFERENCES `delivery` (`deliveryID`),
  CONSTRAINT `fk13` FOREIGN KEY (`paymentDocumentID`) REFERENCES `payment_document` (`paymentDocumentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specproduct`
--

LOCK TABLES `specproduct` WRITE;
/*!40000 ALTER TABLE `specproduct` DISABLE KEYS */;
INSERT INTO `specproduct` VALUES (457824,826641,1539049,3853514,6,6957,'2017-01-25','2017-01-26','2017-01-30','awaiting receipt'),(457824,826711,1539063,3853594,1,2257,'2017-01-30','2017-01-31','2017-02-06','received'),(457824,826721,1538992,3853477,3,4426,'2017-01-20','2017-01-22','2017-01-26','received'),(457864,826981,1539238,3853706,2,2177,'2018-11-27','2018-11-30','2018-12-05','received'),(457917,826641,1539390,3853865,1,6957,'2021-04-07','2021-04-09','2021-04-16','awaiting receipt'),(457917,826981,1539348,3853785,3,2177,'2021-04-14','2021-04-16','2021-04-17','received'),(457917,827157,1539417,3853940,6,3229,'2021-04-15','2021-04-18','2021-04-25','awaiting receipt'),(457917,827170,1539255,3853741,2,6618,'2021-04-05','2021-04-07','2021-04-11','awaiting receipt'),(457945,826641,1539426,3854001,7,6957,'2017-03-29','2017-04-01','2017-04-06','returned'),(458035,826567,1539966,3854491,5,4683,'2022-06-12','2022-06-13','2022-06-20','awaiting receipt'),(458035,826711,1539884,3854392,4,2257,'2022-05-28','2022-05-29','2022-06-02','returned'),(458035,826805,1539796,3854338,4,6774,'2022-05-31','2022-06-02','2022-06-03','awaiting receipt'),(458035,826805,1539986,3854574,6,6774,'2022-06-15','2022-06-18','2022-06-21','awaiting receipt'),(458076,826483,1540248,3854853,2,3376,'2020-12-26','2020-12-27','2020-12-29',NULL),(458076,826641,1540146,3854716,5,6957,'2020-12-29','2020-12-31','2021-01-06','received'),(458076,826805,1540051,3854637,4,6774,'2021-01-06','2021-01-09','2021-01-14','received'),(458076,826842,1539990,3854576,6,997,'2020-12-21','2020-12-22','2020-12-23','awaiting receipt'),(458076,827048,1540248,3854853,7,3955,'2020-12-26','2020-12-27','2020-12-29','awaiting receipt');
/*!40000 ALTER TABLE `specproduct` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `specproduct_BEFORE_INSERT` BEFORE INSERT ON `specproduct` FOR EACH ROW BEGIN
declare old_quantity int;
select quantityOnStock into old_quantity from product where productID=new.productID;
if old_quantity - new.quantity < 0 then signal sqlstate value '99999' set message_text="Не хвататет товаров на складе";
else update product set quantityOnStock = old_quantity - new.quantity where productID=new.productID;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `transaction_`
--

DROP TABLE IF EXISTS `transaction_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_` (
  `transactionID` int NOT NULL,
  `bankAccountID` int DEFAULT NULL,
  `paymentDocumentID` int DEFAULT NULL,
  `executedAt` date DEFAULT NULL,
  `transactionType` varchar(64) DEFAULT NULL,
  `paymentMethod` varchar(64) DEFAULT NULL,
  `transactionTotalCost` float DEFAULT NULL,
  PRIMARY KEY (`transactionID`),
  KEY `fk7` (`bankAccountID`),
  KEY `fk8` (`paymentDocumentID`),
  CONSTRAINT `fk7` FOREIGN KEY (`bankAccountID`) REFERENCES `bank_account` (`bankAccountID`),
  CONSTRAINT `fk8` FOREIGN KEY (`paymentDocumentID`) REFERENCES `payment_document` (`paymentDocumentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_`
--

LOCK TABLES `transaction_` WRITE;
/*!40000 ALTER TABLE `transaction_` DISABLE KEYS */;
INSERT INTO `transaction_` VALUES (21909435,1302655,3853477,'2017-01-05','order payment','Visa',13278),(21909598,1301603,3853741,'2021-03-19','order payment','ApplePay',13236),(21909654,1301255,3854001,'2017-03-19','refund','Mastercard',48699),(21909786,1301255,3854338,'2022-05-19','order payment','Kiwi',27096),(21909850,1302009,3854576,'2020-12-14','order payment','Mastercard',5982);
/*!40000 ALTER TABLE `transaction_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'makretplace_schema'
--

--
-- Dumping routines for database 'makretplace_schema'
--
/*!50003 DROP PROCEDURE IF EXISTS `set_documentInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_documentInfo`()
BEGIN
declare done int default 0;
declare per1 int;
declare per2 int;
declare per3 int;
declare per4 int;
declare per5 int;
declare per6 date;
declare defSum float;
declare cur cursor for select paymentDocumentID, orderID, customerID, sellerID, totalCost, createdAt from docinfo;
declare exit handler for not found set done=1;
open cur;
while done=0 do
fetch cur into per1, per2, per3, per4, per5, per6;
update payment_document set orderID=per2, customerID=per3, sellerID=per4, documentTotalCost=per5, createdAt=per6 
where paymentDocumentID=per1;
end while;
close cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_rateByDef` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_rateByDef`()
BEGIN
declare done int default 0;
declare per1 int;
declare per2 float;
declare per3 int;
declare defSum float;
declare cur cursor for select sellerID, rating, quantityOfDefectiveProducts from seller;
declare exit handler for not found set done=1;
select sum(quantityOfDefectiveProducts) into defSum from seller;
open cur;
while done=0 do
fetch cur into per1, per2, per3;
update seller set rateByDef = 5*(((defSum-per3)/defSum) + (rating/5))/2 where sellerID=per1;
end while;
close cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_transactionType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_transactionType`()
BEGIN
declare done int default 0;
declare per1 int;
declare per2 varchar(64);
declare cur cursor for select paymentDocumentID, specproductStatus from specproduct;
declare exit handler for not found set done=1;
open cur;
while done=0 do
fetch cur into per1, per2;
if per2="awaiting receipt" or per2="received" then update transaction_ set transactionType="order payment" where paymentDocumentID=per1;
else update transaction_ set transactionType="refund" where  paymentDocumentID=per1;
end if;
end while;
close cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `best_deviverymans`
--

/*!50001 DROP VIEW IF EXISTS `best_deviverymans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `best_deviverymans` AS select `deliveryman`.`deliverymanName` AS `deliverymanName` from ((select `specproduct`.`deliveryID` AS `deliveryID`,`delivery`.`deliverymanID` AS `deliverymanID`,`specproduct`.`orderID` AS `orderID`,`specproduct`.`productID` AS `productID`,`specproduct`.`plannedDeliveryDate` AS `plannedDeliveryDate`,`specproduct`.`deliveredAt` AS `deliveredAt` from (`specproduct` join `delivery` on((`specproduct`.`deliveryID` = `delivery`.`deliveryID`))) where ((`specproduct`.`plannedDeliveryDate` + 1) = `specproduct`.`deliveredAt`)) `q1` join `deliveryman` on((`deliveryman`.`deliverymanID` = `q1`.`deliverymanID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `compare_prices`
--

/*!50001 DROP VIEW IF EXISTS `compare_prices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `compare_prices` AS select `seller`.`sellerName` AS `sellerName`,`product`.`productName` AS `productName`,`product`.`pricePerUnit` AS `pricePerUnit` from (`product` join `seller` on((`product`.`sellerID` = `seller`.`sellerID`))) group by `product`.`productName`,`seller`.`sellerName` order by `product`.`productName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_prefered_categories`
--

/*!50001 DROP VIEW IF EXISTS `customer_prefered_categories`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_prefered_categories` AS select `order_`.`customerID` AS `customerID`,`q1`.`category` AS `category` from ((select `specproduct`.`orderID` AS `orderID`,`specproduct`.`productID` AS `productID`,`product`.`category` AS `category` from (`specproduct` join `product` on((`specproduct`.`productID` = `product`.`productID`)))) `q1` join `order_` on((`order_`.`orderID` = `q1`.`orderID`))) order by `order_`.`customerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `docinfo`
--

/*!50001 DROP VIEW IF EXISTS `docinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `docinfo` AS select `predoc`.`paymentDocumentID` AS `paymentDocumentID`,`order_`.`orderID` AS `orderID`,`order_`.`customerID` AS `customerID`,`predoc`.`sellerID` AS `sellerID`,`predoc`.`totalCost` AS `totalCost`,cast(`order_`.`createdAt` as date) AS `createdAt` from (`predoc` join `order_` on((`predoc`.`orderID` = `order_`.`orderID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `predoc`
--

/*!50001 DROP VIEW IF EXISTS `predoc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `predoc` AS select `specproduct`.`paymentDocumentID` AS `paymentDocumentID`,`specproduct`.`orderID` AS `orderID`,`product`.`sellerID` AS `sellerID`,(`specproduct`.`pricePerUnit` * `specproduct`.`quantity`) AS `totalCost` from (`specproduct` left join `product` on((`specproduct`.`productID` = `product`.`productID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sellers_revenue`
--

/*!50001 DROP VIEW IF EXISTS `sellers_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sellers_revenue` AS select `seller`.`sellerName` AS `sellerName`,`q1`.`transactionTotalCost` AS `revenue` from ((select `payment_document`.`sellerID` AS `sellerID`,`transaction_`.`transactionTotalCost` AS `transactionTotalCost` from (`transaction_` join `payment_document` on((`transaction_`.`paymentDocumentID` = `payment_document`.`paymentDocumentID`))) where (`transaction_`.`transactionType` = 'order payment')) `q1` join `seller` on((`seller`.`sellerID` = `q1`.`sellerID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15 21:56:08
