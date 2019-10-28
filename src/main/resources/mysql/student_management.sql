/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.16 : Database - student_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student_management` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `student_management`;

/*Table structure for table `tbl_adm` */

DROP TABLE IF EXISTS `tbl_adm`;

CREATE TABLE `tbl_adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_id` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_adm` */

insert  into `tbl_adm`(`id`,`adm_id`,`password`) values (1,'root','root');

/*Table structure for table `tbl_class` */

DROP TABLE IF EXISTS `tbl_class`;

CREATE TABLE `tbl_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coll_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `stu_year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_class` */

insert  into `tbl_class`(`id`,`name`,`coll_id`,`pro_id`,`year`,`stu_year`) values (1,'软件项目开发实战',2,2,1,2016),(2,'网络系统集成',2,2,1,2016),(3,'Android应用程序开发',2,2,1,2016),(4,'嵌入式系统',2,2,1,2016),(5,'创业实训',2,2,1,2016),(6,'软件测试',2,2,1,2016);

/*Table structure for table `tbl_dic_2016` */

DROP TABLE IF EXISTS `tbl_dic_2016`;

CREATE TABLE `tbl_dic_2016` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `val_id` int(11) NOT NULL,
  `par_id` int(11) DEFAULT NULL,
  `specialized` int(11) DEFAULT NULL,
  `cla_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_dic_2016` */

insert  into `tbl_dic_2016`(`id`,`type`,`name`,`val_id`,`par_id`,`specialized`,`cla_num`) values (1,'col','人工智能学院',2,1,NULL,NULL),(2,'col','城市建设学院',3,1,NULL,NULL),(3,'col','生命科学学院',4,1,NULL,NULL),(4,'col','护理学院',5,1,NULL,NULL),(5,'col','商学院',6,1,NULL,NULL),(6,'col','文法与外语学院',7,1,NULL,NULL),(7,'col','艺术设计学院',8,1,NULL,NULL),(8,'col','影视传媒学院',9,1,NULL,NULL),(11,'pro','智能科学与技术',1,2,0,3),(12,'pro','计算机科学与技术',2,2,0,4),(13,'pro','物联网工程',3,2,0,5),(14,'pro','软件工程',4,2,0,2),(15,'pro','电气工程及其自动化',5,2,0,3),(16,'pro','机械电子工程',6,2,0,4),(17,'pro','电子信息工程',7,2,0,9),(18,'pro','机电一体化技术',8,2,1,1),(19,'pro','计算机网络技术',9,2,1,3),(20,'pro','工程造价',1,3,0,5),(21,'pro','土木工程（房屋建筑工程方向）',2,3,0,6),(22,'pro','土木工程（道路桥梁工程方向）',3,3,0,5),(23,'pro','建筑学',4,3,0,4),(24,'pro','遥感科学与技术（无人机低空遥感方向）',5,3,0,3),(25,'pro','建筑工程技术',6,3,1,5),(26,'pro','建筑装饰工程技术',7,3,1,4),(27,'pro','环境工程',1,4,0,9),(28,'pro','生物工程',2,4,0,7),(29,'pro','药学',3,4,0,5),(30,'pro','护理学',1,5,0,2),(31,'pro','助产学',2,5,0,1),(32,'pro','护理专科',3,5,1,5),(33,'pro','工商管理',1,6,0,6),(34,'pro','电子商务',2,6,0,5),(35,'pro','会计学',3,6,0,4),(36,'pro','人力资源管理',4,6,0,2),(37,'pro','国际经济与贸易',5,6,0,3),(38,'pro','投资学',6,6,0,5),(39,'pro','市场营销',7,6,0,4),(40,'pro','财务管理',8,6,1,3),(41,'pro','酒店管理',9,6,1,5),(42,'pro','法学',1,7,0,5),(43,'pro','汉语言文学',2,7,0,4),(44,'pro','英语',3,7,0,6),(45,'pro','日语',4,7,0,2),(46,'pro','空中乘务',5,7,1,3),(47,'pro','环境设计',1,8,0,5),(48,'pro','视觉传达设计',2,8,0,6),(49,'pro','动画',3,8,0,4),(50,'pro','产品设计',4,8,0,2),(51,'pro','工艺美术（玉雕方向）',5,8,0,3),(52,'pro','工艺美术（木艺方向）',6,8,0,5),(53,'pro','工艺美术（珠宝设计方向）',7,8,0,6),(54,'pro','广告设计与制作',8,8,1,7),(55,'pro','数字媒体艺术设计（饰品设计方向）',9,8,1,5),(56,'pro','数字媒体艺术设计（工艺方向）',10,8,1,2),(57,'pro','数字媒体艺术设计（特效制作方向）',11,8,1,3),(58,'pro','影视摄影与制作',1,9,0,6),(59,'pro','表演',2,9,0,5),(60,'pro','广播电视编导',3,9,0,2),(61,'pro','播音与主持艺术',4,9,0,3),(62,'pro','舞蹈学',5,9,0,4),(63,'pro','音乐学',6,9,0,5),(64,'pro','人物形象设计',7,9,1,8);

/*Table structure for table `tbl_stu` */

DROP TABLE IF EXISTS `tbl_stu`;

CREATE TABLE `tbl_stu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `com_year` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `coll_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `cla_id` int(11) NOT NULL,
  `card_id` varchar(18) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `political_status` varchar(255) NOT NULL,
  `bank_card` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_stu` */

