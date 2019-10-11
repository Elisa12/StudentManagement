/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : student_management

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-10-11 18:06:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_adm
-- ----------------------------
DROP TABLE IF EXISTS `tbl_adm`;
CREATE TABLE `tbl_adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_id` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_adm
-- ----------------------------
INSERT INTO `tbl_adm` VALUES ('1', 'root', 'root');

-- ----------------------------
-- Table structure for tbl_class
-- ----------------------------
DROP TABLE IF EXISTS `tbl_class`;
CREATE TABLE `tbl_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coll_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `stu_year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_class
-- ----------------------------
INSERT INTO `tbl_class` VALUES ('1', '软件项目开发实战', '2', '2', '1', '2016');
INSERT INTO `tbl_class` VALUES ('2', '网络系统集成', '2', '2', '1', '2016');
INSERT INTO `tbl_class` VALUES ('3', 'Android应用程序开发', '2', '2', '1', '2016');
INSERT INTO `tbl_class` VALUES ('4', '嵌入式系统', '2', '2', '1', '2016');
INSERT INTO `tbl_class` VALUES ('5', '创业实训', '2', '2', '1', '2016');
INSERT INTO `tbl_class` VALUES ('6', '软件测试', '2', '2', '1', '2016');

-- ----------------------------
-- Table structure for tbl_dic_2016
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_2016`;
CREATE TABLE `tbl_dic_2016` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `val_id` int(11) NOT NULL,
  `par_id` int(11) DEFAULT NULL,
  `specialized` int(11) DEFAULT NULL,
  `cla_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_2016
