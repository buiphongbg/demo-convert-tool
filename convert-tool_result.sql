# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.25)
# Database: convert-tool
# Generation Time: 2016-05-16 10:55:16 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table result
# ------------------------------------------------------------

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_code_order` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '発注先企業コード',
  `mass_retailer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '量販店名',
  `store_code` int(11) DEFAULT NULL COMMENT '店舗コード',
  `store_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '量販店舗名',
  `slip_number` int(11) DEFAULT NULL COMMENT '伝票番号',
  `slip_number_branch_number` int(11) DEFAULT NULL COMMENT '伝票番号枝番',
  `customer_code` int(11) DEFAULT NULL COMMENT '取引先コード',
  `customer_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '取引先名',
  `classification_code` int(11) DEFAULT NULL COMMENT '分類コード',
  `slip_classification` int(11) DEFAULT NULL COMMENT '伝票区分',
  `order_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '発注日',
  `delivery_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '納品日',
  `delivery_number_of_flight` int(11) DEFAULT NULL COMMENT '納品便数',
  `correct_classification` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '訂正区分',
  `actual_delivery_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実納品日',
  `delivery_center_code` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配送センターコード',
  `distribution_center_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配送センター名',
  `department_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '売場名',
  `delivery_division` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '納品区分',
  `line_number` int(11) DEFAULT NULL COMMENT '行番号',
  `jan_code` int(11) DEFAULT NULL COMMENT 'ＪＡＮコード',
  `installation_accord` int(11) DEFAULT NULL COMMENT 'インストアコード',
  `manufacturer_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'メーカブランド名',
  `product_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名',
  `size` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'サイズ',
  `standard` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '規格',
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '色',
  `quantity` int(11) DEFAULT NULL COMMENT '入数',
  `unit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '入数単位',
  `order_type` tinyint(2) DEFAULT NULL COMMENT 'ケース発注数',
  `order_quantity` int(11) DEFAULT NULL COMMENT '発注数量',
  `cost` int(11) DEFAULT NULL COMMENT '原価8',
  `cost_amount` int(11) DEFAULT NULL COMMENT '原価金額',
  `sell_price` int(11) DEFAULT NULL COMMENT '売価',
  `sell_price_amount` int(11) DEFAULT NULL COMMENT '売価金額',
  `amendment_quantity` int(11) DEFAULT NULL COMMENT '訂正後数量',
  `witness` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '引合',
  `inquiries_classification` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '引合区分',
  `fresh_division` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生鮮区分',
  `discount_flag` tinyint(1) DEFAULT NULL COMMENT '値引フラグ',
  `tax_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '税区分',
  `kanji_studio_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '漢字メーカー名',
  `kanji_product_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '漢字商品名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
