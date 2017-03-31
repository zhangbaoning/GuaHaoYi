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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8<br/>
