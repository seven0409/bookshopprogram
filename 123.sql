CREATE DATABASE  IF NOT EXISTS `bookshop` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookshop`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshop
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `book_info`
--

DROP TABLE IF EXISTS `book_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_info` (
  `idbook_info` int NOT NULL,
  `book_code` varchar(45) NOT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `book_isbn` varchar(45) DEFAULT NULL,
  `book_count` int DEFAULT NULL,
  `book_price` float(6,2) DEFAULT NULL,
  `book_date` date DEFAULT NULL,
  `book_pic` varchar(100) DEFAULT NULL,
  `book_publisher` varchar(45) DEFAULT NULL,
  `book_infocol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`book_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_info`
--

LOCK TABLES `book_info` WRITE;
/*!40000 ALTER TABLE `book_info` DISABLE KEYS */;
INSERT INTO `book_info` VALUES (4,'130052','乞力马扎罗的雪','1-001-91-778',21,67.00,'2024-10-07','https://img1.doubanio.com/view/subject/l/public/s11275789.jpg','电子工业出版社','海明威'),(4,'130065','人有人的用处','23-999-7-009',45,39.00,'2024-11-11','https://tsm.tsinghua.edu.cn/wp-content/uploads/2021/09/640-1.jpeg','清华大学出版社','维纳'),(2,'3','我与地坛','asd231qwertyui',3,35.00,'2004-12-03','https://img2.doubanio.com/view/subject/l/public/s34274221.jpg','人民教育出版社','马尔克斯'),(5,'5','大雪将至','9787544258197',10,39.00,'2018-06-08','https://img1.doubanio.com/view/subject/l/public/s29779230.jpg','南海出版社',' 罗伯特·泽塔勒'),(6,'6','霍乱时期的爱情','9787544258975',15,39.50,'2012-09-01','https://img3.doubanio.com/view/subject/l/public/s11284102.jpg','南海出版社','加西亚·马尔克斯'),(7,'7','活着','9787506365437',9,28.00,'2012-08-01','https://img9.doubanio.com/view/subject/l/public/s29869926.jpg','作家出版社','余华');
/*!40000 ALTER TABLE `book_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_table` (
  `iduser_table` int(10) unsigned zerofill NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`iduser_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (0000000001,'zhangsan','111','1'),(0000000002,'lisi','222','1'),(0000000003,'wangwu','222','2'),(0000000005,'shangan25','114514','2');
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-29 20:51:39