insert  into `tbl_stu`(`id`,`stu_id`,`name`,`sex`,`com_year`,`year`,`coll_id`,`pro_id`,`cla_id`,`card_id`,`address`,`password`,`political_status`,`bank_card`) values (1,'20164221081','谢丹丹','女','2016','2016',2,2,3,'422801199708153223','湖北省恩施市太阳河乡白果树村','153223','共青团员','6217 0028 7006 2379 506'),(2,'20164221082','郭欢欢','女','2016','2016',2,2,3,'421182199804010520','湖北省武穴市刊江团山村郭任十六湾17号','010520','共青团员','6217 0028 7006 2379 787'),(3,'20164221083','吴红利','女','2016','2016',2,2,3,'420984199908075025','湖北省孝感市汉川市湾潭乡二甲村三组54号','075025','共青团员','6217 0028 7006 2379 886'),(4,'20164221084','陈叶','女','2016','2016',2,2,3,'429006199811021549','湖北省天门市黄潭镇陈挡村一组29号','021549','共产党员','6217 0028 7006 2706 591'),(5,'20164221085','赵珊珊','女','2016','2016',2,2,3,'429005199802045024','潜江市老新镇全心一组','045024','共青团员','6217 0028 7006 2707 250'),(6,'20164221086','叶伊','女','2016','2016',2,2,3,'420115199703222822','湖北省武汉市洪山区流芳佛祖岭社区a区29栋501','222822','群众','6217 0028 7006 2713 084'),(7,'20164221087','陈卓','男','2016','2016',2,2,3,'422801199607222015','恩施市舞阳坝街道办事处鸭子塘村3组8号','222015','共青团员','6217 0028 7006 2379 779'),(8,'20164221089','章太乙','男','2016','2016',2,2,3,'420114199904040519','湖北省武汉市蔡甸区侏儒街新艺街108号','040519','共青团员','6217 0028 7006 2704 307'),(9,'20164221090','鄢忠坤','男','2016','2016',2,2,3,'420581199807250014','宜都市十里铺村6组73号','250014','共青团员','6217 0028 7006 2705 007'),(10,'20164221091','季正杰','男','2016','2016',2,2,3,'420606199802218512','湖北省襄阳市二汽基地锦绣天池三单元二号楼102','218512','共青团员','6217 0028 7006 2705 221'),(11,'20164221093','许博','男','2016','2016',2,2,3,'420281199811260032','湖北省大冶市保康巷3-2','260032','共青团员','6217 0028 7006 2705 726'),(12,'20164221094','孙泽政','男','2016','2016',2,2,3,'420113199712211516','武汉市汉南区湘口街湘隆小区9号楼1单元202','211516','共青团员','6217 0028 7006 2706 070'),(13,'20164221095','周京','男','2016','2016',2,2,3,'42112619971012813X','黄冈市蕲春县八里湖农场卫生院','12813X','共青团员','6217 0028 7006 2706 237'),(14,'20164221096','刘国荣','男','2016','2016',2,2,3,'42900419980820435X','仙桃市胡场镇汉一村十组','20435X','共青团员','6217 0028 7006 2706 450'),(15,'20164221097','易东林','男','2016','2016',2,2,3,'42058319981229003X','湖北省枝江市董市镇金龙村三组','29003X','共青团员','6217 0028 7006 2707 151'),(16,'20164221099','黄人檑','男','2016','2016',2,2,3,'421083199609123897','洪湖市汊河镇西池村一组15号','123897','共青团员','6217 0028 7006 2708 274'),(17,'20164221100','马子洋','男','2016','2016',2,2,3,'420881199807200013','湖北省钟祥市郢中镇连家沟社区胡家台六巷4号','200013','共青团员','6217 0028 7006 2708 720'),(18,'20164221101','王子杨','男','2016','2016',2,2,3,'420984199810224416','孝感市汉川市马口镇金马大道63号','224416','共青团员','6217 0028 7007 2728 320'),(19,'20164221102','黄锐','男','2016','2016',2,2,3,'420281199806061610','湖北黄石市大冶市金山店镇金山店大道18号601室','061610','共青团员','6217 0028 7006 2709 330'),(20,'20164221103','刘安国','男','2016','2016',2,2,3,'420922199805127719','孝感市大悟县东新乡鹿鸣村','52435000l.AG','共青团员','6217 0028 7006 2710 130'),(21,'20164221104','姚修振','男','2016','2016',2,2,3,'421023199807206312','湖北省监利县大垸农场柳口分场3队20号','206312','共青团员','6217 0028 7006 2710 569'),(22,'20164221105','袁航','男','2016','2016',2,2,3,'422801199801143214','湖北省恩施市太阳河乡茅湖淌村厚坪组','143214','共青团员','6217 0028 7006 2710 981'),(23,'20164221106','邵福','男','2016','2016',2,2,3,'429004199802012576','湖北省仙桃市彭场镇新垸村二组','012576','共青团员','6217 0028 7006 2711 369'),(24,'20164221107','梁剑','男','2016','2016',2,2,3,'420222199509022893','湖北省黄石市阳新县白沙镇吕广村畈庄组门牌号33号','022893','共青团员','6217 0028 7006 2711 732'),(25,'20164221108','胡韬','男','2016','2016',2,2,3,'42022219981002285X','湖北省黄石市阳新县现代城','02285X','共青团员','6217 0026 4000 8117 579'),(26,'20164221110','熊明松','男','2016','2016',2,2,3,'421181199607158415','湖北省麻城市木子店镇双冲村皂树垸六组3号','158415','共青团员','6217 0028 7006 2712 904'),(27,'20164221111','徐豪','男','2016','2016',2,2,3,'420114199908012013','武汉市蔡甸区张湾街柏林小区D栋45附56','012013','共青团员','6217 0028 7006 2713 415'),(28,'20164221112','熊典','男','2016','2016',2,2,3,'422201199801010814','湖北省孝感市孝南区广场街一宫村4组','010814','共青团员','6217 0028 7006 2713 795'),(29,'20164221113','刘向','男','2016','2016',2,2,3,'429001199901146116','湖北省随州市随县高城镇大桥村十一组','146116','共青团员','6217 0028 7006 2714 355'),(30,'20164221114','郭庆','男','2016','2016',2,2,3,'420116199603093310','武汉市黄陂区天灯岗加油站','093310','共青团员','6217 0028 7006 2715 071'),(31,'20164221115','董琪','男','2016','2016',2,2,3,'42900419980716347X','仙桃市圣淘沙国际花园D栋二单元2101','16347X','共青团员','6217 0028 7006 2715 543'),(32,'20164221116','陈正刚','男','2016','2016',2,2,3,'420323199707055815','十堰市竹山县深河乡茅坝村5号','055815','共青团员','6217 0028 7006 2716 228'),(33,'20164221117','傅金熙','男','2016','2016',2,2,3,'350583199803166610','福建省南安市金淘镇玉园村田头公路下113号','166610','共青团员','6217 0028 7006 2917 339'),(34,'20164221118','唐心悦','女','2016','2016',2,2,3,'522226199706280024','贵州省铜仁市印江土家族苗族自治县峨岭镇红卫街172号','280024','共青团员','6217 0071 8000 3520 266'),(35,'20164221119','邓桃','男','2016','2016',2,2,3,'522130199610160131','贵州省仁怀市苍龙街道办事处石抗坝村白果湾租','160131','共青团员','6217 0071 1000 8136 909'),(36,'20164221120','郑安翔','男','2016','2016',2,2,3,'412723199804100077','天津市宝坻区京津新城第五大道橄榄园108号楼1门202号','100077','共青团员','');