-- ----------------------------
INSERT INTO `tbl_dic_2016` VALUES ('1', 'col', '人工智能学院', '2', '1', null, null);
INSERT INTO `tbl_dic_2016` VALUES ('2', 'col', '城市建设学院', '3', '1', null, null);
INSERT INTO `tbl_dic_2016` VALUES ('3', 'col', '生命科学学院', '4', '1', null, null);
INSERT INTO `tbl_dic_2016` VALUES ('4', 'col', '护理学院', '5', '1', null, null);
INSERT INTO `tbl_dic_2016` VALUES ('5', 'col', '商学院', '6', '1', null, null);
INSERT INTO `tbl_dic_2016` VALUES ('6', 'col', '文法与外语学院', '7', '1', null, null);
INSERT INTO `tbl_dic_2016` VALUES ('7', 'col', '艺术设计学院', '8', '1', null, null);
INSERT INTO `tbl_dic_2016` VALUES ('8', 'col', '影视传媒学院', '9', '1', null, null);
INSERT INTO `tbl_dic_2016` VALUES ('11', 'pro', '智能科学与技术', '1', '2', '0', '3');
INSERT INTO `tbl_dic_2016` VALUES ('12', 'pro', '计算机科学与技术', '2', '2', '0', '4');
INSERT INTO `tbl_dic_2016` VALUES ('13', 'pro', '物联网工程', '3', '2', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('14', 'pro', '软件工程', '4', '2', '0', '2');
INSERT INTO `tbl_dic_2016` VALUES ('15', 'pro', '电气工程及其自动化', '5', '2', '0', '3');
INSERT INTO `tbl_dic_2016` VALUES ('16', 'pro', '机械电子工程', '6', '2', '0', '4');
INSERT INTO `tbl_dic_2016` VALUES ('17', 'pro', '电子信息工程', '7', '2', '0', '9');
INSERT INTO `tbl_dic_2016` VALUES ('18', 'pro', '机电一体化技术', '8', '2', '1', '1');
INSERT INTO `tbl_dic_2016` VALUES ('19', 'pro', '计算机网络技术', '9', '2', '1', '3');
INSERT INTO `tbl_dic_2016` VALUES ('20', 'pro', '工程造价', '1', '3', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('21', 'pro', '土木工程（房屋建筑工程方向）', '2', '3', '0', '6');
INSERT INTO `tbl_dic_2016` VALUES ('22', 'pro', '土木工程（道路桥梁工程方向）', '3', '3', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('23', 'pro', '建筑学', '4', '3', '0', '4');
INSERT INTO `tbl_dic_2016` VALUES ('24', 'pro', '遥感科学与技术（无人机低空遥感方向）', '5', '3', '0', '3');
INSERT INTO `tbl_dic_2016` VALUES ('25', 'pro', '建筑工程技术', '6', '3', '1', '5');
INSERT INTO `tbl_dic_2016` VALUES ('26', 'pro', '建筑装饰工程技术', '7', '3', '1', '4');
INSERT INTO `tbl_dic_2016` VALUES ('27', 'pro', '环境工程', '1', '4', '0', '9');
INSERT INTO `tbl_dic_2016` VALUES ('28', 'pro', '生物工程', '2', '4', '0', '7');
INSERT INTO `tbl_dic_2016` VALUES ('29', 'pro', '药学', '3', '4', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('30', 'pro', '护理学', '1', '5', '0', '2');
INSERT INTO `tbl_dic_2016` VALUES ('31', 'pro', '助产学', '2', '5', '0', '1');
INSERT INTO `tbl_dic_2016` VALUES ('32', 'pro', '护理专科', '3', '5', '1', '5');
INSERT INTO `tbl_dic_2016` VALUES ('33', 'pro', '工商管理', '1', '6', '0', '6');
INSERT INTO `tbl_dic_2016` VALUES ('34', 'pro', '电子商务', '2', '6', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('35', 'pro', '会计学', '3', '6', '0', '4');
INSERT INTO `tbl_dic_2016` VALUES ('36', 'pro', '人力资源管理', '4', '6', '0', '2');
INSERT INTO `tbl_dic_2016` VALUES ('37', 'pro', '国际经济与贸易', '5', '6', '0', '3');
INSERT INTO `tbl_dic_2016` VALUES ('38', 'pro', '投资学', '6', '6', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('39', 'pro', '市场营销', '7', '6', '0', '4');
INSERT INTO `tbl_dic_2016` VALUES ('40', 'pro', '财务管理', '8', '6', '1', '3');
INSERT INTO `tbl_dic_2016` VALUES ('41', 'pro', '酒店管理', '9', '6', '1', '5');
INSERT INTO `tbl_dic_2016` VALUES ('42', 'pro', '法学', '1', '7', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('43', 'pro', '汉语言文学', '2', '7', '0', '4');
INSERT INTO `tbl_dic_2016` VALUES ('44', 'pro', '英语', '3', '7', '0', '6');
INSERT INTO `tbl_dic_2016` VALUES ('45', 'pro', '日语', '4', '7', '0', '2');
INSERT INTO `tbl_dic_2016` VALUES ('46', 'pro', '空中乘务', '5', '7', '1', '3');
INSERT INTO `tbl_dic_2016` VALUES ('47', 'pro', '环境设计', '1', '8', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('48', 'pro', '视觉传达设计', '2', '8', '0', '6');
INSERT INTO `tbl_dic_2016` VALUES ('49', 'pro', '动画', '3', '8', '0', '4');
INSERT INTO `tbl_dic_2016` VALUES ('50', 'pro', '产品设计', '4', '8', '0', '2');
INSERT INTO `tbl_dic_2016` VALUES ('51', 'pro', '工艺美术（玉雕方向）', '5', '8', '0', '3');
INSERT INTO `tbl_dic_2016` VALUES ('52', 'pro', '工艺美术（木艺方向）', '6', '8', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('53', 'pro', '工艺美术（珠宝设计方向）', '7', '8', '0', '6');
INSERT INTO `tbl_dic_2016` VALUES ('54', 'pro', '广告设计与制作', '8', '8', '1', '7');
INSERT INTO `tbl_dic_2016` VALUES ('55', 'pro', '数字媒体艺术设计（饰品设计方向）', '9', '8', '1', '5');
INSERT INTO `tbl_dic_2016` VALUES ('56', 'pro', '数字媒体艺术设计（工艺方向）', '10', '8', '1', '2');
INSERT INTO `tbl_dic_2016` VALUES ('57', 'pro', '数字媒体艺术设计（特效制作方向）', '11', '8', '1', '3');
INSERT INTO `tbl_dic_2016` VALUES ('58', 'pro', '影视摄影与制作', '1', '9', '0', '6');
INSERT INTO `tbl_dic_2016` VALUES ('59', 'pro', '表演', '2', '9', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('60', 'pro', '广播电视编导', '3', '9', '0', '2');
INSERT INTO `tbl_dic_2016` VALUES ('61', 'pro', '播音与主持艺术', '4', '9', '0', '3');
INSERT INTO `tbl_dic_2016` VALUES ('62', 'pro', '舞蹈学', '5', '9', '0', '4');
INSERT INTO `tbl_dic_2016` VALUES ('63', 'pro', '音乐学', '6', '9', '0', '5');
INSERT INTO `tbl_dic_2016` VALUES ('64', 'pro', '人物形象设计', '7', '9', '1', '8');

-- ----------------------------
-- Table structure for tbl_stu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stu`;
CREATE TABLE `tbl_stu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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

-- ----------------------------
-- Records of tbl_stu
-- ----------------------------
INSERT INTO `tbl_stu` VALUES ('1', '20164221081', '谢丹丹', '女', '2016', '2016', '2', '2', '3', '422801199708153223', '湖北省恩施市太阳河乡白果树村', '153223', '共青团员', '6217 0028 7006 2379 506');
INSERT INTO `tbl_stu` VALUES ('2', '20164221082', '郭欢欢', '女', '2016', '2016', '2', '2', '3', '421182199804010520', '湖北省武穴市刊江团山村郭任十六湾17号', '010520', '共青团员', '6217 0028 7006 2379 787');
INSERT INTO `tbl_stu` VALUES ('3', '20164221083', '吴红利', '女', '2016', '2016', '2', '2', '3', '420984199908075025', '湖北省孝感市汉川市湾潭乡二甲村三组54号', '075025', '共青团员', '6217 0028 7006 2379 886');
INSERT INTO `tbl_stu` VALUES ('4', '20164221084', '陈叶', '女', '2016', '2016', '2', '2', '3', '429006199811021549', '湖北省天门市黄潭镇陈挡村一组29号', '021549', '共产党员', '6217 0028 7006 2706 591');
INSERT INTO `tbl_stu` VALUES ('5', '20164221085', '赵珊珊', '女', '2016', '2016', '2', '2', '3', '429005199802045024', '潜江市老新镇全心一组', '045024', '共青团员', '6217 0028 7006 2707 250');
INSERT INTO `tbl_stu` VALUES ('6', '20164221086', '叶伊', '女', '2016', '2016', '2', '2', '3', '420115199703222822', '湖北省武汉市洪山区流芳佛祖岭社区a区29栋501', '222822', '群众', '6217 0028 7006 2713 084');
INSERT INTO `tbl_stu` VALUES ('7', '20164221087', '陈卓', '男', '2016', '2016', '2', '2', '3', '422801199607222015', '恩施市舞阳坝街道办事处鸭子塘村3组8号', '222015', '共青团员', '6217 0028 7006 2379 779');
INSERT INTO `tbl_stu` VALUES ('8', '20164221089', '章太乙', '男', '2016', '2016', '2', '2', '3', '420114199904040519', '湖北省武汉市蔡甸区侏儒街新艺街108号', '040519', '共青团员', '6217 0028 7006 2704 307');
INSERT INTO `tbl_stu` VALUES ('9', '20164221090', '鄢忠坤', '男', '2016', '2016', '2', '2', '3', '420581199807250014', '宜都市十里铺村6组73号', '250014', '共青团员', '6217 0028 7006 2705 007');
INSERT INTO `tbl_stu` VALUES ('10', '20164221091', '季正杰', '男', '2016', '2016', '2', '2', '3', '420606199802218512', '湖北省襄阳市二汽基地锦绣天池三单元二号楼102', '218512', '共青团员', '6217 0028 7006 2705 221');
INSERT INTO `tbl_stu` VALUES ('11', '20164221093', '许博', '男', '2016', '2016', '2', '2', '3', '420281199811260032', '湖北省大冶市保康巷3-2', '260032', '共青团员', '6217 0028 7006 2705 726');
INSERT INTO `tbl_stu` VALUES ('12', '20164221094', '孙泽政', '男', '2016', '2016', '2', '2', '3', '420113199712211516', '武汉市汉南区湘口街湘隆小区9号楼1单元202', '211516', '共青团员', '6217 0028 7006 2706 070');
INSERT INTO `tbl_stu` VALUES ('13', '20164221095', '周京', '男', '2016', '2016', '2', '2', '3', '42112619971012813X', '黄冈市蕲春县八里湖农场卫生院', '12813X', '共青团员', '6217 0028 7006 2706 237');
INSERT INTO `tbl_stu` VALUES ('14', '20164221096', '刘国荣', '男', '2016', '2016', '2', '2', '3', '42900419980820435X', '仙桃市胡场镇汉一村十组', '20435X', '共青团员', '6217 0028 7006 2706 450');
INSERT INTO `tbl_stu` VALUES ('15', '20164221097', '易东林', '男', '2016', '2016', '2', '2', '3', '42058319981229003X', '湖北省枝江市董市镇金龙村三组', '29003X', '共青团员', '6217 0028 7006 2707 151');
INSERT INTO `tbl_stu` VALUES ('16', '20164221099', '黄人檑', '男', '2016', '2016', '2', '2', '3', '421083199609123897', '洪湖市汊河镇西池村一组15号', '123897', '共青团员', '6217 0028 7006 2708 274');
INSERT INTO `tbl_stu` VALUES ('17', '20164221100', '马子洋', '男', '2016', '2016', '2', '2', '3', '420881199807200013', '湖北省钟祥市郢中镇连家沟社区胡家台六巷4号', '200013', '共青团员', '6217 0028 7006 2708 720');
INSERT INTO `tbl_stu` VALUES ('18', '20164221101', '王子杨', '男', '2016', '2016', '2', '2', '3', '420984199810224416', '孝感市汉川市马口镇金马大道63号', '224416', '共青团员', '6217 0028 7007 2728 320');
INSERT INTO `tbl_stu` VALUES ('19', '20164221102', '黄锐', '男', '2016', '2016', '2', '2', '3', '420281199806061610', '湖北黄石市大冶市金山店镇金山店大道18号601室', '061610', '共青团员', '6217 0028 7006 2709 330');
INSERT INTO `tbl_stu` VALUES ('20', '20164221103', '刘安国', '男', '2016', '2016', '2', '2', '3', '420922199805127719', '孝感市大悟县东新乡鹿鸣村', '127719', '共青团员', '6217 0028 7006 2710 130');
INSERT INTO `tbl_stu` VALUES ('21', '20164221104', '姚修振', '男', '2016', '2016', '2', '2', '3', '421023199807206312', '湖北省监利县大垸农场柳口分场3队20号', '206312', '共青团员', '6217 0028 7006 2710 569');
INSERT INTO `tbl_stu` VALUES ('22', '20164221105', '袁航', '男', '2016', '2016', '2', '2', '3', '422801199801143214', '湖北省恩施市太阳河乡茅湖淌村厚坪组', '143214', '共青团员', '6217 0028 7006 2710 981');
INSERT INTO `tbl_stu` VALUES ('23', '20164221106', '邵福', '男', '2016', '2016', '2', '2', '3', '429004199802012576', '湖北省仙桃市彭场镇新垸村二组', '012576', '共青团员', '6217 0028 7006 2711 369');
INSERT INTO `tbl_stu` VALUES ('24', '20164221107', '梁剑', '男', '2016', '2016', '2', '2', '3', '420222199509022893', '湖北省黄石市阳新县白沙镇吕广村畈庄组门牌号33号', '022893', '共青团员', '6217 0028 7006 2711 732');
INSERT INTO `tbl_stu` VALUES ('25', '20164221108', '胡韬', '男', '2016', '2016', '2', '2', '3', '42022219981002285X', '湖北省黄石市阳新县现代城', '02285X', '共青团员', '6217 0026 4000 8117 579');
INSERT INTO `tbl_stu` VALUES ('26', '20164221110', '熊明松', '男', '2016', '2016', '2', '2', '3', '421181199607158415', '湖北省麻城市木子店镇双冲村皂树垸六组3号', '158415', '共青团员', '6217 0028 7006 2712 904');
INSERT INTO `tbl_stu` VALUES ('27', '20164221111', '徐豪', '男', '2016', '2016', '2', '2', '3', '420114199908012013', '武汉市蔡甸区张湾街柏林小区D栋45附56', '012013', '共青团员', '6217 0028 7006 2713 415');
INSERT INTO `tbl_stu` VALUES ('28', '20164221112', '熊典', '男', '2016', '2016', '2', '2', '3', '422201199801010814', '湖北省孝感市孝南区广场街一宫村4组', '010814', '共青团员', '6217 0028 7006 2713 795');
INSERT INTO `tbl_stu` VALUES ('29', '20164221113', '刘向', '男', '2016', '2016', '2', '2', '3', '429001199901146116', '湖北省随州市随县高城镇大桥村十一组', '146116', '共青团员', '6217 0028 7006 2714 355');
INSERT INTO `tbl_stu` VALUES ('30', '20164221114', '郭庆', '男', '2016', '2016', '2', '2', '3', '420116199603093310', '武汉市黄陂区天灯岗加油站', '093310', '共青团员', '6217 0028 7006 2715 071');
INSERT INTO `tbl_stu` VALUES ('31', '20164221115', '董琪', '男', '2016', '2016', '2', '2', '3', '42900419980716347X', '仙桃市圣淘沙国际花园D栋二单元2101', '16347X', '共青团员', '6217 0028 7006 2715 543');
INSERT INTO `tbl_stu` VALUES ('32', '20164221116', '陈正刚', '男', '2016', '2016', '2', '2', '3', '420323199707055815', '十堰市竹山县深河乡茅坝村5号', '055815', '共青团员', '6217 0028 7006 2716 228');
INSERT INTO `tbl_stu` VALUES ('33', '20164221117', '傅金熙', '男', '2016', '2016', '2', '2', '3', '350583199803166610', '福建省南安市金淘镇玉园村田头公路下113号', '166610', '共青团员', '6217 0028 7006 2917 339');
INSERT INTO `tbl_stu` VALUES ('34', '20164221118', '唐心悦', '女', '2016', '2016', '2', '2', '3', '522226199706280024', '贵州省铜仁市印江土家族苗族自治县峨岭镇红卫街172号', '280024', '共青团员', '6217 0071 8000 3520 266');
INSERT INTO `tbl_stu` VALUES ('35', '20164221119', '邓桃', '男', '2016', '2016', '2', '2', '3', '522130199610160131', '贵州省仁怀市苍龙街道办事处石抗坝村白果湾租', '160131', '共青团员', '6217 0071 1000 8136 909');
INSERT INTO `tbl_stu` VALUES ('36', '20164221120', '郑安翔', '男', '2016', '2016', '2', '2', '3', '412723199804100077', '天津市宝坻区京津新城第五大道橄榄园108号楼1门202号', '100077', '共青团员', '');

-- ----------------------------
-- Table structure for tbl_stu_grade
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stu_grade`;
CREATE TABLE `tbl_stu_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(255) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_stu_grade
-- ----------------------------
INSERT INTO `tbl_stu_grade` VALUES ('1', '20164221081', '1', '65');
INSERT INTO `tbl_stu_grade` VALUES ('2', '20164221082', '1', '80');
INSERT INTO `tbl_stu_grade` VALUES ('3', '20164221083', '1', '70');
INSERT INTO `tbl_stu_grade` VALUES ('4', '20164221084', '1', '50');
INSERT INTO `tbl_stu_grade` VALUES ('5', '20164221085', '1', '78');
INSERT INTO `tbl_stu_grade` VALUES ('6', '20164221086', '1', '80');
INSERT INTO `tbl_stu_grade` VALUES ('7', '20164221087', '1', '67');
INSERT INTO `tbl_stu_grade` VALUES ('8', '20164221089', '1', '78');
INSERT INTO `tbl_stu_grade` VALUES ('9', '20164221090', '1', '56');
INSERT INTO `tbl_stu_grade` VALUES ('10', '20164221091', '1', '78');
INSERT INTO `tbl_stu_grade` VALUES ('11', '20164221093', '1', '89');
INSERT INTO `tbl_stu_grade` VALUES ('12', '20164221094', '1', '89');
INSERT INTO `tbl_stu_grade` VALUES ('13', '20164221095', '1', '56');
INSERT INTO `tbl_stu_grade` VALUES ('14', '20164221096', '1', '79');
INSERT INTO `tbl_stu_grade` VALUES ('15', '20164221097', '1', '98');
INSERT INTO `tbl_stu_grade` VALUES ('16', '20164221099', '1', '56');
INSERT INTO `tbl_stu_grade` VALUES ('17', '20164221100', '1', '78');
INSERT INTO `tbl_stu_grade` VALUES ('18', '20164221101', '1', '89');
INSERT INTO `tbl_stu_grade` VALUES ('19', '20164221102', '1', '67');
INSERT INTO `tbl_stu_grade` VALUES ('20', '20164221103', '1', '79');
INSERT INTO `tbl_stu_grade` VALUES ('21', '20164221104', '1', '68');
INSERT INTO `tbl_stu_grade` VALUES ('22', '20164221105', '1', '89');
INSERT INTO `tbl_stu_grade` VALUES ('23', '20164221106', '1', '67.5');
INSERT INTO `tbl_stu_grade` VALUES ('24', '20164221107', '1', '87');
INSERT INTO `tbl_stu_grade` VALUES ('25', '20164221108', '1', '45');
INSERT INTO `tbl_stu_grade` VALUES ('26', '20164221110', '1', '65');
INSERT INTO `tbl_stu_grade` VALUES ('27', '20164221111', '1', '87');
INSERT INTO `tbl_stu_grade` VALUES ('28', '20164221112', '1', '54');
INSERT INTO `tbl_stu_grade` VALUES ('29', '20164221113', '1', '65');
INSERT INTO `tbl_stu_grade` VALUES ('30', '20164221114', '1', '98');
INSERT INTO `tbl_stu_grade` VALUES ('31', '20164221115', '1', '87');
INSERT INTO `tbl_stu_grade` VALUES ('32', '20164221116', '1', '45');
INSERT INTO `tbl_stu_grade` VALUES ('33', '20164221117', '1', '87');
INSERT INTO `tbl_stu_grade` VALUES ('34', '20164221118', '1', '65');
INSERT INTO `tbl_stu_grade` VALUES ('35', '20164221119', '1', '32');
INSERT INTO `tbl_stu_grade` VALUES ('36', '20164221120', '1', '65');
INSERT INTO `tbl_stu_grade` VALUES ('37', '20164221081', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('38', '20164221082', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('39', '20164221083', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('40', '20164221084', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('41', '20164221085', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('42', '20164221086', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('43', '20164221087', '2', '35');
INSERT INTO `tbl_stu_grade` VALUES ('44', '20164221089', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('45', '20164221090', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('46', '20164221091', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('47', '20164221093', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('48', '20164221094', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('49', '20164221095', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('50', '20164221096', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('51', '20164221097', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('52', '20164221099', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('53', '20164221100', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('54', '20164221101', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('55', '20164221102', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('56', '20164221103', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('57', '20164221104', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('58', '20164221105', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('59', '20164221106', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('60', '20164221107', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('61', '20164221108', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('62', '20164221110', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('63', '20164221111', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('64', '20164221112', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('65', '20164221113', '2', '70');
INSERT INTO `tbl_stu_grade` VALUES ('66', '20164221114', '2', '80');
INSERT INTO `tbl_stu_grade` VALUES ('67', '20164221115', '2', '99');
INSERT INTO `tbl_stu_grade` VALUES ('68', '20164221116', '2', '89');
INSERT INTO `tbl_stu_grade` VALUES ('69', '20164221117', '2', '75');
INSERT INTO `tbl_stu_grade` VALUES ('70', '20164221118', '2', '12');
INSERT INTO `tbl_stu_grade` VALUES ('71', '20164221119', '2', '78');
INSERT INTO `tbl_stu_grade` VALUES ('72', '20164221120', '2', '67');

-- ----------------------------
-- Table structure for tbl_tea
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tea`;
CREATE TABLE `tbl_tea` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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

-- ----------------------------
-- Records of tbl_tea
-- ----------------------------
INSERT INTO `tbl_tea` VALUES ('1', 'admin', '讲师', '男', '2', '2', '教授', '123456', '420922199805127716', '2016');
INSERT INTO `tbl_tea` VALUES ('2', 'admin1', 'test1', '男', '2', '2', '讲师', '123456', null, '2016');
INSERT INTO `tbl_tea` VALUES ('3', 'admin2', 'test2', null, '2', '2', '讲师', '123456', null, '2016');
INSERT INTO `tbl_tea` VALUES ('4', 'admin3', 'test3', null, '2', '2', '讲师', '123456', null, '2016');
INSERT INTO `tbl_tea` VALUES ('5', 'admin4', 'test4', null, '2', '2', '讲师', '123456', null, '2016');
INSERT INTO `tbl_tea` VALUES ('6', 'admin5', 'test5', null, '2', '2', '讲师', '123456', null, '2016');

-- ----------------------------
-- Table structure for tbl_tea_class
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tea_class`;
CREATE TABLE `tbl_tea_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tea_id` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `year` int(255) NOT NULL,
  `coll_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `cla_id` int(11) NOT NULL,
  `stu_year` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tea_class
-- ----------------------------
INSERT INTO `tbl_tea_class` VALUES ('1', 'admin', '1', '1', '2', '2', '3', '2016');
INSERT INTO `tbl_tea_class` VALUES ('2', 'admin1', '2', '1', '2', '2', '3', '2016');
INSERT INTO `tbl_tea_class` VALUES ('3', 'admin2', '3', '1', '2', '2', '3', '2016');
INSERT INTO `tbl_tea_class` VALUES ('4', 'admin3', '4', '1', '2', '2', '3', '2016');
INSERT INTO `tbl_tea_class` VALUES ('5', 'admin4', '5', '1', '2', '2', '3', '2016');
INSERT INTO `tbl_tea_class` VALUES ('6', 'admin5', '6', '1', '2', '2', '3', '2016');

-- ----------------------------
-- Table structure for tbl_year_dic
-- ----------------------------
DROP TABLE IF EXISTS `tbl_year_dic`;
CREATE TABLE `tbl_year_dic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year_id` int(11) DEFAULT NULL,
  `year_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_year_dic
-- ----------------------------
INSERT INTO `tbl_year_dic` VALUES ('1', '1', '2019年第一学期');
