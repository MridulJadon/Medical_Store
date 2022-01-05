/*
SQLyog - Free MySQL GUI v5.17
Host - 5.5.27 : Database - medics
*********************************************************************
Server version : 5.5.27
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `medics`;

USE `medics`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `Name` varchar(20) DEFAULT NULL,
  `Phone` int(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `Adate` varchar(20) DEFAULT NULL,
  `msg` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert into `booking` (`Name`,`Phone`,`Email`,`dob`,`Adate`,`msg`) values ('Pink',2147483647,'pink@gmail.com','8-8-00','28-01-19','hii');
insert into `booking` (`Name`,`Phone`,`Email`,`dob`,`Adate`,`msg`) values ('Blue',1234567890,'blue@gmail.com','08-09-01','27-09-19','mesg');
insert into `booking` (`Name`,`Phone`,`Email`,`dob`,`Adate`,`msg`) values ('gjk',125456579,'dfhjh@gmail.com','08-09-00','09-08-19','fjhgklj');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `product_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `pathi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert into `cart` (`product_name`,`description`,`unit_price`,`quantity`,`pathi`) values ('Pill Case','cses','230',1,'case.jpg');
insert into `cart` (`product_name`,`description`,`unit_price`,`quantity`,`pathi`) values ('Herbal','moisturise','450',1,'herbal.jpg');
insert into `cart` (`product_name`,`description`,`unit_price`,`quantity`,`pathi`) values ('Capsules','Ibuprofen','300',1,'capsule.jpg');

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `name` varchar(100) DEFAULT NULL,
  `id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `image` */

insert into `image` (`name`,`id`) values ('time','time.jpg');

/*Table structure for table `logind` */

DROP TABLE IF EXISTS `logind`;

CREATE TABLE `logind` (
  `Username` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `logind` */

insert into `logind` (`Username`,`Email`,`Password`) values ('Sam','sam@gmail.com','retro');
insert into `logind` (`Username`,`Email`,`Password`) values ('Ishita','ishita08@gmail.com','ishita');
insert into `logind` (`Username`,`Email`,`Password`) values ('Ishit','ishit@gmail.com','ishita');
insert into `logind` (`Username`,`Email`,`Password`) values ('Samer','samer@gmail.com','samer1');
insert into `logind` (`Username`,`Email`,`Password`) values ('Anshal','shukla@gmail.com','ishu');
insert into `logind` (`Username`,`Email`,`Password`) values ('Lanny','lanny@gmail.com','girl');
insert into `logind` (`Username`,`Email`,`Password`) values ('Payal','payal@gmail.com','payal12');
insert into `logind` (`Username`,`Email`,`Password`) values ('Divy','div@gmail.com','div1');
insert into `logind` (`Username`,`Email`,`Password`) values ('Dimpi','dimps@gmail.com','dim1');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
