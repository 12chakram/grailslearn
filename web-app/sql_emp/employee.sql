delimiter $$

delimiter $$

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8$$

CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BOSS` bigint(20) NOT NULL,
  `FIRSTNAME` varchar(255) NOT NULL,
  `JOB` bigint(20) NOT NULL,
  `JOING_DATE` datetime NOT NULL,
  `LASTNAME` varchar(255) NOT NULL,
  `deptid` bigint(20) DEFAULT NULL,
  `EMPID` bigint(20) DEFAULT NULL,
  `EXPYEAR` bigint(20) DEFAULT NULL,
  `EXPMONTH` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8$$

