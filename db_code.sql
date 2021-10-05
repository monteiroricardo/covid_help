/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `covid_helper_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `covid_helper_db`;

CREATE TABLE IF NOT EXISTS `dashboard` (
  `country` varchar(50) NOT NULL,
  `all_cases` int NOT NULL DEFAULT '0',
  `all_deaths` int NOT NULL DEFAULT '0',
  `all_applied` int NOT NULL DEFAULT '0',
  `one_dose` int NOT NULL DEFAULT '0',
  `fully_immunized` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` (`country`, `all_cases`, `all_deaths`, `all_applied`, `one_dose`, `fully_immunized`) VALUES
	('brasil', 21500000, 598000, 240588683, 147317233, 93271450);
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `delivery` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `lote` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `producer` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` (`delivery_id`, `company`, `state`, `lote`, `city`, `producer`, `quantity`) VALUES
	(1, 'Pfizer', 'SP', 'F4545', 'Lorena', 'BioNTech', 500);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `peoples` (
  `name` varchar(50) NOT NULL,
  `age` int NOT NULL DEFAULT '0',
  `cpf` varchar(11) NOT NULL DEFAULT '',
  `dose1_map` varchar(50) NOT NULL DEFAULT '0',
  `dose1_cnes` int NOT NULL DEFAULT '0',
  `dose1_date` date NOT NULL DEFAULT '0000-00-00',
  `dose1_lote` varchar(50) NOT NULL DEFAULT '0',
  `dose1_company` varchar(50) NOT NULL DEFAULT '0',
  `dose1_applicator` varchar(50) NOT NULL DEFAULT '0',
  `dose1_applicator_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40000 ALTER TABLE `peoples` DISABLE KEYS */;
INSERT INTO `peoples` (`name`, `age`, `cpf`, `dose1_map`, `dose1_cnes`, `dose1_date`, `dose1_lote`, `dose1_company`, `dose1_applicator`, `dose1_applicator_id`) VALUES
	('Ricardo', 20, '50124525215', 'USB Real Parque', 454545, '2021-10-06', '20145', 'Butantã', 'Karen', 457578);
/*!40000 ALTER TABLE `peoples` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
