/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t255`;
CREATE DATABASE IF NOT EXISTS `t255` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t255`;

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/youxijiaoyixitong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/youxijiaoyixitong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/youxijiaoyixitong/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'yonghu_types', '用户状态', 1, '启用', NULL, NULL, '2022-04-30 08:16:59'),
	(2, 'yonghu_types', '用户状态', 2, '禁用', NULL, NULL, '2022-04-30 08:16:59'),
	(3, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-30 08:16:59'),
	(4, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-30 08:16:59'),
	(5, 'huiyuandengji_types', '会员等级类型', 1, '青铜会员', NULL, '0.98', '2022-04-30 08:16:59'),
	(6, 'huiyuandengji_types', '会员等级类型', 2, '白银会员', NULL, '0.96', '2022-04-30 08:16:59'),
	(7, 'huiyuandengji_types', '会员等级类型', 3, '黄金会员', NULL, '0.94', '2022-04-30 08:16:59'),
	(8, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-30 08:16:59'),
	(9, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-30 08:16:59'),
	(10, 'caozuofangshi_types', '操作方式', 1, '操作方式1', NULL, NULL, '2022-04-30 08:16:59'),
	(11, 'caozuofangshi_types', '操作方式', 2, '操作方式2', NULL, NULL, '2022-04-30 08:16:59'),
	(12, 'jiaoyileixing_types', '交易类型', 1, '交易类型1', NULL, NULL, '2022-04-30 08:16:59'),
	(13, 'jiaoyileixing_types', '交易类型', 2, '交易类型2', NULL, NULL, '2022-04-30 08:16:59'),
	(14, 'youxiwanfa_types', '游戏玩法', 1, '游戏玩法1', NULL, NULL, '2022-04-30 08:16:59'),
	(15, 'youxiwanfa_types', '游戏玩法', 2, '游戏玩法2', NULL, NULL, '2022-04-30 08:16:59'),
	(16, 'remen_types', '是否热门', 1, '热门', NULL, NULL, '2022-04-30 08:16:59'),
	(17, 'remen_types', '是否热门', 2, '非热门', NULL, NULL, '2022-04-30 08:17:00'),
	(18, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-30 08:17:00'),
	(19, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-30 08:17:00'),
	(20, 'shangpin_types', '游戏类型', 1, '游戏类型1', NULL, NULL, '2022-04-30 08:17:00'),
	(21, 'shangpin_types', '游戏类型', 2, '游戏类型2', NULL, NULL, '2022-04-30 08:17:00'),
	(22, 'shangpin_types', '游戏类型', 3, '游戏类型3', NULL, NULL, '2022-04-30 08:17:00'),
	(23, 'shangpin_types', '游戏类型', 4, '游戏类型4', NULL, NULL, '2022-04-30 08:17:00'),
	(24, 'shangpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-30 08:17:00'),
	(25, 'shangpin_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-04-30 08:17:00'),
	(26, 'shangpin_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-04-30 08:17:00'),
	(27, 'shangpin_order_types', '订单类型', 3, '已发货', NULL, NULL, '2022-04-30 08:17:00'),
	(28, 'shangpin_order_types', '订单类型', 4, '已收货', NULL, NULL, '2022-04-30 08:17:00'),
	(29, 'shangpin_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-04-30 08:17:00'),
	(30, 'shangpin_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-04-30 08:17:00'),
	(31, 'tousu_types', '投诉类型', 1, '投诉类型1', NULL, NULL, '2022-04-30 08:17:00'),
	(32, 'tousu_types', '投诉类型', 2, '投诉类型2', NULL, NULL, '2022-04-30 08:17:00'),
	(33, 'tousu_types', '投诉类型', 3, '投诉类型3', NULL, NULL, '2022-04-30 08:17:00'),
	(34, 'chuli_types', '处理状态', 1, '待处理', NULL, NULL, '2022-04-30 08:17:00'),
	(35, 'chuli_types', '处理状态', 2, '已处理', NULL, NULL, '2022-04-30 08:17:00'),
	(36, 'tousu_types', '投诉类型', 4, '投诉类型4', NULL, '', '2022-04-30 08:43:22');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/youxijiaoyixitong/upload/gonggao1.jpg', 2, '2022-04-30 08:17:05', '公告详情1', '2022-04-30 08:17:05'),
	(2, '公告名称2', 'http://localhost:8080/youxijiaoyixitong/upload/gonggao2.jpg', 1, '2022-04-30 08:17:05', '公告详情2', '2022-04-30 08:17:05'),
	(3, '公告名称3', 'http://localhost:8080/youxijiaoyixitong/upload/gonggao3.jpg', 1, '2022-04-30 08:17:05', '公告详情3', '2022-04-30 08:17:05'),
	(4, '公告名称4', 'http://localhost:8080/youxijiaoyixitong/upload/gonggao4.jpg', 1, '2022-04-30 08:17:05', '公告详情4', '2022-04-30 08:17:05'),
	(5, '公告名称5', 'http://localhost:8080/youxijiaoyixitong/upload/gonggao5.jpg', 2, '2022-04-30 08:17:05', '公告详情5', '2022-04-30 08:17:05');

DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE IF NOT EXISTS `shangpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int DEFAULT NULL COMMENT '游戏类型 Search111',
  `youxiwanfa_types` int DEFAULT NULL COMMENT '游戏玩法 Search111',
  `jiaoyileixing_types` int DEFAULT NULL COMMENT '交易类型 Search111',
  `caozuofangshi_types` int DEFAULT NULL COMMENT '操作方式 Search111',
  `remen_types` int DEFAULT NULL COMMENT '是否热门 ',
  `shangpin_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `shangpin_price` int DEFAULT NULL COMMENT '购买获得积分 ',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_clicknum` int DEFAULT NULL COMMENT '商品热度 ',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `shangpin`;
INSERT INTO `shangpin` (`id`, `shangpin_name`, `shangpin_uuid_number`, `shangpin_photo`, `shangpin_types`, `youxiwanfa_types`, `jiaoyileixing_types`, `caozuofangshi_types`, `remen_types`, `shangpin_kucun_number`, `shangpin_price`, `shangpin_old_money`, `shangpin_new_money`, `shangpin_clicknum`, `shangpin_content`, `shangxia_types`, `shangpin_delete`, `create_time`) VALUES
	(1, '商品名称1', '165130662503039', 'http://localhost:8080/youxijiaoyixitong/upload/yonghu1.jpg', 1, 2, 1, 1, 2, 99, 47, 630.74, 266.53, 133, '商品介绍1', 1, 1, '2022-04-30 08:17:05'),
	(2, '商品名称2', '165130662503047', 'http://localhost:8080/youxijiaoyixitong/upload/yonghu2.jpg', 1, 2, 2, 2, 2, 99, 120, 821.03, 345.92, 402, '商品介绍2', 1, 1, '2022-04-30 08:17:05'),
	(3, '商品名称3', '165130662503045', 'http://localhost:8080/youxijiaoyixitong/upload/yonghu3.jpg', 3, 2, 1, 2, 1, 103, 286, 651.32, 301.19, 150, '商品介绍3', 1, 1, '2022-04-30 08:17:05'),
	(4, '商品名称4', '165130662503132', 'http://localhost:8080/youxijiaoyixitong/upload/yonghu1.jpg', 1, 1, 2, 2, 1, 103, 213, 575.19, 123.96, 399, '商品介绍4', 1, 1, '2022-04-30 08:17:05'),
	(5, '商品名称5', '165130662503169', 'http://localhost:8080/youxijiaoyixitong/upload/yonghu2.jpg', 2, 2, 1, 1, 2, 105, 24, 914.70, 353.11, 356, '商品介绍5', 1, 1, '2022-04-30 08:17:05');

DROP TABLE IF EXISTS `shangpin_collection`;
CREATE TABLE IF NOT EXISTS `shangpin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='商品收藏';

DELETE FROM `shangpin_collection`;
INSERT INTO `shangpin_collection` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(2, 2, 2, 1, '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(3, 3, 3, 1, '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(4, 4, 2, 1, '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(5, 5, 3, 1, '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(6, 2, 1, 1, '2022-04-30 08:41:05', '2022-04-30 08:41:05');

DROP TABLE IF EXISTS `shangpin_commentback`;
CREATE TABLE IF NOT EXISTS `shangpin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

DELETE FROM `shangpin_commentback`;
INSERT INTO `shangpin_commentback` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '评价内容1', '2022-04-30 08:17:05', '回复信息1', '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(2, 2, 1, '评价内容2', '2022-04-30 08:17:05', '回复信息2', '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(3, 3, 1, '评价内容3', '2022-04-30 08:17:05', '回复信息3', '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(4, 4, 3, '评价内容4', '2022-04-30 08:17:05', '回复信息4', '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(5, 5, 2, '评价内容5', '2022-04-30 08:17:05', '回复信息5', '2022-04-30 08:17:05', '2022-04-30 08:17:05'),
	(6, 4, 1, '很舒服的一次购买体验', '2022-04-30 08:45:34', NULL, NULL, '2022-04-30 08:45:34');

DROP TABLE IF EXISTS `shangpin_order`;
CREATE TABLE IF NOT EXISTS `shangpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '兑换网址',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '兑换码',
  `shangpin_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

DELETE FROM `shangpin_order`;
INSERT INTO `shangpin_order` (`id`, `shangpin_order_uuid_number`, `shangpin_id`, `yonghu_id`, `buy_number`, `shangpin_order_true_price`, `shangpin_order_courier_name`, `shangpin_order_courier_number`, `shangpin_order_types`, `shangpin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1651307629717', 5, 1, 1, 346.05, NULL, NULL, 2, 1, '2022-04-30 08:33:50', '2022-04-30 08:33:50'),
	(2, '1651308076038', 1, 1, 1, 261.20, NULL, NULL, 1, 1, '2022-04-30 08:41:16', '2022-04-30 08:41:16'),
	(3, '1651308114029', 1, 1, 1, 261.20, NULL, NULL, 1, 1, '2022-04-30 08:41:54', '2022-04-30 08:41:54'),
	(4, '1651308114029', 2, 1, 2, 678.00, '网址1111', '323513554141', 3, 1, '2022-04-30 08:41:54', '2022-04-30 08:41:54'),
	(5, '1651308114029', 5, 1, 1, 346.05, 'www.baidu.com', '245845645', 3, 1, '2022-04-30 08:41:54', '2022-04-30 08:41:54'),
	(6, '1651308114029', 4, 1, 1, 121.48, 'wangzhi 111', '5646434151', 5, 1, '2022-04-30 08:41:54', '2022-04-30 08:41:54'),
	(7, '1720575585244', 2, 1, 1, 339.00, NULL, NULL, 1, 1, '2024-07-10 01:39:45', '2024-07-10 01:39:45');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'pfsa4vpe0dt2vbcp81e8m82rg5yyg7de', '2022-04-30 08:16:02', '2024-07-10 02:38:01'),
	(2, 1, 'a1', 'yonghu', '用户', 'ns2eksmygo3w3xhynmnhvy2wqxlhz8f7', '2022-04-30 08:32:25', '2024-07-10 02:39:13');

DROP TABLE IF EXISTS `tousu`;
CREATE TABLE IF NOT EXISTS `tousu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_order_id` int DEFAULT NULL COMMENT '商品订单',
  `tousu_uuid_number` varchar(200) DEFAULT NULL COMMENT '投诉编号 Search111 ',
  `tousu_name` varchar(200) DEFAULT NULL COMMENT '投诉标题 Search111  ',
  `tousu_types` int NOT NULL COMMENT '投诉类型 Search111 ',
  `tousu_content` text COMMENT '投诉内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投诉时间 ',
  `chuli_types` int NOT NULL COMMENT '处理状态 Search111 ',
  `chuli_content` text COMMENT '处理结果 ',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='订单投诉';

DELETE FROM `tousu`;
INSERT INTO `tousu` (`id`, `yonghu_id`, `shangpin_order_id`, `tousu_uuid_number`, `tousu_name`, `tousu_types`, `tousu_content`, `insert_time`, `chuli_types`, `chuli_content`, `update_time`, `create_time`) VALUES
	(6, 1, 1, '1651307855326', '标题111', 3, '<p>大大宋大傻傻哒还书的和</p>', '2022-04-30 08:37:48', 2, '<p>已补发</p>', '2022-04-30 08:44:38', '2022-04-30 08:37:48'),
	(7, 1, 6, '1651308352016', '这个商品一直不发货', 3, '<p>大傻傻哒还书的和</p>', '2022-04-30 08:46:17', 1, '', NULL, '2022-04-30 08:46:17');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int DEFAULT NULL COMMENT '会员等级',
  `yonghu_types` int DEFAULT NULL COMMENT '用户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `yonghu_sum_jifen`, `yonghu_new_jifen`, `huiyuandengji_types`, `yonghu_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/youxijiaoyixitong/upload/yonghu1.jpg', 1, '1@qq.com', 8931.06, 1430.58, 915.45, 1, 1, '2022-04-30 08:17:05'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/youxijiaoyixitong/upload/yonghu2.jpg', 1, '2@qq.com', 469.87, 814.19, 248.46, 1, 2, '2022-04-30 08:17:05'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/youxijiaoyixitong/upload/yonghu3.jpg', 2, '3@qq.com', 248.02, 587.26, 287.92, 1, 1, '2022-04-30 08:17:05');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
