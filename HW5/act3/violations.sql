-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: armbook
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'everybody','everybody','test','2011-03-31 01:20:49',0),(2,'everybody','everybody','hi','2011-03-31 01:20:54',0),(3,'everybody','everybody','hi','2011-03-31 01:21:07',0),(4,'everybody','everybody','hi','2011-03-31 01:21:12',0),(5,'everybody','everybody','hi','2011-03-31 01:21:52',0),(6,'everybody','everybody','Shit','2011-03-31 01:23:55',0),(7,'everybody','everybody','test','2011-03-31 01:24:12',0),(8,'everybody','everybody','hey','2011-03-31 01:27:37',0),(9,'everybody','everybody','Way to go slow refreash','2011-03-31 01:27:48',0),(10,'everybody','everybody','<script>alert(\'test\');</script>','2011-03-31 01:28:34',0),(11,'everybody','everybody','test2','2011-03-31 01:30:01',0),(12,'everybody','everybody','test2','2011-03-31 01:30:07',0),(13,'everybody','everybody','test3','2011-03-31 01:30:34',0),(14,'everybody','everybody','test','2011-03-31 10:46:33',0),(15,'everybody','everybody','hey','2011-03-31 10:50:34',0),(16,'everybody','everybody','jamie','2011-03-31 10:50:36',0),(17,'everybody','everybody','jamie','2011-03-31 10:50:52',0),(18,'everybody','everybody','wow','2011-03-31 10:50:56',0),(19,'everybody','everybody','yeah','2011-03-31 10:50:58',0),(20,'everybody','everybody','i still have to fix names','2011-03-31 10:51:01',0),(21,'everybody','everybody','but that is it','2011-03-31 10:51:03',0),(22,'everybody','everybody','yeah you do','2011-03-31 10:51:05',0),(23,'everybody','everybody',':)','2011-03-31 10:51:08',0),(24,'everybody','everybody','boo','2011-03-31 10:52:24',0),(25,'everybody','everybody','hey','2011-03-31 11:03:13',0),(26,'everybody','everybody','hey','2011-03-31 11:21:04',0),(27,'everybody','everybody','meow','2011-03-31 12:03:26',0),(28,'everybody','everybody','hi','2011-03-31 12:03:28',0),(29,'everybody','everybody','hi','2011-03-31 12:03:29',0),(30,'everybody','everybody','hey rusty','2011-03-31 12:03:47',0),(31,'everybody','everybody','hi','2011-03-31 12:04:32',0),(32,'everybody','everybody','talk to me','2011-03-31 12:04:36',0),(33,'everybody','everybody','everrrrrybody','2011-03-31 12:04:39',0),(34,'everybody','everybody','whatsup?','2011-03-31 12:04:42',0),(35,'everybody','everybody','i hate this class :D','2011-03-31 12:04:46',0),(36,'everybody','everybody','me too','2011-03-31 12:04:50',0),(37,'everybody','everybody',':)','2011-03-31 12:04:50',0),(38,'everybody','everybody','shmooooooo group','2011-03-31 12:05:06',0),(39,'everybody','everybody','ok','2011-03-31 12:05:23',0),(40,'everybody','everybody','hey','2011-03-31 14:03:47',0),(41,'everybody','everybody','hey','2011-03-31 22:57:04',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chathist`
--

DROP TABLE IF EXISTS `chathist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chathist` (
  `chat_id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `user3` int(11) NOT NULL,
  `user4` int(11) NOT NULL,
  `user5` int(11) NOT NULL,
  `user6` int(11) NOT NULL,
  `user7` int(11) NOT NULL,
  `user8` int(11) NOT NULL,
  `user9` int(11) NOT NULL,
  `user10` int(11) NOT NULL,
  `user11` int(11) NOT NULL,
  `user12` int(11) NOT NULL,
  `user13` int(11) NOT NULL,
  `user14` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chathist`
--

LOCK TABLES `chathist` WRITE;
/*!40000 ALTER TABLE `chathist` DISABLE KEYS */;
INSERT INTO `chathist` VALUES (1,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(2,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(3,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(4,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(5,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(6,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(7,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(8,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(9,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(10,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(11,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(12,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(13,1,1,0,0,0,0,0,0,0,0,1,1,1,1),(14,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(15,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(16,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(17,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(18,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(19,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(20,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(21,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(22,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(23,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(24,1,0,0,0,0,0,0,0,0,0,1,0,1,1),(25,1,0,0,0,0,0,0,0,0,0,0,0,1,1),(26,1,0,0,0,0,0,0,0,0,0,0,0,1,1),(27,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(28,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(29,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(30,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(31,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(32,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(33,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(34,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(35,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(36,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(37,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(38,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(39,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(40,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(41,1,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `chathist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `Workplace` varchar(255) NOT NULL,
  `School` varchar(255) NOT NULL,
  `Phone` varchar(64) NOT NULL,
  `Interest` varchar(64) NOT NULL,
  `Relationship` int(11) NOT NULL,
  `Interested_In` varchar(64) NOT NULL,
  `ScreenName` varchar(64) NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,1,'None','RIT','585-201-8080','Computers, Information Security',-1,'Aliens','Slashgames'),(2,2,'None','None','None','None',-1,'None','None'),(3,8,'None','None','None','None',-1,'None','None'),(4,9,'None','None','None','None',-1,'None','None'),(5,10,'None','None','None','None',-1,'None','None'),(6,11,'None','None','None','None',-1,'None','None'),(8,3,'te','te2','te3','te4',2,'te5','te6'),(10,12,'None','Rochester institute of technology','None','None',-1,'Women','None'),(11,4,'test','test2','test3','Computers',-1,'Aliens','Slashgames'),(12,13,'None','None','None','None',-1,'None','None'),(13,14,'None','None','None','None',-1,'None','None');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_from` int(11) NOT NULL,
  `user_id_to` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,2,'Hey Neil'),(2,2,1,'Hey Chaim'),(3,1,2,'You suck'),(4,2,1,'No, you suck'),(5,1,5,'Jacob is stupid'),(6,1,7,'hey baby'),(7,1,2,'your a bitch'),(8,9,7,'Hello'),(9,1,2,'<?sc<x>ript>'),(10,1,2,'hey'),(11,1,2,';;'),(12,10,1,'YOU R WEIRD'),(13,1,2,'hey'),(15,12,1,'Post'),(17,1,13,'hey jamie you suck'),(19,13,1,'i love you'),(20,12,12,'test'),(21,12,12,'hello'),(22,12,12,'another test'),(23,12,9,'hi test'),(24,12,12,'nothing right now'),(25,12,12,'test'),(26,12,12,'new post'),(27,12,12,'testing');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `picture_url` varchar(255) NOT NULL,
  `Friends` text NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'images/arm_stock.jpg','2,1,9,5,10,12,13'),(2,2,'images/arm_stock.jpg','1,2,7'),(4,4,'images/arm_stock.jpg','4'),(3,5,'images/arm_stock.jpg','5,1'),(5,6,'images/arm_stock.jpg','6'),(6,7,'images/arm_stock.jpg','7,2'),(7,8,'images/arm_stock.jpg','8'),(8,9,'images/arm_stock.jpg','9,1'),(9,10,'images/arm_stock.jpg','10,1'),(10,11,'images/arm_stock.jpg','11'),(11,12,'http://www.timeslive.co.za/incoming/2015/10/20/arm.jpg/ALTERNATES/crop_630x400/arm.jpg','12,1,9,12'),(12,13,'images/arm_stock.jpg','13,1'),(13,14,'images/arm_stock.jpg','14'),(14,3,'images/arm_stock.jpg','1,2');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,1,'hey'),(2,2,'Going fishing'),(3,6,''),(4,7,'loving'),(5,8,''),(6,9,'test'),(7,10,''),(8,11,'nothing'),(9,12,'Post3'),(10,13,'boo'),(11,14,'Feeling crazy :D');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL,
  `birthday_month` int(2) NOT NULL,
  `birthday_day` int(2) NOT NULL,
  `birthday_year` int(4) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ces1509@rit.edu','password','Jon','Doe',1,10,2,1988),(2,'neil@neil.com','password','neil','zimmerman',1,10,2,1988),(6,'csanders@sparsa.org','password','Grant','Batchlor',2,-1,-1,-1),(4,'chaim.sanders@gmail.com','password','Jon','Mccall',2,-1,-1,-1),(5,'jruppal@gmail.com','password','Jacob','Ruppal',2,-1,-1,-1),(7,'griffith.chaffee@gmail.com','password','griffith','chaffee',2,1,2,1982),(8,'andy@culler.com','password','Andy','Culler',2,-1,-1,-1),(9,'test@test.com','password','test','test',2,-1,-1,-1),(10,'bsmith@gmail.com','password','Bob','Smith',1,1,1,1950),(11,'test2@test.com','password','test2','test2',2,-1,-1,-1),(13,'jrr@foobar.com','password','Jamie','Richard',2,3,28,1987),(14,'rbower@sparsa.org','password','Rusty','Bower',2,1,1,1950),(12,'chaim@chaim.com','password','chaim','sanders',1,3,2,1988);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `violations`
--

DROP TABLE IF EXISTS `violations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `violations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `violations`
--

LOCK TABLES `violations` WRITE;
/*!40000 ALTER TABLE `violations` DISABLE KEYS */;
INSERT INTO `violations` VALUES (1,'{\"csp-report\":{\"document-uri\":\"https://localhost/\",\"referrer\":\"\",\"violated-directive\":\"script-src-elem\",\"effective-directive\":\"script-src-elem\",\"original-policy\":\"script-src \'self\' \'nonce-Yeet\' cdnjs.cloudflare.com unsafe-eval; style-src \'self\' \'nonce-Yeet\' fonts.googleapis.com cdnjs.cloudflare.com unsafe-inline; font-src \'self\' fonts.gstatic.com; connect-src \'self\'; img-src \'self\' http://www.timeslive.co.za; child-src \'self\'; media-src \'self\'; worker-src \'self\'; object-src \'self\'; frame-ancestors \'none\'; form-action \'self\'; block-all-mixed-content; report-uri /csp_violation.php;\",\"disposition\":\"enforce\",\"blocked-uri\":\"https://localhost:8080/matomo.js\",\"line-number\":14,\"column-number\":93,\"source-file\":\"https://localhost/\",\"status-code\":0,\"script-sample\":\"\"}}'),(2,'{\"csp-report\":{\"document-uri\":\"https://localhost/home.php\",\"referrer\":\"https://localhost/\",\"violated-directive\":\"style-src-elem\",\"effective-directive\":\"style-src-elem\",\"original-policy\":\"script-src \'self\' \'nonce-Yeet\' cdnjs.cloudflare.com unsafe-eval; style-src \'self\' \'nonce-Yeet\' fonts.googleapis.com cdnjs.cloudflare.com unsafe-inline; font-src \'self\' fonts.gstatic.com; connect-src \'self\'; img-src \'self\' http://www.timeslive.co.za; child-src \'self\'; media-src \'self\'; worker-src \'self\'; object-src \'self\'; frame-ancestors \'none\'; form-action \'self\'; block-all-mixed-content; report-uri /csp_violation.php;\",\"disposition\":\"enforce\",\"blocked-uri\":\"http://fonts.googleapis.com/css?family=Open+Sans\",\"line-number\":2,\"source-file\":\"https://localhost/home.php\",\"status-code\":0,\"script-sample\":\"\"}}'),(3,'{\"csp-report\":{\"document-uri\":\"https://localhost/home.php\",\"referrer\":\"https://localhost/\",\"violated-directive\":\"style-src-elem\",\"effective-directive\":\"style-src-elem\",\"original-policy\":\"script-src \'self\' \'nonce-Yeet\' cdnjs.cloudflare.com unsafe-eval; style-src \'self\' \'nonce-Yeet\' fonts.googleapis.com cdnjs.cloudflare.com unsafe-inline; font-src \'self\' fonts.gstatic.com; connect-src \'self\'; img-src \'self\' http://www.timeslive.co.za; child-src \'self\'; media-src \'self\'; worker-src \'self\'; object-src \'self\'; frame-ancestors \'none\'; form-action \'self\'; block-all-mixed-content; report-uri /csp_violation.php;\",\"disposition\":\"enforce\",\"blocked-uri\":\"inline\",\"line-number\":6272,\"column-number\":12,\"source-file\":\"https://localhost/js/jquery.js\",\"status-code\":0,\"script-sample\":\"\"}}'),(4,'{\"csp-report\":{\"document-uri\":\"https://localhost/home.php\",\"referrer\":\"https://localhost/\",\"violated-directive\":\"style-src-attr\",\"effective-directive\":\"style-src-attr\",\"original-policy\":\"script-src \'self\' \'nonce-Yeet\' cdnjs.cloudflare.com unsafe-eval; style-src \'self\' \'nonce-Yeet\' fonts.googleapis.com cdnjs.cloudflare.com unsafe-inline; font-src \'self\' fonts.gstatic.com; connect-src \'self\'; img-src \'self\' http://www.timeslive.co.za; child-src \'self\'; media-src \'self\'; worker-src \'self\'; object-src \'self\'; frame-ancestors \'none\'; form-action \'self\'; block-all-mixed-content; report-uri /csp_violation.php;\",\"disposition\":\"enforce\",\"blocked-uri\":\"inline\",\"line-number\":91,\"source-file\":\"https://localhost/home.php\",\"status-code\":0,\"script-sample\":\"\"}}'),(5,'{\"csp-report\":{\"document-uri\":\"https://localhost/home.php\",\"referrer\":\"https://localhost/\",\"violated-directive\":\"style-src-attr\",\"effective-directive\":\"style-src-attr\",\"original-policy\":\"script-src \'self\' \'nonce-Yeet\' cdnjs.cloudflare.com unsafe-eval; style-src \'self\' \'nonce-Yeet\' fonts.googleapis.com cdnjs.cloudflare.com unsafe-inline; font-src \'self\' fonts.gstatic.com; connect-src \'self\'; img-src \'self\' http://www.timeslive.co.za; child-src \'self\'; media-src \'self\'; worker-src \'self\'; object-src \'self\'; frame-ancestors \'none\'; form-action \'self\'; block-all-mixed-content; report-uri /csp_violation.php;\",\"disposition\":\"enforce\",\"blocked-uri\":\"inline\",\"line-number\":4631,\"column-number\":19,\"source-file\":\"https://localhost/js/jquery.js\",\"status-code\":0,\"script-sample\":\"\"}}'),(6,'{\"csp-report\":{\"document-uri\":\"https://localhost/home.php\",\"referrer\":\"https://localhost/\",\"violated-directive\":\"style-src-attr\",\"effective-directive\":\"style-src-attr\",\"original-policy\":\"script-src \'self\' \'nonce-Yeet\' cdnjs.cloudflare.com unsafe-eval; style-src \'self\' \'nonce-Yeet\' fonts.googleapis.com cdnjs.cloudflare.com unsafe-inline; font-src \'self\' fonts.gstatic.com; connect-src \'self\'; img-src \'self\' http://www.timeslive.co.za; child-src \'self\'; media-src \'self\'; worker-src \'self\'; object-src \'self\'; frame-ancestors \'none\'; form-action \'self\'; block-all-mixed-content; report-uri /csp_violation.php;\",\"disposition\":\"enforce\",\"blocked-uri\":\"inline\",\"line-number\":85,\"source-file\":\"https://localhost/home.php\",\"status-code\":0,\"script-sample\":\"\"}}'),(7,'{\"csp-report\":{\"document-uri\":\"https://localhost/home.php\",\"referrer\":\"https://localhost/\",\"violated-directive\":\"block-all-mixed-content\",\"effective-directive\":\"block-all-mixed-content\",\"original-policy\":\"script-src \'self\' \'nonce-Yeet\' cdnjs.cloudflare.com unsafe-eval; style-src \'self\' \'nonce-Yeet\' fonts.googleapis.com cdnjs.cloudflare.com unsafe-inline; font-src \'self\' fonts.gstatic.com; connect-src \'self\'; img-src \'self\' http://www.timeslive.co.za; child-src \'self\'; media-src \'self\'; worker-src \'self\'; object-src \'self\'; frame-ancestors \'none\'; form-action \'self\'; block-all-mixed-content; report-uri /csp_violation.php;\",\"disposition\":\"enforce\",\"blocked-uri\":\"http://www.timeslive.co.za/incoming/2015/10/20/arm.jpg/ALTERNATES/crop_630x400/arm.jpg\",\"status-code\":0,\"script-sample\":\"\"}}'),(8,'{\"csp-report\":{\"document-uri\":\"https://localhost/home.php\",\"referrer\":\"https://localhost/\",\"violated-directive\":\"style-src-attr\",\"effective-directive\":\"style-src-attr\",\"original-policy\":\"script-src \'self\' \'nonce-Yeet\' cdnjs.cloudflare.com unsafe-eval; style-src \'self\' \'nonce-Yeet\' fonts.googleapis.com cdnjs.cloudflare.com unsafe-inline; font-src \'self\' fonts.gstatic.com; connect-src \'self\'; img-src \'self\' http://www.timeslive.co.za; child-src \'self\'; media-src \'self\'; worker-src \'self\'; object-src \'self\'; frame-ancestors \'none\'; form-action \'self\'; block-all-mixed-content; report-uri /csp_violation.php;\",\"disposition\":\"enforce\",\"blocked-uri\":\"inline\",\"line-number\":89,\"source-file\":\"https://localhost/home.php\",\"status-code\":0,\"script-sample\":\"\"}}'),(9,'{\"csp-report\":{\"document-uri\":\"https://localhost/home.php\",\"referrer\":\"https://localhost/\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"script-src \'self\' \'nonce-Yeet\' cdnjs.cloudflare.com unsafe-eval; style-src \'self\' \'nonce-Yeet\' fonts.googleapis.com cdnjs.cloudflare.com unsafe-inline; font-src \'self\' fonts.gstatic.com; connect-src \'self\'; img-src \'self\' http://www.timeslive.co.za; child-src \'self\'; media-src \'self\'; worker-src \'self\'; object-src \'self\'; frame-ancestors \'none\'; form-action \'self\'; block-all-mixed-content; report-uri /csp_violation.php;\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":349,\"column-number\":22,\"source-file\":\"https://localhost/js/jquery.js\",\"status-code\":0,\"script-sample\":\"\"}}');
/*!40000 ALTER TABLE `violations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25  1:07:27
