-- MySQL dump 10.13  Distrib 5.7.22, for osx10.13 (x86_64)
--
-- Host: localhost    Database: dev_airbnb_listingdetails
-- ------------------------------------------------------
-- Server version	5.7.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dev_airbnb_listingdetails`
--

-- CREATE DATABASE /*!32312 IF NOT EXISTS*/ dev_airbnb_listingdetails /*!40100 DEFAULT CHARACTER SET utf8 */;

\c dev_airbnb_listingdetails;

--
-- Table structure for table `refAmenities`
--

-- DROP TABLE IF EXISTS refAmenities;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE refAmenities (
--   id bigint,
--   category varchar(100) NOT NULL,
--   subCategory varchar(100) NOT NULL,
--   additionalComments varchar(100) DEFAULT NULL,
--   PRIMARY KEY (id)
-- ) 

-- ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refAmenities`
--

-- LOCK TABLE refAmenities WRITE;
/*!40000 ALTER TABLE `refAmenities` DISABLE KEYS */;
-- INSERT INTO refAmenities VALUES (1,'Basic','Wifi','Continuous access in the listing'),(2,'Basic','Iron',NULL),(3,'Basic','Wifi','Continuous access in the listing'),(4,'Basic','Iron',NULL),(5,'Basic','Washer','In the building, free or for a fee'),(6,'Basic','Air conditioning',NULL),(7,'Basic','Heating','Central heating or a heater in the listing'),(8,'Basic','Essentials','Towels, bed sheets, soap, and toilet paper'),(9,'Basic','Hot water',NULL),(10,'Basic','Indoor fireplace',NULL),(11,'Facilities','Paid parking on premise',NULL),(12,'Dining','Kitchen','Space where guests can cook their own meals'),(13,'Dining','Microwave',NULL),(14,'Dining','Oven',NULL),(15,'Dining','Cooking basics',NULL),(16,'Dining','Dishes and silverware',NULL),(17,'Dining','Refrigerator',NULL),(18,'Dining','Stove',NULL),(19,'Guest access','Host greets you',NULL),(20,'Guest access','Private entrance','Separate street or building entrance'),(21,'Bed and bath','Shampoo',NULL),(22,'Bed and bath','Hair dryer',NULL),(23,'Bed and bath','Hangers',NULL),(24,'Bed and bath','Bed linens',NULL),(25,'Outdoor','Patio or balcony',NULL),(26,'Location','Beachfront',NULL),(27,'Location','Waterfront',NULL),(28,'Not included','Carbon monoxide detector',NULL),(29,'Not included','Smoke detector',NULL),(30,'Basic','Wifi','Continuous access in the listing'),(31,'Basic','Iron',NULL),(32,'Basic','Washer','In the building, free or for a fee'),(33,'Basic','Air conditioning',NULL),(34,'Basic','Heating','Central heating or a heater in the listing'),(35,'Basic','Essentials','Towels, bed sheets, soap, and toilet paper'),(36,'Basic','Hot water',NULL),(37,'Basic','Indoor fireplace',NULL),(38,'Facilities','Paid parking on premise',NULL),(39,'Dining','Kitchen','Space where guests can cook their own meals'),(40,'Dining','Microwave',NULL),(41,'Dining','Oven',NULL),(42,'Dining','Cooking basics',NULL),(43,'Dining','Dishes and silverware',NULL),(44,'Dining','Refrigerator',NULL),(45,'Dining','Stove',NULL),(46,'Guest access','Host greets you',NULL),(47,'Guest access','Private entrance','Separate street or building entrance'),(48,'Bed and bath','Shampoo',NULL),(49,'Bed and bath','Hair dryer',NULL),(50,'Bed and bath','Hangers',NULL),(51,'Bed and bath','Bed linens',NULL),(52,'Outdoor','Patio or balcony',NULL),(53,'Location','Beachfront',NULL),(54,'Location','Waterfront',NULL),(55,'Not included','Carbon monoxide detector',NULL),(56,'Not included','Smoke detector',NULL);
/*!40000 ALTER TABLE `refAmenities` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `refTheSpace`
--

-- DROP TABLE IF EXISTS refTheSpace;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE refTheSpace (
--   id bigint,
--   theSpace text
-- ) 
-- ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refTheSpace`
--

-- LOCK TABLE refTheSpace WRITE;
/*!40000 ALTER TABLE `refTheSpace` DISABLE KEYS */;
/*!40000 ALTER TABLE `refTheSpace` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `tblAmenities`
--

-- DROP TABLE IF EXISTS tblAmenities;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE tblAmenities (
--   id bigint,
--   listingID smallint,
--   pictogramID smallint,
--   category varchar(100) NOT NULL,
--   subCategory varchar(100) NOT NULL,
--   additionalComments varchar(100) DEFAULT NULL,
--   PRIMARY KEY (id)
-- ) 
-- ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblAmenities`
--

-- LOCK TABLE tblAmenities WRITE;
/*!40000 ALTER TABLE `tblAmenities` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblAmenities` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `tblListingLocation`
--

-- DROP TABLE IF EXISTS tblListingLocation;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE tblListingLocation (
--   id bigint,
--   ListingName varchar(100) NOT NULL,
--   ListingBlurb varchar(50) NOT NULL,
--   Neighborhood varchar(100) NOT NULL,
--   PRIMARY KEY (id)
-- ) 
-- ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblListingLocation`
--

-- LOCK TABLE tblListingLocation WRITE;
/*!40000 ALTER TABLE `tblListingLocation` DISABLE KEYS */;
-- INSERT INTO tblListingLocation VALUES (1,'Synchronised multimedia synergy','Frontline','Pitangui'),(2,'Diverse 5th generation monitoring','radical','Ruda Śląska'),(3,'Monitored incremental open system','product','Nongba'),(4,'Usercentric uniform extranet','maximized','San Luis'),(5,'Frontline contextsensitive focus group','contingency','København'),(6,'Focused objectoriented concept','analyzer','Cancas'),(7,'Optimized incremental customer loyalty','focus group','Venâncio Aires'),(8,'Inverse multimedia hierarchy','moderator','Razan'),(9,'Mandatory fullrange orchestration','portal','Wuguishan'),(10,'Reverseengineered homogeneous neuralnet','knowledge base','Cocachacra'),(11,'Digitized systemic pricing structure','heuristic','Huangjin'),(12,'Mandatory multimedia extranet','Customerfocused','Xia Zanggor'),(13,'Implemented freshthinking migration','paradigm','Ballinteer'),(14,'Networked systemworthy projection','Fundamental','Sīnah'),(15,'Synchronised hybrid focus group','monitoring','La Mesa'),(16,'Frontline evenkeeled open architecture','Profound','Vashkivtsi'),(17,'Balanced asynchronous productivity','Horizontal','Kuncen'),(18,'Objectbased secondary approach','matrix','Dubiecko'),(19,'Multichannelled userfacing collaboration','Customizable','Menara'),(20,'Robust humanresource workforce','Enterprisewide','Flers'),(21,'Digitized userfacing functionalities','analyzing','Zarechnyy'),(22,'Compatible modular attitude','Deengineered','Quebradas'),(23,'Synergistic highlevel challenge','Qualityfocused','Courbevoie'),(24,'Versatile coherent benchmark','Standalone','Xam Nua'),(25,'Mandatory scalable protocol','multitasking','Dalarik'),(26,'Focused tertiary flexibility','installation','Wangwu'),(27,'Ameliorated needsbased emulation','systemworthy','Zalantun'),(28,'Innovative regional knowledge user','structure','Shuitou'),(29,'Intuitive foreground alliance','Inverse','Saripin'),(30,'Userfriendly incremental secured line','moratorium','Xingang'),(31,'Streamlined optimal instruction set','zero tolerance','Ludishan'),(32,'Triplebuffered freshthinking framework','alliance','Cikadu'),(33,'Seamless impactful hardware','Adaptive','Shimokizukuri'),(34,'Streamlined userfacing knowledge base','open system','Xishui'),(35,'Decentralized exuding framework','open architecture','Heimahe'),(36,'Switchable nonvolatile frame','national','Huanshan'),(37,'Multitiered neutral installation','Total','Camindangan'),(38,'Universal directional customer loyalty','explicit','Bohou'),(39,'Objectbased modular interface','reciprocal','Mondoteko'),(40,'Frontline missioncritical budgetary management','secured line','Chernukha'),(41,'Expanded logistical structure','solutionoriented','Milltown'),(42,'Customizable clientserver synergy','Intuitive','Shani'),(43,'Diverse static servicedesk','analyzing','Kỳ Anh'),(44,'Teamoriented stable hardware','parallelism','Iława'),(45,'Advanced clientserver artificial intelligence','adapter','Caopie'),(46,'Visionoriented scalable instruction set','Synergistic','Vicente Guerrero'),(47,'Reactive asynchronous open architecture','Synergized','Shanhe'),(48,'Customerfocused bottomline infomediaries','Managed','Leyuan'),(49,'Streamlined 6th generation capability','Ameliorated','Toulon'),(50,'Businessfocused logistical functionalities','Qualityfocused','Agassiz'),(51,'Face to face fullrange implementation','migration','Malabor'),(52,'Reverseengineered missioncritical capability','capability','Boshchorbogh'),(53,'Distributed bidirectional installation','systemworthy','Mancha Khiri'),(54,'Face to face multitasking initiative','Phased','Novosmolinskiy'),(55,'Customizable logistical implementation','superstructure','Wakefield'),(56,'Multichannelled zero defect hardware','Assimilated','Ortigueira'),(57,'Implemented contextuallybased instruction set','Visionary','Nirasaki'),(58,'Universal ecocentric project','capability','Sosnogorsk'),(59,'Networked mobile paradigm','productivity','Neochórion'),(60,'Multilayered leading edge middleware','Ergonomic','Morje'),(61,'Multilayered hybrid installation','Crossplatform','Kępie Żaleszańskie'),(62,'Organized 3rd generation infrastructure','Streamlined','El Cuy'),(63,'Inverse homogeneous neuralnet','toolset','Banjar Tengahbelayu'),(64,'Frontline humanresource adapter','Networked','Sayyān'),(65,'Profitfocused exuding support','benchmark','Xiaoshun'),(66,'Automated zero tolerance approach','hierarchy','Daba'),(67,'Phased scalable groupware','faulttolerant','DawaDawa'),(68,'Phased webenabled access','matrix','Raków'),(69,'Monitored bottomline superstructure','knowledge user','Thomastown'),(70,'Proactive radical challenge','approach','Alcácer do Sal'),(71,'Virtual optimal moderator','timeframe','Ma’an'),(72,'Profitfocused homogeneous protocol','hub','Roche Terre'),(73,'Secured radical hierarchy','Universal','Francisco I Madero'),(74,'Frontline multitasking matrix','modular','Sinop'),(75,'Adaptive realtime migration','bidirectional','Siaya'),(76,'Selfenabling wellmodulated datawarehouse','zero tolerance','Taiping'),(77,'Qualityfocused foreground orchestration','stable','Ventsy'),(78,'Publickey multimedia process improvement','secured line','Huanglin'),(79,'Reactive asynchronous complexity','national','Barrosas'),(80,'Recontextualized wellmodulated moderator','Teamoriented','Tonghu'),(81,'Downsized background workforce','Recontextualized','Trondheim'),(82,'Multichannelled zero defect challenge','24 hour','Xingyi'),(83,'Customerfocused next generation instruction set','systemworthy','Pandat'),(84,'Teamoriented intermediate challenge','neutral','Cagliari'),(85,'Extended tertiary archive','Selfenabling','PetrovoDal’neye'),(86,'Cloned objectoriented synergy','heuristic','Aurora'),(87,'Face to face local budgetary management','Advanced','Haiyangsuo'),(88,'Publickey 24 hour approach','open system','Brunssum'),(89,'Digitized systemic framework','faulttolerant','Karangpawitan'),(90,'Devolved static model','Implemented','Nikita'),(91,'Realigned contextuallybased synergy','Operative','Villa Yapacaní'),(92,'Programmable leading edge focus group','Synchronised','Mönchengladbach'),(93,'Standalone background solution','neutral','Bhāi Pheru'),(94,'Standalone regional array','executive','Enriquillo'),(95,'Compatible foreground ability','leading edge','Extremoz'),(96,'Customerfocused scalable application','Cloned','Oslo'),(97,'Optional systemic installation','Multitiered','Kurnia'),(98,'Streamlined responsive throughput','discrete','Novyy Svit'),(99,'Futureproofed multimedia definition','Advanced','Kertanegla'),(100,'Recontextualized motivating analyzer','concept','Bailai');
/*!40000 ALTER TABLE `tblListingLocation` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `tblListingOverview`
--

-- DROP TABLE IF EXISTS tblListingOverview;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE tblListingOverview (
--   id bigint,
--   summary text,
--   theSpace text,
--   guestAccess text,
--   interactionWithGuests text,
--   otherThingsToNote text,
--   homeHighlights1 text,
--   homeHighlights2 text,
--   homeHighlights3 text,
--   houseRules text,
--   noOfGuests smallint DEFAULT '0',
--   noOfBeds smallint DEFAULT '0',
--   noOfBedrooms smallint DEFAULT '0',
--   noOfBaths smallint DEFAULT '0',
--   PRIMARY KEY (id)
-- ) 
-- ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblListingOverview`
--

-- LOCK TABLE tblListingOverview WRITE;
/*!40000 ALTER TABLE `tblListingOverview` DISABLE KEYS */;
-- /*!40000 ALTER TABLE `tblListingOverview` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `tblPictograms`
--

-- DROP TABLE IF EXISTS tblPictograms;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE tblPictograms (
--   id bigint,
--   imgName varchar(100) NOT NULL,
--   imgData bytea,
--   PRIMARY KEY (id)
-- ) 
-- ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblPictograms`
--

-- LOCK TABLE tblPictograms WRITE;
/*!40000 ALTER TABLE `tblPictograms` DISABLE KEYS */;
-- INSERT INTO tblPictograms VALUES (1,'bathtub','placeholder for data'),(2,'bath','placeholder for data'),(3,'bed-3','placeholder for data'),(4,'bed-2','placeholder for data'),(5,'bed-1','placeholder for data'),(6,'baby-bed','placeholder for data'),(7,'baby','placeholder for data'),(8,'bed','placeholder for data'),(9,'iron','placeholder for data'),(10,'laptop','placeholder for data'),(11,'wifi','placeholder for data'),(12,'washing-machine','placeholder for data'),(13,'towel','placeholder for data'),(14,'television','placeholder for data'),(15,'couple','placeholder for data'),(16,'open-door-aperture','placeholder for data');
/*!40000 ALTER TABLE `tblPictograms` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `tblSleepingArrangements`
--

-- DROP TABLE IF EXISTS tblSleepingArrangements;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE tblSleepingArrangements (
--   id bigint,
--   listingID bigint,
--   roomName varchar(100) NOT NULL,
--   noOfBeds smallint DEFAULT '0',
--   typeOfBed varchar(100) DEFAULT NULL,
--   PRIMARY KEY (id)
-- ) 
-- ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblSleepingArrangements`
--

-- LOCK TABLE tblSleepingArrangements WRITE;
/*!40000 ALTER TABLE `tblSleepingArrangements` DISABLE KEYS */;
-- INSERT INTO tblSleepingArrangements VALUES (1,1,'bedroom',2,'Double'),(2,2,'common space',2,'Sofa'),(3,3,'Master bedroom',2,'King'),(4,4,'bedroom',2,'Double'),(5,5,'Master bedroom',2,'King'),(6,6,'Master bedroom',2,'King'),(7,7,'bedroom',2,'Double'),(8,8,'common space',2,'Sofa'),(9,9,'Master bedroom',2,'King'),(10,10,'bedroom',2,'Double'),(11,11,'Master bedroom',2,'King'),(12,12,'Master bedroom',2,'King'),(13,13,'common space',2,'Sofa'),(14,14,'common space',2,'Sofa'),(15,15,'bedroom',2,'Double'),(16,16,'Master bedroom',2,'King'),(17,17,'Master bedroom',2,'King'),(18,18,'bedroom',2,'Double'),(19,19,'bedroom',2,'Double'),(20,20,'common space',2,'Sofa'),(21,21,'Master bedroom',2,'King'),(22,22,'Master bedroom',2,'King'),(23,23,'common space',2,'Sofa'),(24,24,'Master bedroom',2,'King'),(25,25,'Master bedroom',2,'King'),(26,26,'Master bedroom',2,'King'),(27,27,'bedroom',2,'Double'),(28,28,'bedroom',2,'Double'),(29,29,'Master bedroom',2,'King'),(30,30,'Master bedroom',2,'King'),(31,31,'bedroom',2,'Double'),(32,32,'bedroom',2,'Double'),(33,33,'common space',2,'Sofa'),(34,34,'common space',2,'Sofa'),(35,35,'common space',2,'Sofa'),(36,36,'common space',2,'Sofa'),(37,37,'bedroom',2,'Double'),(38,38,'bedroom',2,'Double'),(39,39,'Master bedroom',2,'King'),(40,40,'Master bedroom',2,'King'),(41,41,'bedroom',2,'Double'),(42,42,'common space',2,'Sofa'),(43,43,'Master bedroom',2,'King'),(44,44,'Master bedroom',2,'King'),(45,45,'bedroom',2,'Double'),(46,46,'Master bedroom',2,'King'),(47,47,'Master bedroom',2,'King'),(48,48,'Master bedroom',2,'King'),(49,49,'Master bedroom',2,'King'),(50,50,'Master bedroom',2,'King'),(51,51,'common space',2,'Sofa'),(52,52,'bedroom',2,'Double'),(53,53,'bedroom',2,'Double'),(54,54,'bedroom',2,'Double'),(55,55,'common space',2,'Sofa'),(56,56,'Master bedroom',2,'King'),(57,57,'Master bedroom',2,'King'),(58,58,'Master bedroom',2,'King'),(59,59,'bedroom',2,'Double'),(60,60,'Master bedroom',2,'King'),(61,61,'Master bedroom',2,'King'),(62,62,'Master bedroom',2,'King'),(63,63,'common space',2,'Sofa'),(64,64,'bedroom',2,'Double'),(65,65,'common space',2,'Sofa'),(66,66,'bedroom',2,'Double'),(67,67,'Master bedroom',2,'King'),(68,68,'Master bedroom',2,'King'),(69,69,'common space',2,'Sofa'),(70,70,'common space',2,'Sofa'),(71,71,'bedroom',2,'Double'),(72,72,'bedroom',2,'Double'),(73,73,'common space',2,'Sofa'),(74,74,'common space',2,'Sofa'),(75,75,'bedroom',2,'Double'),(76,76,'common space',2,'Sofa'),(77,77,'Master bedroom',2,'King'),(78,78,'common space',2,'Sofa'),(79,79,'Master bedroom',2,'King'),(80,80,'common space',2,'Sofa'),(81,81,'common space',2,'Sofa'),(82,82,'bedroom',2,'Double'),(83,83,'common space',2,'Sofa'),(84,84,'Master bedroom',2,'King'),(85,85,'common space',2,'Sofa'),(86,86,'bedroom',2,'Double'),(87,87,'Master bedroom',2,'King'),(88,88,'Master bedroom',2,'King'),(89,89,'common space',2,'Sofa'),(90,90,'bedroom',2,'Double'),(91,91,'Master bedroom',2,'King'),(92,92,'bedroom',2,'Double'),(93,93,'Master bedroom',2,'King'),(94,94,'bedroom',2,'Double'),(95,95,'bedroom',2,'Double'),(96,96,'bedroom',2,'Double'),(97,97,'common space',2,'Sofa'),(98,98,'Master bedroom',2,'King'),(99,99,'bedroom',2,'Double'),(100,100,'common space',2,'Sofa'),(101,1,'common space',2,'Sofa'),(102,2,'Master bedroom',2,'King'),(103,3,'Master bedroom',2,'King'),(104,4,'bedroom',2,'Double'),(105,5,'Master bedroom',2,'King'),(106,6,'Master bedroom',2,'King'),(107,7,'common space',2,'Sofa'),(108,8,'common space',2,'Sofa'),(109,9,'bedroom',2,'Double'),(110,10,'common space',2,'Sofa'),(111,11,'common space',2,'Sofa'),(112,12,'bedroom',2,'Double'),(113,13,'common space',2,'Sofa'),(114,14,'bedroom',2,'Double'),(115,15,'bedroom',2,'Double'),(116,16,'bedroom',2,'Double'),(117,17,'bedroom',2,'Double'),(118,18,'Master bedroom',2,'King'),(119,19,'common space',2,'Sofa'),(120,20,'bedroom',2,'Double'),(121,21,'Master bedroom',2,'King'),(122,22,'bedroom',2,'Double'),(123,23,'Master bedroom',2,'King'),(124,24,'bedroom',2,'Double'),(125,25,'common space',2,'Sofa'),(126,26,'common space',2,'Sofa'),(127,27,'common space',2,'Sofa'),(128,28,'common space',2,'Sofa'),(129,29,'common space',2,'Sofa'),(130,30,'Master bedroom',2,'King'),(131,59,'common space',2,'Sofa'),(132,60,'Master bedroom',2,'King'),(133,61,'common space',2,'Sofa'),(134,62,'bedroom',2,'Double'),(135,63,'common space',2,'Sofa'),(136,64,'common space',2,'Sofa'),(137,65,'common space',2,'Sofa'),(138,66,'Master bedroom',2,'King'),(139,67,'bedroom',2,'Double'),(140,68,'bedroom',2,'Double'),(141,69,'common space',2,'Sofa'),(142,70,'bedroom',2,'Double'),(143,71,'Master bedroom',2,'King'),(144,72,'bedroom',2,'Double'),(145,73,'common space',2,'Sofa'),(146,74,'common space',2,'Sofa'),(147,75,'common space',2,'Sofa'),(148,76,'common space',2,'Sofa'),(149,77,'Master bedroom',2,'King'),(150,78,'bedroom',2,'Double'),(151,79,'bedroom',2,'Double'),(152,80,'common space',2,'Sofa'),(153,81,'Master bedroom',2,'King'),(154,82,'common space',2,'Sofa'),(155,83,'Master bedroom',2,'King'),(156,84,'common space',2,'Sofa'),(157,85,'bedroom',2,'Double'),(158,86,'common space',2,'Sofa'),(159,87,'Master bedroom',2,'King'),(160,88,'common space',2,'Sofa'),(161,89,'Master bedroom',2,'King'),(162,90,'Master bedroom',2,'King'),(163,91,'common space',2,'Sofa'),(164,92,'common space',2,'Sofa'),(165,93,'common space',2,'Sofa'),(166,94,'bedroom',2,'Double'),(167,95,'Master bedroom',2,'King'),(168,96,'common space',2,'Sofa'),(169,97,'Master bedroom',2,'King'),(170,98,'Master bedroom',2,'King'),(171,99,'Master bedroom',2,'King'),(172,100,'common space',2,'Sofa'),(173,1,'bedroom',2,'Double'),(174,2,'common space',2,'Sofa'),(175,3,'Master bedroom',2,'King'),(176,4,'bedroom',2,'Double'),(177,5,'Master bedroom',2,'King'),(178,6,'Master bedroom',2,'King'),(179,7,'bedroom',2,'Double'),(180,8,'common space',2,'Sofa'),(181,9,'Master bedroom',2,'King'),(182,10,'bedroom',2,'Double'),(183,11,'Master bedroom',2,'King'),(184,12,'Master bedroom',2,'King'),(185,13,'common space',2,'Sofa'),(186,14,'common space',2,'Sofa'),(187,15,'bedroom',2,'Double'),(188,16,'Master bedroom',2,'King'),(189,17,'Master bedroom',2,'King'),(190,18,'bedroom',2,'Double'),(191,19,'bedroom',2,'Double'),(192,20,'common space',2,'Sofa'),(193,21,'Master bedroom',2,'King'),(194,22,'Master bedroom',2,'King'),(195,23,'common space',2,'Sofa'),(196,24,'Master bedroom',2,'King'),(197,25,'Master bedroom',2,'King'),(198,26,'Master bedroom',2,'King'),(199,27,'bedroom',2,'Double'),(200,28,'bedroom',2,'Double'),(201,29,'Master bedroom',2,'King'),(202,30,'Master bedroom',2,'King'),(203,31,'bedroom',2,'Double'),(204,32,'bedroom',2,'Double'),(205,33,'common space',2,'Sofa'),(206,34,'common space',2,'Sofa'),(207,35,'common space',2,'Sofa'),(208,36,'common space',2,'Sofa'),(209,37,'bedroom',2,'Double'),(210,38,'bedroom',2,'Double'),(211,39,'Master bedroom',2,'King'),(212,40,'Master bedroom',2,'King'),(213,41,'bedroom',2,'Double'),(214,42,'common space',2,'Sofa'),(215,43,'Master bedroom',2,'King'),(216,44,'Master bedroom',2,'King'),(217,45,'bedroom',2,'Double'),(218,46,'Master bedroom',2,'King'),(219,47,'Master bedroom',2,'King'),(220,48,'Master bedroom',2,'King'),(221,49,'Master bedroom',2,'King'),(222,50,'Master bedroom',2,'King'),(223,51,'common space',2,'Sofa'),(224,52,'bedroom',2,'Double'),(225,53,'bedroom',2,'Double'),(226,54,'bedroom',2,'Double'),(227,55,'common space',2,'Sofa'),(228,56,'Master bedroom',2,'King'),(229,57,'Master bedroom',2,'King'),(230,58,'Master bedroom',2,'King'),(231,59,'bedroom',2,'Double'),(232,60,'Master bedroom',2,'King'),(233,61,'Master bedroom',2,'King'),(234,62,'Master bedroom',2,'King'),(235,63,'common space',2,'Sofa'),(236,64,'bedroom',2,'Double'),(237,65,'common space',2,'Sofa'),(238,66,'bedroom',2,'Double'),(239,67,'Master bedroom',2,'King'),(240,68,'Master bedroom',2,'King'),(241,69,'common space',2,'Sofa'),(242,70,'common space',2,'Sofa'),(243,71,'bedroom',2,'Double'),(244,72,'bedroom',2,'Double'),(245,73,'common space',2,'Sofa'),(246,74,'common space',2,'Sofa'),(247,75,'bedroom',2,'Double'),(248,76,'common space',2,'Sofa'),(249,77,'Master bedroom',2,'King'),(250,78,'common space',2,'Sofa'),(251,79,'Master bedroom',2,'King'),(252,80,'common space',2,'Sofa'),(253,81,'common space',2,'Sofa'),(254,82,'bedroom',2,'Double'),(255,83,'common space',2,'Sofa'),(256,84,'Master bedroom',2,'King'),(257,85,'common space',2,'Sofa'),(258,86,'bedroom',2,'Double'),(259,87,'Master bedroom',2,'King'),(260,88,'Master bedroom',2,'King'),(261,89,'common space',2,'Sofa'),(262,90,'bedroom',2,'Double'),(263,91,'Master bedroom',2,'King'),(264,92,'bedroom',2,'Double'),(265,93,'Master bedroom',2,'King'),(266,94,'bedroom',2,'Double'),(267,95,'bedroom',2,'Double'),(268,96,'bedroom',2,'Double'),(269,97,'common space',2,'Sofa'),(270,98,'Master bedroom',2,'King'),(271,99,'bedroom',2,'Double'),(272,100,'common space',2,'Sofa'),(273,1,'common space',2,'Sofa'),(274,2,'Master bedroom',2,'King'),(275,3,'Master bedroom',2,'King'),(276,4,'bedroom',2,'Double'),(277,5,'Master bedroom',2,'King'),(278,6,'Master bedroom',2,'King'),(279,7,'common space',2,'Sofa'),(280,8,'common space',2,'Sofa'),(281,9,'bedroom',2,'Double'),(282,10,'common space',2,'Sofa'),(283,11,'common space',2,'Sofa'),(284,12,'bedroom',2,'Double'),(285,13,'common space',2,'Sofa'),(286,14,'bedroom',2,'Double'),(287,15,'bedroom',2,'Double'),(288,16,'bedroom',2,'Double'),(289,17,'bedroom',2,'Double'),(290,18,'Master bedroom',2,'King'),(291,19,'common space',2,'Sofa'),(292,20,'bedroom',2,'Double'),(293,21,'Master bedroom',2,'King'),(294,22,'bedroom',2,'Double'),(295,23,'Master bedroom',2,'King'),(296,24,'bedroom',2,'Double'),(297,25,'common space',2,'Sofa'),(298,26,'common space',2,'Sofa'),(299,27,'common space',2,'Sofa'),(300,28,'common space',2,'Sofa'),(301,29,'common space',2,'Sofa'),(302,30,'Master bedroom',2,'King'),(303,31,'bedroom',2,'Double'),(304,32,'Master bedroom',2,'King'),(305,33,'common space',2,'Sofa'),(306,34,'bedroom',2,'Double'),(307,35,'Master bedroom',2,'King'),(308,36,'bedroom',2,'Double'),(309,37,'bedroom',2,'Double'),(310,38,'bedroom',2,'Double'),(311,39,'Master bedroom',2,'King'),(312,40,'bedroom',2,'Double'),(313,41,'Master bedroom',2,'King'),(314,42,'bedroom',2,'Double'),(315,43,'Master bedroom',2,'King'),(316,44,'common space',2,'Sofa'),(317,45,'Master bedroom',2,'King'),(318,57,'bedroom',2,'Double'),(319,58,'common space',2,'Sofa'),(320,59,'common space',2,'Sofa'),(321,60,'Master bedroom',2,'King'),(322,61,'common space',2,'Sofa'),(323,62,'bedroom',2,'Double'),(324,63,'common space',2,'Sofa'),(325,64,'common space',2,'Sofa'),(326,65,'common space',2,'Sofa'),(327,66,'Master bedroom',2,'King'),(328,67,'bedroom',2,'Double'),(329,68,'bedroom',2,'Double'),(330,69,'common space',2,'Sofa'),(331,70,'bedroom',2,'Double'),(332,71,'Master bedroom',2,'King'),(333,72,'bedroom',2,'Double'),(334,73,'common space',2,'Sofa'),(335,74,'common space',2,'Sofa'),(336,75,'common space',2,'Sofa'),(337,76,'common space',2,'Sofa'),(338,77,'Master bedroom',2,'King'),(339,78,'bedroom',2,'Double'),(340,79,'bedroom',2,'Double'),(341,80,'common space',2,'Sofa'),(342,81,'Master bedroom',2,'King'),(343,82,'common space',2,'Sofa'),(344,83,'Master bedroom',2,'King'),(345,84,'common space',2,'Sofa'),(346,85,'bedroom',2,'Double'),(347,86,'common space',2,'Sofa'),(348,87,'Master bedroom',2,'King'),(349,88,'common space',2,'Sofa'),(350,89,'Master bedroom',2,'King'),(351,90,'Master bedroom',2,'King'),(352,91,'common space',2,'Sofa'),(353,92,'common space',2,'Sofa'),(354,93,'common space',2,'Sofa'),(355,94,'bedroom',2,'Double'),(356,95,'Master bedroom',2,'King'),(357,96,'common space',2,'Sofa'),(358,97,'Master bedroom',2,'King'),(359,98,'Master bedroom',2,'King'),(360,99,'Master bedroom',2,'King'),(361,100,'common space',2,'Sofa'),(362,70,'common space',2,'Sofa'),(363,71,'bedroom',2,'Double'),(364,72,'bedroom',2,'Double'),(365,73,'common space',2,'Sofa'),(366,74,'common space',2,'Sofa'),(367,75,'bedroom',2,'Double'),(368,76,'common space',2,'Sofa'),(369,77,'Master bedroom',2,'King'),(370,78,'common space',2,'Sofa'),(371,79,'Master bedroom',2,'King'),(372,80,'common space',2,'Sofa'),(373,81,'common space',2,'Sofa'),(374,82,'bedroom',2,'Double'),(375,83,'common space',2,'Sofa'),(376,84,'Master bedroom',2,'King'),(377,85,'common space',2,'Sofa'),(378,86,'bedroom',2,'Double'),(379,87,'Master bedroom',2,'King'),(380,88,'Master bedroom',2,'King'),(381,89,'common space',2,'Sofa'),(382,90,'bedroom',2,'Double'),(383,91,'Master bedroom',2,'King'),(384,92,'bedroom',2,'Double'),(385,93,'Master bedroom',2,'King'),(386,94,'bedroom',2,'Double'),(387,95,'bedroom',2,'Double'),(388,96,'bedroom',2,'Double'),(389,97,'common space',2,'Sofa'),(390,98,'Master bedroom',2,'King'),(391,99,'bedroom',2,'Double'),(392,100,'common space',2,'Sofa'),(393,1,'common space',2,'Sofa'),(394,2,'Master bedroom',2,'King'),(395,3,'Master bedroom',2,'King'),(396,4,'bedroom',2,'Double'),(397,5,'Master bedroom',2,'King'),(398,6,'Master bedroom',2,'King'),(399,7,'common space',2,'Sofa'),(400,8,'common space',2,'Sofa'),(401,9,'bedroom',2,'Double'),(402,10,'common space',2,'Sofa'),(403,11,'common space',2,'Sofa'),(404,12,'bedroom',2,'Double'),(405,13,'common space',2,'Sofa'),(406,14,'bedroom',2,'Double'),(407,15,'bedroom',2,'Double'),(408,16,'bedroom',2,'Double'),(409,17,'bedroom',2,'Double'),(410,18,'Master bedroom',2,'King'),(411,19,'common space',2,'Sofa'),(412,20,'bedroom',2,'Double'),(413,21,'Master bedroom',2,'King'),(414,22,'bedroom',2,'Double'),(415,23,'Master bedroom',2,'King'),(416,24,'bedroom',2,'Double'),(417,25,'common space',2,'Sofa'),(418,26,'common space',2,'Sofa'),(419,27,'common space',2,'Sofa'),(420,28,'common space',2,'Sofa'),(421,29,'common space',2,'Sofa'),(422,30,'Master bedroom',2,'King'),(423,31,'bedroom',2,'Double'),(424,32,'Master bedroom',2,'King'),(425,33,'common space',2,'Sofa'),(426,34,'bedroom',2,'Double'),(427,35,'Master bedroom',2,'King'),(428,36,'bedroom',2,'Double'),(429,37,'bedroom',2,'Double'),(430,38,'bedroom',2,'Double'),(431,39,'Master bedroom',2,'King'),(432,49,'Master bedroom',2,'King'),(433,50,'bedroom',2,'Double'),(434,51,'bedroom',2,'Double'),(435,52,'Master bedroom',2,'King'),(436,53,'bedroom',2,'Double'),(437,54,'common space',2,'Sofa'),(438,55,'bedroom',2,'Double'),(439,56,'Master bedroom',2,'King'),(440,57,'bedroom',2,'Double'),(441,58,'common space',2,'Sofa'),(442,59,'common space',2,'Sofa'),(443,60,'Master bedroom',2,'King'),(444,61,'common space',2,'Sofa'),(445,62,'bedroom',2,'Double'),(446,63,'common space',2,'Sofa'),(447,64,'common space',2,'Sofa'),(448,65,'common space',2,'Sofa'),(449,66,'Master bedroom',2,'King'),(450,67,'bedroom',2,'Double'),(451,68,'bedroom',2,'Double'),(452,69,'common space',2,'Sofa'),(453,70,'bedroom',2,'Double'),(454,71,'Master bedroom',2,'King'),(455,72,'bedroom',2,'Double'),(456,73,'common space',2,'Sofa'),(457,74,'common space',2,'Sofa'),(458,75,'common space',2,'Sofa'),(459,76,'common space',2,'Sofa'),(460,77,'Master bedroom',2,'King'),(461,78,'bedroom',2,'Double'),(462,79,'bedroom',2,'Double'),(463,80,'common space',2,'Sofa'),(464,81,'Master bedroom',2,'King'),(465,82,'common space',2,'Sofa'),(466,83,'Master bedroom',2,'King'),(467,84,'common space',2,'Sofa'),(468,85,'bedroom',2,'Double'),(469,86,'common space',2,'Sofa'),(470,87,'Master bedroom',2,'King'),(471,88,'common space',2,'Sofa'),(472,89,'Master bedroom',2,'King'),(473,90,'Master bedroom',2,'King'),(474,91,'common space',2,'Sofa'),(475,92,'common space',2,'Sofa'),(476,93,'common space',2,'Sofa'),(477,94,'bedroom',2,'Double'),(478,95,'Master bedroom',2,'King'),(479,96,'common space',2,'Sofa'),(480,97,'Master bedroom',2,'King'),(481,98,'Master bedroom',2,'King'),(482,99,'Master bedroom',2,'King'),(483,100,'common space',2,'Sofa');
/*!40000 ALTER TABLE `tblSleepingArrangements` ENABLE KEYS */;
-- UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-12 19:30:18
-- \COPY tblListingLocation FROM '/Users/kianna/Desktop/listing-description-module/database/data/faker_listing_names.csv' WITH (FORMAT csv) 
-- \COPY refAmenities FROM '/Users/kianna/Desktop/listing-description-module/database/data/faker_tblAmenities.csv' WITH (FORMAT csv) 
-- \COPY tblListingOverview FROM '/Users/kianna/Desktop/listing-description-module/database/data/faker_tblOverview.csv' WITH (FORMAT csv) 
-- \COPY tblPictograms FROM '/Users/kianna/Desktop/listing-description-module/database/data/faker_tblPictograms.csv' WITH (FORMAT csv) 
-- \COPY refTheSpace FROM '/Users/kianna/Desktop/listing-description-module/database/data/faker_theSpace.csv' WITH (FORMAT csv) 
-- \COPY tblSleepingArrangements FROM '/Users/kianna/Desktop/listing-description-module/database/data/faker_tblSleepingArrangements.csv' WITH (FORMAT csv) 

