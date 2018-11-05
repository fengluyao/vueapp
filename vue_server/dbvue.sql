SET NAMES UTF8;
#drop database if exists vueplay;
create database vueplay CHARSET=UTF8;
use vueplay;

CREATE TABLE `lunbolist` (
  `lid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
);

INSERT INTO `lunbolist` (`lid`, `img_url`, `title`) VALUES
(1, 'http://127.0.0.1:3000/img/1399518636.jpg', '图片1'),
(2, 'http://127.0.0.1:3000/img/1399518651.jpg', '图片2'),
(3, 'http://127.0.0.1:3000/img/1399518674.jpg', '图片3'),
(4, 'http://127.0.0.1:3000/img/1399518692.jpg', '图片4');


CREATE TABLE `applist` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `renqi` int,
  `big` decimal(6,2)
);

INSERT INTO `applist` VALUES(Null,"http://127.0.0.1:3000/img/1.jpg","万人炸金花",667,6.9);
INSERT INTO `applist` VALUES(Null,"http://127.0.0.1:3000/img/2.jpg","女神斗地主",667,6.9);
INSERT INTO `applist` VALUES(Null,"http://127.0.0.1:3000/img/3.jpg","天天爱闯关",667,6.9);
INSERT INTO `applist` VALUES(Null,"http://127.0.0.1:3000/img/4.jpg","嘉米麻将",667,6.9);
INSERT INTO `applist` VALUES(Null,"http://127.0.0.1:3000/img/5.jpg","万人斗地主",667,6.9);
INSERT INTO `applist` VALUES(Null,"http://127.0.0.1:3000/img/6.jpg","吸血鬼日记",667,6.9);
INSERT INTO `applist` VALUES(Null,"http://127.0.0.1:3000/img/7.jpg","3D狂野飞车",667,6.9);
INSERT INTO `applist` VALUES(Null,"http://127.0.0.1:3000/img/8.jpg","天天美女",667,6.9);
INSERT INTO `applist` VALUES(Null,"http://127.0.0.1:3000/img/9.jpg","来自星星的僵尸",667,6.9);

CREATE TABLE `jdlist` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `renqi` int,
  `big` decimal(6,2)
);

INSERT INTO `jdlist` VALUES(Null,"http://127.0.0.1:3000/img/11.jpg","拳皇98",121,71.94);
INSERT INTO `jdlist` VALUES(Null,"http://127.0.0.1:3000/img/12.jpg","3D狂热飞车",19,11.51);
INSERT INTO `jdlist` VALUES(Null,"http://127.0.0.1:3000/img/13.jpg","围住神经猫",2140,0.44);
INSERT INTO `jdlist` VALUES(Null,"http://127.0.0.1:3000/img/14.jpg","变形金刚:崛起",97,92.29);
INSERT INTO `jdlist` VALUES(Null,"http://127.0.0.1:3000/img/15.jpg","狂野飙车8兔谷歌",186,1007);
INSERT INTO `jdlist` VALUES(Null,"http://127.0.0.1:3000/img/16.jpg","天天老虎机",20,2.96);
INSERT INTO `jdlist` VALUES(Null,"http://127.0.0.1:3000/img/17.jpg","全民狂飙",19,6.15);
INSERT INTO `jdlist` VALUES(Null,"http://127.0.0.1:3000/img/18.jpg","街头霸王4:竞技",73,1);
INSERT INTO `jdlist` VALUES(Null,"http://127.0.0.1:3000/img/19.jpg","纪念碑谷",1363,119.75);

CREATE TABLE `yxlist` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `renqi` int,
  `big` decimal(6,2)
);

INSERT INTO `yxlist` VALUES(Null,"http://127.0.0.1:3000/img/11.jpg","拳皇98",121,71.94);
INSERT INTO `yxlist` VALUES(Null,"http://127.0.0.1:3000/img/12.jpg","3D狂热飞车",19,11.51);
INSERT INTO `yxlist` VALUES(Null,"http://127.0.0.1:3000/img/13.jpg","围住神经猫",2140,0.44);
INSERT INTO `yxlist` VALUES(Null,"http://127.0.0.1:3000/img/14.jpg","变形金刚:崛起",97,92.29);
INSERT INTO `yxlist` VALUES(Null,"http://127.0.0.1:3000/img/15.jpg","狂野飙车8兔谷歌",186,1007);
INSERT INTO `yxlist` VALUES(Null,"http://127.0.0.1:3000/img/16.jpg","天天老虎机",20,2.96);
INSERT INTO `yxlist` VALUES(Null,"http://127.0.0.1:3000/img/17.jpg","全民狂飙",19,6.15);
INSERT INTO `yxlist` VALUES(Null,"http://127.0.0.1:3000/img/18.jpg","街头霸王4:竞技",73,1);
INSERT INTO `yxlist` VALUES(Null,"http://127.0.0.1:3000/img/19.jpg","纪念碑谷",1363,119.75);