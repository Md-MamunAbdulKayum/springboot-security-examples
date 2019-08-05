-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
DROP DATABASE  IF EXISTS `springsectest`;

CREATE DATABASE  IF NOT EXISTS `springsectest`;
USE `springsectest`;

-- Dumping structure for table springsectest.authorities
CREATE TABLE IF NOT EXISTS `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table springsectest.authorities: ~8 rows (approximately)
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` (`username`, `authority`) VALUES
	('abraham', 'ROLE_CLARK'),
	('abraham', 'ROLE_EMPLOYEE'),
	('kayum', 'ROLE_ADMIN'),
	('kayum', 'ROLE_EMPLOYEE'),
	('mamun', 'ROLE_EMPLOYEE'),
	('mamun', 'ROLE_HR_MANAGER'),
	('sourav', 'ROLE_EMPLOYEE'),
	('sourav', 'ROLE_MANAGER');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;

-- Dumping structure for table springsectest.users
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table springsectest.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`username`, `password`, `enabled`) VALUES
	('abraham', '{bcrypt}$2a$04$b1fIiSVDXiDdXIq5eHjvV.IZkcr6u8S9oMVqjW.ilr1tlvacQQ2hC', 1),
	('kayum', '{bcrypt}$2a$04$NZvQH9r7X101Ja3.FTJwRu/96XpyRVdZmFNXa6.MKPZi0CiqnPJvi', 1),
	('mamun', '{bcrypt}$2a$04$QOoUEU496CHxyfCGbpCqYuteaCq3gJ0vtHbWsz80152fKvRdMDDg6', 1),
	('sourav', '{bcrypt}$2a$04$xGRFPj3oFOZeeTaKcAUcKuzGZrptprrTfOL6bdeB7k.Dtl.ErRiVm', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
