/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : jjsc

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-05-19 19:07:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `furn_id` int(11) DEFAULT NULL,
  `furn_name` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('19', '9', '1', '茶几', '11111', '2', '22222', null);
INSERT INTO `cart` VALUES ('20', '10', '1', '茶几', '11111', '2', '22222', null);
INSERT INTO `cart` VALUES ('25', '11', '1', '茶几', '11111', '2', '22222', null);
INSERT INTO `cart` VALUES ('30', '7', '8', '沙发3', '123', '1', '123', '0');
INSERT INTO `cart` VALUES ('31', '7', '7', '沙发', '36', '1', '36', '0');
INSERT INTO `cart` VALUES ('32', '7', '6', '沙发2', '2500', '1', '2500', '0');
INSERT INTO `cart` VALUES ('33', '7', '5', '沙发', '1000', '1', '1000', '0');
INSERT INTO `cart` VALUES ('34', '7', '4', '111', '12', '1', '12', '1');
INSERT INTO `cart` VALUES ('35', '7', '1', '茶几', '11111', '1', '11111', '1');
INSERT INTO `cart` VALUES ('36', '7', '8', '沙发3', '123', '1', '123', '0');

-- ----------------------------
-- Table structure for `furn`
-- ----------------------------
DROP TABLE IF EXISTS `furn`;
CREATE TABLE `furn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `picture` varchar(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of furn
-- ----------------------------
INSERT INTO `furn` VALUES ('1', '111', '茶几', '红色', '111', '11111', '沙发3.jpg', '94');
INSERT INTO `furn` VALUES ('4', '111', '111', '11', '', '12', '沙发2.jpg', '1');
INSERT INTO `furn` VALUES ('5', '1', '沙发', 'red', '2米', '1000', '床10.jpg', '19');
INSERT INTO `furn` VALUES ('6', '沙发', '沙发2', '蓝', '25', '2500', '沙发.jpg', '454');
INSERT INTO `furn` VALUES ('7', '沙发', '沙发', '粉色', '20', '36', '沙发10.jpg', '4');
INSERT INTO `furn` VALUES ('8', '沙发', '沙发3', '粉色', '20', '123', '沙发7.jpg', '53372');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `price` float(20,0) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `recipient` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('8', '7', '8', '136', '2018-05-17 21:26:50', '0', 'hdx', '136', '广东省');
INSERT INTO `orders` VALUES ('9', '7', '12', '33', '2018-05-17 21:39:53', '0', 'hdx', '136', '广东省');
INSERT INTO `orders` VALUES ('12', '7', '16', '11111', '2018-05-18 00:28:41', '0', 'hdx', '136523', '广东省');
INSERT INTO `orders` VALUES ('13', '7', '14', '11111', '2018-05-18 00:37:55', '0', 'hdx', '136523', '广东省');
INSERT INTO `orders` VALUES ('14', '7', '17', '11111', '2018-05-18 14:43:55', '1', 'hdx', '13652322', '广东省');
INSERT INTO `orders` VALUES ('16', '9', '19', '22222', '2018-05-19 01:33:10', '0', 'hsh', '13652377892', '西三705');
INSERT INTO `orders` VALUES ('17', '10', '20', '22222', '2018-05-19 03:36:24', '0', 'user001', '13652377892', '西三703');
INSERT INTO `orders` VALUES ('18', '7', '21', '24', '2018-05-18 13:42:18', '0', 'hdx', '136523', '广东省');
INSERT INTO `orders` VALUES ('19', '7', '17', '11111', '2018-05-18 13:58:34', '0', 'hdx', '136523', '广东省');
INSERT INTO `orders` VALUES ('20', '7', '17', '11111', '2018-05-18 13:58:37', '0', 'hdx', '136523', '广东省');
INSERT INTO `orders` VALUES ('21', '7', '18', '11111', '2018-05-18 13:58:42', '1', 'hdx', '136523', '广东省');
INSERT INTO `orders` VALUES ('22', '11', '25', '22222', '2018-05-19 05:12:20', '1', 'user002', '13652377892', '西三703');
INSERT INTO `orders` VALUES ('23', '7', '17', '11111', '2018-05-18 17:12:22', '0', 'hdx', '136523', '广东省');
INSERT INTO `orders` VALUES ('25', '7', '29', '36', '2018-05-19 18:06:02', '0', 'hdx', '136523', '广东省');
INSERT INTO `orders` VALUES ('26', '7', '35', '11111', '2018-05-19 18:58:45', '0', 'hdx', '136523', '广东省');
INSERT INTO `orders` VALUES ('27', '7', '34', '12', '2018-05-19 19:01:19', '0', 'hdx', '136523', '广东省');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `money` float(20,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'glx', '123456', '188181111111', '703', '1000');
INSERT INTO `user` VALUES ('6', 'hbx', '111111', '1888888888', '', '29000');
INSERT INTO `user` VALUES ('7', 'hdx', '123456', '136523', '广东省', '977778');
INSERT INTO `user` VALUES ('8', 'hz', '123', null, null, null);
INSERT INTO `user` VALUES ('9', 'hsh', '123', '13652377892', '西三703', '27778');
INSERT INTO `user` VALUES ('10', 'user001', '123456', '13652377892', '广东省', '100000');
