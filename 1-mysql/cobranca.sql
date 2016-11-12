--
-- Table structure for table `titulo`
--

DROP TABLE IF EXISTS `titulo`;
CREATE TABLE `titulo` (
  `codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_vencimento` date NOT NULL,
  `descricao` varchar(60) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `valor` decimal(19,2) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `titulo` WRITE;
INSERT INTO `titulo` VALUES (1,'2016-08-20','Condominio 101','RECEBIDO',0.01),(2,'2016-08-20','Condominio 102','RECEBIDO',0.11),(3,'2016-08-20','Condominio 103','RECEBIDO',1.11),(4,'2016-08-20','Condominio 104','RECEBIDO',11.11),(5,'2016-08-20','Condominio 105','RECEBIDO',111.11);
UNLOCK TABLES;