/*Table structure for table `tbl_stu_grade` */

DROP TABLE IF EXISTS `tbl_stu_grade`;

CREATE TABLE `tbl_stu_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(255) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_stu_grade` */

insert  into `tbl_stu_grade`(`id`,`stu_id`,`class_id`,`grade`) values (1,'20164221081',1,'65'),(2,'20164221082',1,'80'),(3,'20164221083',1,'70'),(4,'20164221084',1,'50'),(5,'20164221085',1,'78'),(6,'20164221086',1,'80'),(7,'20164221087',1,'67'),(8,'20164221089',1,'78'),(9,'20164221090',1,'56'),(10,'20164221091',1,'78'),(11,'20164221093',1,'89'),(12,'20164221094',1,'89'),(13,'20164221095',1,'56'),(14,'20164221096',1,'79'),(15,'20164221097',1,'98'),(16,'20164221099',1,'56'),(17,'20164221100',1,'78'),(18,'20164221101',1,'89'),(19,'20164221102',1,'67'),(20,'20164221103',1,'79'),(21,'20164221104',1,'68'),(22,'20164221105',1,'89'),(23,'20164221106',1,'67.5'),(24,'20164221107',1,'87'),(25,'20164221108',1,'45'),(26,'20164221110',1,'65'),(27,'20164221111',1,'87'),(28,'20164221112',1,'54'),(29,'20164221113',1,'65'),(30,'20164221114',1,'98'),(31,'20164221115',1,'87'),(32,'20164221116',1,'45'),(33,'20164221117',1,'87'),(34,'20164221118',1,'65'),(35,'20164221119',1,'32'),(36,'20164221120',1,'65'),(37,'20164221081',2,'80'),(38,'20164221082',2,'80'),(39,'20164221083',2,'80'),(40,'20164221084',2,'80'),(41,'20164221085',2,'80'),(42,'20164221086',2,'80'),(43,'20164221087',2,'35'),(44,'20164221089',2,'80'),(45,'20164221090',2,'80'),(46,'20164221091',2,'80'),(47,'20164221093',2,'80'),(48,'20164221094',2,'80'),(49,'20164221095',2,'80'),(50,'20164221096',2,'80'),(51,'20164221097',2,'80'),(52,'20164221099',2,'80'),(53,'20164221100',2,'80'),(54,'20164221101',2,'80'),(55,'20164221102',2,'80'),(56,'20164221103',2,'80'),(57,'20164221104',2,'80'),(58,'20164221105',2,'80'),(59,'20164221106',2,'80'),(60,'20164221107',2,'80'),(61,'20164221108',2,'80'),(62,'20164221110',2,'80'),(63,'20164221111',2,'80'),(64,'20164221112',2,'80'),(65,'20164221113',2,'70'),(66,'20164221114',2,'80'),(67,'20164221115',2,'99'),(68,'20164221116',2,'89'),(69,'20164221117',2,'75'),(70,'20164221118',2,'12'),(71,'20164221119',2,'78'),(72,'20164221120',2,'67'),(73,'20164221081',4,'90'),(74,'20164221082',4,'84'),(75,'20164221083',4,'56'),(76,'20164221084',4,'87'),(77,'20164221085',4,'45'),(78,'20164221086',4,'87'),(79,'20164221087',4,'98'),(80,'20164221089',4,'65'),(81,'20164221090',4,'54'),(82,'20164221091',4,'87'),(83,'20164221093',4,'98'),(84,'20164221094',4,'65'),(85,'20164221095',4,'54'),(86,'20164221096',4,'54'),(87,'20164221097',4,'87'),(88,'20164221099',4,'98'),(89,'20164221100',4,'54'),(90,'20164221101',4,'87'),(91,'20164221102',4,'54'),(92,'20164221103',4,'65'),(93,'20164221104',4,'54'),(94,'20164221105',4,'56'),(95,'20164221106',4,'45'),(96,'20164221107',4,'78'),(97,'20164221108',4,'89'),(98,'20164221110',4,'54'),(99,'20164221111',4,'45'),(100,'20164221112',4,'56'),(101,'20164221113',4,'89'),(102,'20164221114',4,'78'),(103,'20164221115',4,'56'),(104,'20164221116',4,'87'),(105,'20164221117',4,'54'),(106,'20164221118',4,'56'),(107,'20164221119',4,'21'),(108,'20164221120',4,'65');

