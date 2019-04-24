# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.25)
# Database: userAccount
# Generation Time: 2019-04-24 12:29:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table collect
# ------------------------------------------------------------

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `title` varchar(255) DEFAULT NULL COMMENT ' 标题',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;

INSERT INTO `collect` (`id`, `author`, `date`, `link`, `title`, `created_at`, `updated_at`)
VALUES
	(1,'jeromehan','2019-04-04','www.baidu.com','vue秘籍','2019-04-24 20:15:56','2019-04-24 20:25:25'),
	(3,'合宿风毒素','2019-04-03','额外人王琦儿','reward','2019-04-24 20:26:09','2019-04-24 20:26:09');

/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
