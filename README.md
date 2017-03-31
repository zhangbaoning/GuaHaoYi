**患者数据库的创建代码**<br/>
CREATE TABLE `customer` (<br/>
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,<br/>
  `cpassword` varchar(10) NOT NULL,<br/>
  `cname` varchar(255) NOT NULL,<br/>
  `csex` varchar(2) NOT NULL,<br/>
  `ccard` varchar(18) NOT NULL,<br/>
  `cbirth` date NOT NULL,<br/>
  `ctel` varchar(11) DEFAULT NULL,<br/>
  `caddress` varchar(255) DEFAULT NULL,<br/>
  `cdoctor` int(10) unsigned DEFAULT NULL,<br/>
  `register` tinyint(4) DEFAULT '0',<br/>
  PRIMARY KEY (`cid`,`ccard`),<br/>
  KEY `FK6kcabgqoj9iaexg9yhdk09bc9` (`cdoctor`),<br/>
  CONSTRAINT `FK6kcabgqoj9iaexg9yhdk09bc9` FOREIGN KEY (`cdoctor`) REFERENCES `doctor` (`did`),<br/>
  CONSTRAINT `doctor` FOREIGN KEY (`cdoctor`) REFERENCES `doctor` (`did`)<br/>
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8<hr/>
CREATE TABLE `doctor` (<br/>
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,<br/>
  `dname` varchar(255) NOT NULL,<br/>
  `dsex` smallint(1) NOT NULL,<br/>
  `dcard` int(18) unsigned NOT NULL,<br/>
  `dbirth` date NOT NULL,<br/>
  `dtel` varchar(11) DEFAULT NULL,<br/>
  `dtitle` varchar(20) DEFAULT NULL,<br/>
  `ddepart` int(10) DEFAULT NULL,<br/>
  `dtotal` int(11) DEFAULT NULL,<br/>
  `dfree` int(10) DEFAULT NULL,<br/>
  PRIMARY KEY (`did`),
  KEY `depart` (`ddepart`),
  CONSTRAINT `depart` FOREIGN KEY (`ddepart`) REFERENCES `department` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