/*Table structure for table `tbl_tea` */

DROP TABLE IF EXISTS `tbl_tea`;

CREATE TABLE `tbl_tea` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `tea_id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `coll_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `pro_title` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `card_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `year` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_tea` */

insert  into `tbl_tea`(`id`,`tea_id`,`name`,`sex`,`coll_id`,`pro_id`,`pro_title`,`password`,`card_id`,`year`) values (1,'admin','test','男',2,2,'教授','123456',NULL,'2016'),(2,'admin1','test1','男',2,2,'讲师','123456',NULL,'2016'),(3,'admin2','test2','男',2,2,'讲师','123456',NULL,'2016'),(4,'admin3','test3','男',2,2,'讲师','123456',NULL,'2016'),(5,'admin4','test4','男',2,2,'讲师','123456',NULL,'2016'),(6,'admin5','test5','男',2,2,'讲师','123456',NULL,'2016');

/*Table structure for table `tbl_tea_class` */

DROP TABLE IF EXISTS `tbl_tea_class`;

CREATE TABLE `tbl_tea_class` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `tea_id` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `year` int(255) NOT NULL,
  `coll_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `cla_id` int(11) NOT NULL,
  `stu_year` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_tea_class` */

insert  into `tbl_tea_class`(`id`,`tea_id`,`class_id`,`year`,`coll_id`,`pro_id`,`cla_id`,`stu_year`) values (1,'admin',1,1,2,2,3,'2016'),(2,'admin1',2,1,2,2,3,'2016'),(3,'admin2',3,1,2,2,3,'2016'),(4,'admin3',4,1,2,2,3,'2016'),(5,'admin4',5,1,2,2,3,'2016'),(6,'admin5',6,1,2,2,3,'2016');

