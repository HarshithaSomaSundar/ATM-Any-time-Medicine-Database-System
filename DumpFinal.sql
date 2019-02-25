-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: medex
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `avg_p`
--

DROP TABLE IF EXISTS `avg_p`;
/*!50001 DROP VIEW IF EXISTS `avg_p`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `avg_p` AS SELECT 
 1 AS `Product_Title`,
 1 AS `ProductPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `best_sellin_product`
--

DROP TABLE IF EXISTS `best_sellin_product`;
/*!50001 DROP VIEW IF EXISTS `best_sellin_product`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `best_sellin_product` AS SELECT 
 1 AS `Product_Title`,
 1 AS `Products_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `best_sellin_product1`
--

DROP TABLE IF EXISTS `best_sellin_product1`;
/*!50001 DROP VIEW IF EXISTS `best_sellin_product1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `best_sellin_product1` AS SELECT 
 1 AS `Product_Title`,
 1 AS `Products_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerFirstName` varchar(45) DEFAULT NULL,
  `CustomerLastName` varchar(45) DEFAULT NULL,
  `CustomerEmailID` varchar(45) DEFAULT NULL,
  `AdressLine1` varchar(45) DEFAULT NULL,
  `AddressLine2` varchar(45) DEFAULT NULL,
  `AddressLine3` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `ZipCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'harshitha','ss','harshuss94@gmail.com','44','parker hill avenue','roxbury crossing','Boston','MA','02120'),(2,'Sheetal','shekar','sheetal@gmail.com','34','cunard street','batwat','Boston','MA','02345'),(3,'praful','Badami','PrafuBadamil@gmail.com','29','inchara street','richmond','ozer','Germany','02560'),(4,'sahana','Jangli','sahanaJangli@gmail.com','46','Bolylston street','op','Boston','MA','02345'),(9,'Vani','Sundar','vani.s@gmail.com','Burbank','Hemenway','Street','Boston','MA','2215'),(10,'Prerna','Aiya','p.aiya@gmail.com','PeterboroughSt','Fenway','Park','Boston','MA','2115');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoice` (
  `InvoiceId` int(11) NOT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `InvoiceDetails` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`InvoiceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'2018-12-20','payment completed'),(2,'2018-12-15','payment fulfilled'),(3,'2018-12-15','payment reached'),(4,'2018-12-25','order confirmed'),(5,'2018-12-04','payment dome');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderitems` (
  `OrderItems_ID` int(11) NOT NULL,
  `OrderItem_Quantity` int(11) DEFAULT NULL,
  `OrderItem_Price` double DEFAULT NULL,
  `Products_Products_ID` int(11) NOT NULL,
  `OrderStatus_OrderStatus_ID` int(11) NOT NULL,
  `Orders_Order_ID` int(11) NOT NULL,
  PRIMARY KEY (`OrderItems_ID`,`Products_Products_ID`),
  KEY `fk_OrderItems_Products1_idx` (`Products_Products_ID`),
  KEY `fk_OrderItems_OrderStatus1_idx` (`OrderStatus_OrderStatus_ID`),
  KEY `fk_OrderItems_Orders1_idx` (`Orders_Order_ID`),
  CONSTRAINT `fk_OrderItems_Products1` FOREIGN KEY (`Products_Products_ID`) REFERENCES `mydb`.`products` (`products_id`),
  CONSTRAINT `fk_Orderid` FOREIGN KEY (`Orders_Order_ID`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `fk_orderstatus` FOREIGN KEY (`OrderStatus_OrderStatus_ID`) REFERENCES `orderstatus` (`orderstatus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,10,240,1,1,1),(2,5,1750,2,2,2),(3,15,15000,4,3,2),(4,25,1250000,7,1,3),(5,3,NULL,1,2,9),(6,19,NULL,1,1,3);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `OrderDetails` varchar(45) DEFAULT NULL,
  `Customers_CustomerID1` int(11) NOT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `fk_Orders_Customers1_idx` (`Customers_CustomerID1`),
  CONSTRAINT `fk_Orders_Customers1` FOREIGN KEY (`Customers_CustomerID1`) REFERENCES `mydb`.`customers` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2018-12-10','drugs and vaccines',1),(2,'2019-01-07','equipments',2),(3,'2018-11-20','medications',3),(4,'2018-10-26','medications',5),(5,'2018-11-15','medications',4),(6,'2018-12-11','equipments',3),(9,'2018-12-11','equipments',2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderstatus` (
  `OrderStatus_ID` int(11) NOT NULL,
  `OrderStatusDesc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrderStatus_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
INSERT INTO `orderstatus` VALUES (1,'New'),(2,'Processing'),(3,'Completed');
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethods`
--

DROP TABLE IF EXISTS `paymentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paymentmethods` (
  `PaymentMethodID` int(11) NOT NULL,
  `PaymentMethorType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PaymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethods`
--

LOCK TABLES `paymentmethods` WRITE;
/*!40000 ALTER TABLE `paymentmethods` DISABLE KEYS */;
INSERT INTO `paymentmethods` VALUES (1,'Credit Card'),(2,'Debit Card'),(3,'Mobile Wallet');
/*!40000 ALTER TABLE `paymentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethods_has_customers`
--

DROP TABLE IF EXISTS `paymentmethods_has_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paymentmethods_has_customers` (
  `PaymentMethods_PaymentMethodID` int(11) NOT NULL,
  `Customers_CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`PaymentMethods_PaymentMethodID`,`Customers_CustomerID`),
  KEY `fk_PaymentMethods_has_Customers_Customers1_idx` (`Customers_CustomerID`),
  KEY `fk_PaymentMethods_has_Customers_PaymentMethods1_idx` (`PaymentMethods_PaymentMethodID`),
  CONSTRAINT `fk_PaymentMethods_has_Customers_Customers1` FOREIGN KEY (`Customers_CustomerID`) REFERENCES `mydb`.`customers` (`customerid`),
  CONSTRAINT `fk_PaymentMethods_has_Customers_PaymentMethods1` FOREIGN KEY (`PaymentMethods_PaymentMethodID`) REFERENCES `mydb`.`paymentmethods` (`paymentmethodid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethods_has_customers`
--

LOCK TABLES `paymentmethods_has_customers` WRITE;
/*!40000 ALTER TABLE `paymentmethods_has_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentmethods_has_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payments` (
  `PaymentId` int(11) NOT NULL,
  `PaymentAmount` int(11) DEFAULT NULL,
  `Invoice_InvoiceId` int(11) NOT NULL,
  `orderIDFK` int(11) DEFAULT NULL,
  PRIMARY KEY (`PaymentId`),
  KEY `fk_Payments_Invoice2_idx` (`Invoice_InvoiceId`),
  KEY `fk_order` (`orderIDFK`),
  CONSTRAINT `fk_inv` FOREIGN KEY (`Invoice_InvoiceId`) REFERENCES `invoice` (`invoiceid`),
  CONSTRAINT `fk_order` FOREIGN KEY (`orderIDFK`) REFERENCES `orderitems` (`orders_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,240,1,1),(2,16750,2,2),(3,1250000,3,3);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_categories` (
  `CategoryID` int(11) NOT NULL,
  `Category_Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Drugs'),(2,'Vaccines'),(3,'Equipments');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!50001 DROP VIEW IF EXISTS `product_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `product_info` AS SELECT 
 1 AS `Products_ID`,
 1 AS `Product_Title`,
 1 AS `ProductPrice`,
 1 AS `Pro_Description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `Products_ID` int(11) NOT NULL,
  `Product_Title` varchar(45) DEFAULT NULL,
  `Pro_Description` varchar(150) DEFAULT NULL,
  `ProductPrice` varchar(45) DEFAULT NULL,
  `ProductQuantity` varchar(45) DEFAULT NULL,
  `Supplier_SupplierId` int(11) NOT NULL,
  `Product_Categories_CategoryID` int(11) NOT NULL,
  PRIMARY KEY (`Products_ID`),
  KEY `fk_Products_Supplier1_idx` (`Supplier_SupplierId`),
  KEY `fk_Products_Product_Categories1_idx` (`Product_Categories_CategoryID`),
  KEY `by_products_name` (`Product_Title`),
  CONSTRAINT `fk_Products_Product_Categories1` FOREIGN KEY (`Product_Categories_CategoryID`) REFERENCES `mydb`.`product_categories` (`categoryid`),
  CONSTRAINT `fk_Products_Supplier1` FOREIGN KEY (`Supplier_SupplierId`) REFERENCES `mydb`.`supplier` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'ARIPIPRAZOLEABILIFY','is an antipsychotic medication used to treat schizophrenia','24','100',1,1),(2,'Gelnique','gelGelnique is a quick-drying, colorless topical gel used to treat symptoms of overactive bladder','350','100',1,1),(3,'BROMOCRIPTINE','Parlodel is used to treat amenorrhea, a condition in which the menstrual period does not occur','450','200',1,1),(4,'Inforce 3 Respiratory Vaccine','Inforce 3 is an intranasal vaccine used for the vaccination of healthy','1000','100',2,2),(5,'Fowl Pox vaccine','vaccine is for vaccination of healthy chickens aged 8 weeks or older','4000','50',2,2),(6,'Cavalry 9 Cattle Vaccine','For prevention of Clostridium chauvoei, septicum','5600','20',2,2),(7,'Blood gas analyzer','In blood gas analysis, you measure O2, CO2 and pH in the blood of critically ill patients','50000','40',3,3),(8,'Williams Sound PockeTalke','Pocketalker Ultra System amplifies sounds closest to the listener while reducing background noise','10000','100',3,3),(9,'Bock Medical Edition ENT Kit','Disposable Specula work with our otoscope','6700','100',3,3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tblproductsInsertaudit` AFTER INSERT ON `products` FOR EACH ROW Begin
#set @productId= Old.productID;
insert into tblproductsaudit
(
productID ,
actionPerformed ,
updatedBy,
updatedOn) values (Products_ID,"INSERT",user(),now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tblproductsaudit` BEFORE UPDATE ON `products` FOR EACH ROW Begin
#set @productId= Old.productID;
insert into tblproductsaudit
(
productID ,
actionPerformed ,
updatedBy,
updatedOn) values (OLD.Products_ID,"UPDATE",user(),now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tblproductsDeleteaudit` AFTER DELETE ON `products` FOR EACH ROW Begin
#set @productId= Old.productID;
insert into tblproductsaudit
(
productID ,
actionPerformed ,
updatedBy,
updatedOn) values (OLD.Products_ID,"DELETE",user(),now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `quart_orders`
--

DROP TABLE IF EXISTS `quart_orders`;
/*!50001 DROP VIEW IF EXISTS `quart_orders`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `quart_orders` AS SELECT 
 1 AS `CustomerID`,
 1 AS `CustomerFirstName`,
 1 AS `City`,
 1 AS `State`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipment` (
  `ShipmentID` int(11) NOT NULL,
  `TrackingNumber` varchar(45) DEFAULT NULL,
  `ShipmentDate` date DEFAULT NULL,
  `Invoice_InvoiceId` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ShipmentID`),
  KEY `fk_Shipment_Invoice2_idx` (`Invoice_InvoiceId`),
  KEY `fk_oID` (`OrderID`),
  CONSTRAINT `fk_invoice` FOREIGN KEY (`Invoice_InvoiceId`) REFERENCES `invoice` (`invoiceid`),
  CONSTRAINT `fk_oID` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (1,'29OFY78','2019-01-04',1,1),(2,'67YTH0','2018-12-25',2,2),(3,'FKIO987','2018-12-28',3,3),(4,'WHI78J','2019-01-17',4,4),(5,'OKL456','2018-12-17',5,5);
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_has_orderitems`
--

DROP TABLE IF EXISTS `shipment_has_orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipment_has_orderitems` (
  `Shipment_ShipmentID` int(11) NOT NULL,
  `OrderItems_OrderItems_ID` int(11) NOT NULL,
  PRIMARY KEY (`Shipment_ShipmentID`,`OrderItems_OrderItems_ID`),
  KEY `fk_Shipment_has_OrderItems_OrderItems1_idx` (`OrderItems_OrderItems_ID`),
  KEY `fk_Shipment_has_OrderItems_Shipment1_idx` (`Shipment_ShipmentID`),
  CONSTRAINT `fk_Shipment_has_OrderItems_OrderItems1` FOREIGN KEY (`OrderItems_OrderItems_ID`) REFERENCES `mydb`.`orderitems` (`orderitems_id`),
  CONSTRAINT `fk_Shipment_has_OrderItems_Shipment1` FOREIGN KEY (`Shipment_ShipmentID`) REFERENCES `mydb`.`shipment` (`shipmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_has_orderitems`
--

LOCK TABLES `shipment_has_orderitems` WRITE;
/*!40000 ALTER TABLE `shipment_has_orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_has_orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier` (
  `SupplierId` int(11) NOT NULL,
  `SupplierFirstName` varchar(45) DEFAULT NULL,
  `SupplierLastName` varchar(45) DEFAULT NULL,
  `SupplierDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SupplierId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'CVS','pharm','Supplies all the drugs from crx'),(2,'Appolo','farm','Supplies all the nescessary vaccines'),(3,'Maiyas','farm','Supplies the nescessary medical equipments');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductsaudit`
--

DROP TABLE IF EXISTS `tblproductsaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblproductsaudit` (
  `productAuditID` int(11) NOT NULL AUTO_INCREMENT,
  `productID` int(11) DEFAULT NULL,
  `actionPerformed` varchar(20) DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`productAuditID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductsaudit`
--

LOCK TABLES `tblproductsaudit` WRITE;
/*!40000 ALTER TABLE `tblproductsaudit` DISABLE KEYS */;
INSERT INTO `tblproductsaudit` VALUES (1,1,'UPDATE','root@localhost','2018-12-10 22:54:09'),(2,2,'UPDATE','root@localhost','2018-12-10 22:54:09'),(3,3,'UPDATE','root@localhost','2018-12-10 22:54:09'),(4,4,'UPDATE','root@localhost','2018-12-10 22:54:09'),(5,5,'UPDATE','root@localhost','2018-12-10 22:54:09'),(6,6,'UPDATE','root@localhost','2018-12-10 22:54:09'),(7,7,'UPDATE','root@localhost','2018-12-10 22:54:09'),(8,8,'UPDATE','root@localhost','2018-12-10 22:54:09'),(9,9,'UPDATE','root@localhost','2018-12-10 22:54:09'),(10,10,'UPDATE','root@localhost','2018-12-10 22:54:09'),(11,3,'UPDATE','root@localhost','2018-12-10 22:56:01'),(12,4,'UPDATE','root@localhost','2018-12-10 22:56:12'),(13,5,'UPDATE','root@localhost','2018-12-10 22:56:20'),(14,6,'UPDATE','root@localhost','2018-12-10 22:56:26'),(15,7,'UPDATE','root@localhost','2018-12-10 22:56:34'),(16,4,'UPDATE','root@localhost','2018-12-10 22:57:23'),(17,4,'UPDATE','root@localhost','2018-12-10 22:59:52'),(18,10,'DELETE','root@localhost','2018-12-10 23:10:53');
/*!40000 ALTER TABLE `tblproductsaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'medex'
--
/*!50003 DROP PROCEDURE IF EXISTS `proce` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proce`(IN orderId int)
Begin
select OrderItem_Quantity,OrderItem_Price,Products_Products_ID from Orderitems where Orders_Order_ID= orderId;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `productbasedonCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `productbasedonCategory`(IN category varchar(25))
Begin
select Product_Title  from products p inner join product_categories c on p.Product_Categories_CategoryID=c.CategoryID where c.CategoryID=(select CategoryID from product_categories where Category_Description=category);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `productbasedoncustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `productbasedoncustomer`(IN customerID int)
Begin
select * from products where Products_ID=(Select Products_Products_ID from orderitems where Orders_Order_ID =(select Order_ID from orders where Customers_CustomerID1=customerID));
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Search_Product_Price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Search_Product_Price`(IN p_name varchar(45))
BEGIN
  SELECT productPrice
  FROM products
  WHERE product_Title = p_name;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TotalPricebasedonOrderID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TotalPricebasedonOrderID`(IN orderId int)
Begin
select sum(p.ProductPrice * o.OrderItem_Quantity) as total from products p inner join orderitems o on p.Products_ID = o.Products_Products_ID where o.Orders_Order_ID=orderId group by o.Orders_Order_ID;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `avg_p`
--

/*!50001 DROP VIEW IF EXISTS `avg_p`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_p` AS select `products`.`Product_Title` AS `Product_Title`,`products`.`ProductPrice` AS `ProductPrice` from `products` where (`products`.`ProductPrice` > (select avg(`products`.`ProductPrice`) from `products`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `best_sellin_product`
--

/*!50001 DROP VIEW IF EXISTS `best_sellin_product`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `best_sellin_product` AS select `products`.`Product_Title` AS `Product_Title`,`products`.`Products_ID` AS `Products_ID` from (`products` join `orderitems` on((`products`.`Products_ID` = `orderitems`.`Products_Products_ID`))) group by `products`.`Products_ID` having count(`products`.`Products_ID`) order by `products`.`Products_ID` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `best_sellin_product1`
--

/*!50001 DROP VIEW IF EXISTS `best_sellin_product1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `best_sellin_product1` AS select `products`.`Product_Title` AS `Product_Title`,`products`.`Products_ID` AS `Products_ID` from (`products` join `orderitems` on((`products`.`Products_ID` = `orderitems`.`Products_Products_ID`))) group by `products`.`Products_ID` having count(`products`.`Products_ID`) order by `products`.`Products_ID` asc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_info`
--

/*!50001 DROP VIEW IF EXISTS `product_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_info` AS select `products`.`Products_ID` AS `Products_ID`,`products`.`Product_Title` AS `Product_Title`,`products`.`ProductPrice` AS `ProductPrice`,`products`.`Pro_Description` AS `Pro_Description` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quart_orders`
--

/*!50001 DROP VIEW IF EXISTS `quart_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quart_orders` AS select distinct `customers`.`CustomerID` AS `CustomerID`,`customers`.`CustomerFirstName` AS `CustomerFirstName`,`customers`.`City` AS `City`,`customers`.`State` AS `State` from (`customers` join `orders` on((`customers`.`CustomerID` = `orders`.`Customers_CustomerID1`))) where (`orders`.`OrderDate` between '2018-10-26' and '2018-12-10') */;
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

-- Dump completed on 2018-12-11 12:26:36