/*Table structure for table `tbl_year_dic` */

DROP TABLE IF EXISTS `tbl_year_dic`;

CREATE TABLE `tbl_year_dic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year_id` int(11) DEFAULT NULL,
  `year_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_year_dic` */

insert  into `tbl_year_dic`(`id`,`year_id`,`year_title`) values (1,1,'2019年第一学期');

/*Table structure for table `stu_detail` */

DROP TABLE IF EXISTS `stu_detail`;

/*!50001 DROP VIEW IF EXISTS `stu_detail` */;
/*!50001 DROP TABLE IF EXISTS `stu_detail` */;

/*!50001 CREATE TABLE  `stu_detail`(
 `stu_id` varchar(11) ,
 `name` varchar(255) ,
 `sex` varchar(11) ,
 `political_status` varchar(255) ,
 `com_year` varchar(255) ,
 `year` varchar(255) ,
 `collName` varchar(255) ,
 `proName` varchar(255) ,
 `cla_id` int(11) ,
 `card_id` varchar(18) ,
 `address` varchar(255) ,
 `bank_card` varchar(255) 
)*/;

/*Table structure for table `tea_detail` */

DROP TABLE IF EXISTS `tea_detail`;

/*!50001 DROP VIEW IF EXISTS `tea_detail` */;
/*!50001 DROP TABLE IF EXISTS `tea_detail` */;

/*!50001 CREATE TABLE  `tea_detail`(
 `tea_id` varchar(20) ,
 `name` varchar(255) ,
 `sex` varchar(11) ,
 `pro_title` varchar(255) ,
 `collName` varchar(255) ,
 `proName` varchar(255) ,
 `card_id` varchar(18) ,
 `year` varchar(255) 
)*/;

/*View structure for view stu_detail */

/*!50001 DROP TABLE IF EXISTS `stu_detail` */;
/*!50001 DROP VIEW IF EXISTS `stu_detail` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stu_detail` AS select `s`.`stu_id` AS `stu_id`,`s`.`name` AS `name`,`s`.`sex` AS `sex`,`s`.`political_status` AS `political_status`,`s`.`com_year` AS `com_year`,`s`.`year` AS `year`,`d1`.`name` AS `collName`,`d2`.`name` AS `proName`,`s`.`cla_id` AS `cla_id`,`s`.`card_id` AS `card_id`,`s`.`address` AS `address`,`s`.`bank_card` AS `bank_card` from ((`tbl_stu` `s` join `tbl_dic_2016` `d1` on(((`s`.`coll_id` = `d1`.`val_id`) and (`d1`.`type` = 'col')))) join `tbl_dic_2016` `d2` on(((`s`.`pro_id` = `d2`.`val_id`) and (`d2`.`type` = 'pro') and (`d2`.`par_id` = `d1`.`val_id`)))) */;

/*View structure for view tea_detail */

/*!50001 DROP TABLE IF EXISTS `tea_detail` */;
/*!50001 DROP VIEW IF EXISTS `tea_detail` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tea_detail` AS select `t`.`tea_id` AS `tea_id`,`t`.`name` AS `name`,`t`.`sex` AS `sex`,`t`.`pro_title` AS `pro_title`,`d1`.`name` AS `collName`,`d2`.`name` AS `proName`,`t`.`card_id` AS `card_id`,`t`.`year` AS `year` from ((`tbl_tea` `t` join `tbl_dic_2016` `d1` on(((`t`.`coll_id` = `d1`.`val_id`) and (`d1`.`type` = 'col')))) join `tbl_dic_2016` `d2` on(((`t`.`pro_id` = `d2`.`val_id`) and (`d2`.`type` = 'pro') and (`d2`.`par_id` = `d1`.`val_id`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
