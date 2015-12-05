-- MySQL dump 10.13  Distrib 5.6.25, for osx10.10 (x86_64)
--
-- Host: localhost    Database: goentregas
-- ------------------------------------------------------
-- Server version	5.6.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` float(8,2) NOT NULL,
  `longitude` float(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin@courier.com','$2y$10$xdPQp6/wOjvwc.x/YsSQbu2iMmaZK/UImXWeOHJISjOjbnJBfjbG.','','2015-12-05 10:23:37','2015-12-05 10:23:37','',0.00,0.00);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash`
--

DROP TABLE IF EXISTS `cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` float(8,2) NOT NULL,
  `expiry` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash`
--

LOCK TABLES `cash` WRITE;
/*!40000 ALTER TABLE `cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_type` int(11) NOT NULL,
  `file_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dog`
--

DROP TABLE IF EXISTS `dog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `likes` text COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `dog_name_index` (`name`),
  KEY `dog_owner_id_index` (`owner_id`),
  CONSTRAINT `dog_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dog`
--

LOCK TABLES `dog` WRITE;
/*!40000 ALTER TABLE `dog` DISABLE KEYS */;
/*!40000 ALTER TABLE `dog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_keywords`
--

DROP TABLE IF EXISTS `generic_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_keywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_keywords`
--

LOCK TABLES `generic_keywords` WRITE;
/*!40000 ALTER TABLE `generic_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icons`
--

DROP TABLE IF EXISTS `icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icons`
--

LOCK TABLES `icons` WRITE;
/*!40000 ALTER TABLE `icons` DISABLE KEYS */;
/*!40000 ALTER TABLE `icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumblob,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledger`
--

DROP TABLE IF EXISTS `ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL,
  `referral_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `total_referrals` int(11) NOT NULL,
  `amount_earned` float(8,2) NOT NULL,
  `amount_spent` float(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `ledger_owner_id_foreign` (`owner_id`),
  CONSTRAINT `ledger_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger`
--

LOCK TABLES `ledger` WRITE;
/*!40000 ALTER TABLE `ledger` DISABLE KEYS */;
INSERT INTO `ledger` VALUES (1,1,'TNN0000000001',0,0.00,0.00,'2015-12-05 10:24:40','2015-12-05 10:24:40'),(2,2,'TNN0000000002',0,0.00,0.00,'2015-12-05 10:29:13','2015-12-05 10:29:13'),(3,3,'TNN0000000003',0,0.00,0.00,'2015-12-05 10:45:55','2015-12-05 10:45:55'),(4,4,'TNN0000000004',0,0.00,0.00,'2015-12-05 10:49:47','2015-12-05 10:49:47'),(5,5,'TNN0000000005',0,0.00,0.00,'2015-12-05 10:52:18','2015-12-05 10:52:18'),(6,6,'TNN0000000006',0,0.00,0.00,'2015-12-05 10:54:57','2015-12-05 10:54:57'),(7,7,'TNN0000000007',0,0.00,0.00,'2015-12-05 10:56:25','2015-12-05 10:56:25'),(8,8,'TNN0000000008',0,0.00,0.00,'2015-12-05 11:01:17','2015-12-05 11:01:17'),(9,9,'TNN0000000009',0,0.00,0.00,'2015-12-05 11:01:45','2015-12-05 11:01:45'),(10,10,'TNN0000000010',0,0.00,0.00,'2015-12-05 11:08:56','2015-12-05 11:08:56'),(11,11,'TNN0000000011',0,0.00,0.00,'2015-12-05 11:09:21','2015-12-05 11:09:21'),(12,12,'TNN0000000012',0,0.00,0.00,'2015-12-05 11:10:58','2015-12-05 11:10:58');
/*!40000 ALTER TABLE `ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_09_25_044324_create_owners_table',1),('2014_09_25_060804_create_dogs_table',1),('2014_09_30_014129_create_walker_table',1),('2014_10_07_113949_create_review_dog_table',1),('2014_10_07_114245_create_review_walker_table',1),('2014_10_07_114415_create_walk_location_table',1),('2014_10_07_114726_create_walk_table',1),('2014_10_07_115301_create_schedule_table',1),('2014_10_07_115554_create_schedule_meta_table',1),('2014_10_10_025736_create_payment_table',1),('2014_10_11_144202_add_note_to_walk_table',1),('2014_10_13_024755_add_picture_to_walker_table',1),('2014_10_14_052816_add_walker_id_to_schedules_table',1),('2014_10_14_142220_add_fields_to_owner',1),('2014_10_14_142558_add_fields_to_walker',1),('2014_10_15_114904_add_lat_long_to_walker_table',1),('2014_10_15_115120_add_endson_seeding_to_meta_table',1),('2014_10_17_131510_add_is_confirmed_to_schedules_table',1),('2014_10_17_152616_add_meta_id_in_walk',1),('2014_10_18_051813_add_owner_id_to_payment',1),('2014_10_19_070302_create_request_table',1),('2014_10_19_070310_create_request_meta_table',1),('2014_10_20_084102_add_availability_on_job',1),('2014_10_20_084141_add_lat_long',1),('2014_10_20_085531_remove_schedule_id',1),('2014_10_20_102804_add_status_flags',1),('2014_10_21_013919_replace_walk_id_to_request_id',1),('2014_10_21_021438_replace_walk_id_to_reques_id_review_walker_table',1),('2014_10_21_021816_add_is_rated_in_walk',1),('2014_10_21_023844_replace_walk_id_to_reques_id_walk_location_table',1),('2014_10_23_033257_create_settings_table',1),('2014_10_24_050705_add_payment_fileds_to_request',1),('2014_10_27_112457_change_lat_long_data_type',1),('2014_10_27_112629_change_lat_long_data_type_walk_location',1),('2014_10_27_112915_add_lat_long_data_type_walker',1),('2014_10_27_112953_add_lat_long_data_type',1),('2014_11_01_015046_create_admin_table',1),('2014_11_01_015258_add_is_approved_to_walker',1),('2014_11_09_154756_add_information_table',1),('2014_11_09_181432_add_referal_data_to_owner',1),('2014_11_09_181525_add_ledger_table',1),('2014_11_10_035803_add_walker_type_table',1),('2014_11_10_040329_add_type_to_walker',1),('2014_11_13_064410_add_icon_to_type',1),('2014_11_13_064452_add_icon_to_info',1),('2014_11_17_052356_add_customerid',1),('2014_11_17_134313_add_paymen_split',1),('2014_11_18_111038_add_distance_walk_location',1),('2014_11_19_001415_change_value_datatype',1),('2014_11_19_001841_add_value_datatype',1),('2014_11_21_115919_remove_dog_id',1),('2014_11_21_115930_remove_dog_id_review',1),('2014_11_21_130810_add_is_cancelled_request',1),('2014_11_21_131108_add_is_cancelled',1),('2014_11_25_112910_add_tip_page',1),('2014_11_26_025409_add_last_four',1),('2014_12_03_170427_add_foreign_key_dog',1),('2014_12_03_171436_add_foreign_key_ledger',1),('2014_12_03_171732_add_foreign_key_payment',1),('2014_12_03_172008_add_foreign_key_request',1),('2014_12_03_172703_add_foreign_key_request_meta',1),('2014_12_03_172949_add_foreign_key_review_dog',1),('2014_12_03_173126_add_foreign_key_review_dog_2',1),('2014_12_03_173221_add_foreign_key_review_dog_3',1),('2014_12_03_174014_add_foreign_key_review_walker',1),('2014_12_03_174427_add_foreign_key_walk_location',1),('2014_12_08_121851_add_documents_table',1),('2014_12_08_130512_add_document_type_table',1),('2014_12_14_114805_add_type_to_request',1),('2014_12_17_132347_update_walker_table',1),('2014_12_26_111728_create_walker_services_table',1),('2014_12_26_115353_create_request_services_table',1),('2014_12_26_115511_remove_fields_from_walker_type_table',1),('2014_12_27_023550_add_fields_to_walker_services_table',1),('2014_12_27_045844_add_payment_fields_to_request_services_table',1),('2014_12_27_050208_delete_payment_fields_from_request_table',1),('2014_12_27_142242_delete_type_and_add_refund_request_table',1),('2014_12_27_150623_create_theme_table',1),('2014_12_29_124126_update_theme_table',1),('2014_12_31_172311_add_card_token_to_payment',1),('2015_01_02_125640_add_card_id_to_walker',1),('2015_01_10_110711_create_installation_settings_table',1),('2015_01_22_113756_add_transfer_to_request',1),('2015_02_02_114411_add_is_default_to_payment',1),('2015_02_09_192206_add__debt_to_owner',1),('2015_02_10_100336_create_provider_availability',1),('2015_02_18_095619_add_later_in_request',1),('2015_02_19_121041_index_owener_table',1),('2015_02_19_123457_index_dog_table',1),('2015_02_19_124305_index_walker_table',1),('2015_02_19_124904_index_request_table',1),('2015_02_19_134856_index_requestServices_table',1),('2015_02_19_135324_index_walkerServices_table',1),('2015_02_26_104212_addDestinationToRequests',1),('2015_02_26_110951_add_cod_to_request_table',1),('2015_03_02_123731_alter_fields_in_cod_to_payment_mode_in_request',1),('2015_03_03_071753_add_payment_id_to_request_table',1),('2015_03_12_060741_add_new_field_in_walker',1),('2015_03_16_101246_alter_datatype_for_payment_id',1),('2015_03_19_072803_add_promo_code_to_request_table',1),('2015_03_19_074736_add_promo_codes_table',1),('2015_03_20_065250_add_walker_table_default_value',1),('2015_03_20_065758_alter_walker_table_banking_details',1),('2015_03_20_092439_add_field_activation_provider',1),('2015_03_23_120633_add_timezone_to_user_table',1),('2015_03_23_121121_add_timezone_to_provider_table',1),('2015_03_27_140947_add_generic_keywords_table',1),('2015_03_31_194143_add_delete_to_walker_table',1),('2015_03_31_195348_add_soft_delete_to_owner_table',1),('2015_04_01_093144_add_alter_datatype_information_content',1),('2015_04_02_123726_create_icons_table',1),('2015_04_06_175511_create_certificates_table',1),('2015_04_06_183013_add_user_to_certificates_table',1),('2015_04_07_105412_add_file_type_to_certifcates',1),('2015_04_12_170912_add_default_to_certificates',1),('2015_04_14_192343_alter_security_key_datatype_in_request_table',1),('2015_04_15_110351_create_promo_history_table',1),('2015_04_29_103838_makeNewCashtable',1),('2015_05_05_124752_addLocationToAdmin',1),('2015_06_11_072126_create_users_table',1),('2015_06_17_112953_add_oldlat_oldlong_bearing_data_type',1),('2015_06_17_192206_add_rate_ratecount_to_owner',1),('2015_06_17_192207_add_rate_ratecount_to_provider_table',1),('2015_06_22_052212_user_promo_used',1),('2015_06_22_060917_add_foreign_key_user_promo_used',1),('2015_07_04_055500_add_fields_to_type',1),('2015_07_04_062035_add_base_distence_to_type',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dog_id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_expiry` int(11) NOT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `referred_by` int(11) NOT NULL,
  `debt` float(8,2) NOT NULL DEFAULT '0.00',
  `timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UTC',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `rate` float(5,2) NOT NULL DEFAULT '0.00',
  `rate_count` bigint(20) NOT NULL DEFAULT '0',
  `promo_count` bigint(20) NOT NULL DEFAULT '0',
  `is_referee` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'Felipe','Marques','+55081996034183','lipemarques8@gmail.com','','','','','','',0,'$2y$10$3K6O54/Lwa28R1vEgu98E.cvZGuLXWH8CQy0Gnalxrc1bAdhQOZYO','2y10jRt7s4o0BYJCoLEOV88ce2QFhb2yMbMRv9e4mQjgyaJNKZLcaW',1452900280,'','android','manual','','2015-12-05 10:24:40','2015-12-05 10:24:40',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(2,'Arthur','Michel','+55081996034183','front-end@conteud.com','','','','','','',0,'$2y$10$L2Ry2SxmyRltyVIulEpn.ezLkYy72GjOZGWEn/Bk0OcuyeYNRb8YS','2y109Q7fvQKWaHyGArGf2U5SuqPYozkxvTW5gdKn1KWYMlFiQNzApu',1452900553,'','android','manual','','2015-12-05 10:29:13','2015-12-05 10:29:13',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(3,'Hiram','Menezes','+55081996034183','matheusmarcos112@gmail.com','','','','','','',0,'$2y$10$VnCkLlRUVt5c/l4siHJ6V.u/YcUIBQc0SqOCTFWe0IChD/qcwYpra','2y10WXSEpLfIUVaebOd9edE1ueQdH4VuTM23TcjdyE0rUoTnuuui8EeO',1452901555,'','android','manual','','2015-12-05 10:45:55','2015-12-05 10:45:55',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(4,'Arthur','Michel','+55081996034183','asdas@gmail.com','','','','','','',0,'$2y$10$NlgnAO84agLsTyhtkJO5AeHy/0mQXPla7dVanHSKjw/Qo0Qr/VZO6','2y10gFnt8HkR121xqHvW7maI9Kl0brheOKefdAA1GlQ6dbSTolSjQS',1452901787,'','android','manual','','2015-12-05 10:49:47','2015-12-05 10:49:47',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(5,'Arthur','Michel','+55081996034183','doa@gmail.com','','','','','','',0,'$2y$10$zDVJaWfuGvniknPFPW7VyuSJQHy8yZUbjeEAhYoZ63qXumbkcekP2','2y10UA9pu3zS3Kt1h7zZw64H8zuywDTzfAkQryLP9UWPE2Xg9m4KvyL',1452901938,'','android','manual','','2015-12-05 10:52:18','2015-12-05 10:52:18',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(6,'Arthur','Michel','+55081996034183','dasss@gmail.com','','','','','','',0,'$2y$10$Vqz0OdYKCNF9fk6mE/TMcOdP73Sugx1atYuUPfH0C9X2A7wKTBSAK','2y10V9KMAuT3aarqH1svDsOvuOMdWKw22s7CKSgUGLc3oNndU1V98hGSO',1452902097,'','android','manual','','2015-12-05 10:54:57','2015-12-05 10:54:57',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(7,'Arthur','Michel','+55081996034183','asd@gmail.com','','','','','','',0,'$2y$10$SOK/pcVYwu/0kQILcYoWC.h4DvM5e0scYJVCCJWLg9n.Edso17JGa','2y10iQkDF2jxrkjIPlibqrdrenJ01aOhdKl7CGgKkTKjqLRb1FPAOc7a',1452902185,'','android','manual','','2015-12-05 10:56:25','2015-12-05 10:56:25',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(8,'Arthur','Michel','+55081996034183','asddd@gmail.com','','','','','','',0,'$2y$10$LGJE5gSf.yjk0YiocMdjQe5M/KE8354nz7GgfjRp1H/ppH/Ab3FNK','2y10QDELNuK4QJtUWEw2hEIuqA5OKLSPmh72wBbCPXSbbxd0jfllSLC',1452902477,'','android','manual','','2015-12-05 11:01:17','2015-12-05 11:01:17',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(9,'Arthur','Michel','+55081996034183','dvcvcdd@gmail.com','','','','','','',0,'$2y$10$.RVvluzrwLu3gD8gTpAclOgdU8zG8M5t5aqQc0U/A5gMFrSNinQfi','2y10gCNt0zdSthSsKFqZDVysefr3HYz22tHjswFHLR6AUsLwsA4Woxy',1452902505,'','android','manual','','2015-12-05 11:01:45','2015-12-05 11:01:45',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(10,'Arthur','Michel','+55081996034183','123@gmail.com','','','','','','',0,'$2y$10$z8uEpRa3I.ALMi7rJoefGeSuDZKy.wR615Hm5qWnAauY1XDLUqVaO','2y10aJNELAO7wtTGuxf2JfdjesarMFFrgivzKUY74seDKcd4zEZMgii',1452902936,'','android','manual','','2015-12-05 11:08:56','2015-12-05 11:08:56',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(11,'Arthur','Michel','+55081996034183','qwedoa@gmail.com','','','','','','',0,'$2y$10$Mjl5GluHxRYl9kfhx6INm.MalwKHBbPxpG4gnADzAul6EfK8QtoSO','2y10X3krE9X6VMsCUL4JEtdZvO0T2UP6LI1aqjniNZWjUvePpvTgw8FE2',1452902961,'','android','manual','','2015-12-05 11:09:21','2015-12-05 11:09:21',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0),(12,'Arthur','Michel','+55081996034183','asfront-end@conteud.com','','','','','','',0,'$2y$10$vUXH4l3yr/fgM9GSWttCluRU/em9Lhw.iYtaR3UMiizPcLQtigS0q','2y10D62TamPHUE51JxKdvGTOUgEECwBButAYWOe0RUrvCPIeKbuhIfO',1452903058,'','android','manual','','2015-12-05 11:10:58','2015-12-05 11:10:58',0.00000000,0.00000000,0,0.00,'UTC',NULL,0.00,0,0,0);
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner_id` int(10) unsigned NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `payment_owner_id_foreign` (`owner_id`),
  CONSTRAINT `payment_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo_codes`
--

DROP TABLE IF EXISTS `promo_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `value` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uses` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `expiry` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_codes`
--

LOCK TABLES `promo_codes` WRITE;
/*!40000 ALTER TABLE `promo_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `promo_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo_history`
--

DROP TABLE IF EXISTS `promo_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount_earned` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_history`
--

LOCK TABLES `promo_history` WRITE;
/*!40000 ALTER TABLE `promo_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `promo_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider_availability`
--

DROP TABLE IF EXISTS `provider_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider_availability` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_availability`
--

LOCK TABLES `provider_availability` WRITE;
/*!40000 ALTER TABLE `provider_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `provider_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `confirmed_walker` int(11) NOT NULL,
  `current_walker` int(11) NOT NULL,
  `request_start_time` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_walker_started` int(11) NOT NULL,
  `is_walker_arrived` int(11) NOT NULL,
  `is_started` int(11) NOT NULL,
  `is_completed` int(11) NOT NULL,
  `is_dog_rated` int(11) NOT NULL,
  `is_walker_rated` int(11) NOT NULL,
  `distance` float(8,2) NOT NULL,
  `time` float(8,2) NOT NULL,
  `total` float(8,2) NOT NULL,
  `is_paid` int(11) NOT NULL,
  `card_payment` float(8,2) NOT NULL,
  `ledger_payment` float(8,2) NOT NULL,
  `is_cancelled` int(11) NOT NULL,
  `refund` float(8,2) NOT NULL DEFAULT '0.00',
  `transfer_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `later` tinyint(1) NOT NULL DEFAULT '0',
  `D_latitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `D_longitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `security_key` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` int(11) NOT NULL DEFAULT '0',
  `payment_id` text COLLATE utf8_unicode_ci,
  `promo_payment` float(8,2) NOT NULL DEFAULT '0.00',
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `request_owner_id_foreign` (`owner_id`),
  KEY `request_is_walker_started_index` (`is_walker_started`),
  KEY `request_is_walker_arrived_index` (`is_walker_arrived`),
  KEY `request_is_started_index` (`is_started`),
  KEY `request_is_completed_index` (`is_completed`),
  CONSTRAINT `request_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_meta`
--

DROP TABLE IF EXISTS `request_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(10) unsigned NOT NULL,
  `walker_id` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_cancelled` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `request_meta_request_id_foreign` (`request_id`),
  KEY `request_meta_walker_id_foreign` (`walker_id`),
  CONSTRAINT `request_meta_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_meta_walker_id_foreign` FOREIGN KEY (`walker_id`) REFERENCES `walker` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_meta`
--

LOCK TABLES `request_meta` WRITE;
/*!40000 ALTER TABLE `request_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_services`
--

DROP TABLE IF EXISTS `request_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `base_price` float(8,2) NOT NULL DEFAULT '0.00',
  `distance_cost` float(8,2) NOT NULL DEFAULT '0.00',
  `time_cost` float(8,2) NOT NULL DEFAULT '0.00',
  `total` float(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `request_services_request_id_index` (`request_id`),
  KEY `request_services_type_index` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_services`
--

LOCK TABLES `request_services` WRITE;
/*!40000 ALTER TABLE `request_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_dog`
--

DROP TABLE IF EXISTS `review_dog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_dog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `walker_id` int(10) unsigned NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_id` int(10) unsigned NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `review_dog_owner_id_foreign` (`owner_id`),
  KEY `review_dog_walker_id_foreign` (`walker_id`),
  KEY `review_dog_request_id_foreign` (`request_id`),
  CONSTRAINT `review_dog_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE,
  CONSTRAINT `review_dog_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  CONSTRAINT `review_dog_walker_id_foreign` FOREIGN KEY (`walker_id`) REFERENCES `walker` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_dog`
--

LOCK TABLES `review_dog` WRITE;
/*!40000 ALTER TABLE `review_dog` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_dog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_walker`
--

DROP TABLE IF EXISTS `review_walker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_walker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `walker_id` int(10) unsigned NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_id` int(10) unsigned NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `review_walker_owner_id_foreign` (`owner_id`),
  KEY `review_walker_walker_id_foreign` (`walker_id`),
  KEY `review_walker_request_id_foreign` (`request_id`),
  CONSTRAINT `review_walker_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE,
  CONSTRAINT `review_walker_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  CONSTRAINT `review_walker_walker_id_foreign` FOREIGN KEY (`walker_id`) REFERENCES `walker` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_walker`
--

LOCK TABLES `review_walker` WRITE;
/*!40000 ALTER TABLE `review_walker` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_walker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_meta`
--

DROP TABLE IF EXISTS `schedule_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `ends_on` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `started_on` float(8,2) NOT NULL,
  `seeding_status` float(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_meta`
--

LOCK TABLES `schedule_meta` WRITE;
/*!40000 ALTER TABLE `schedule_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dog_id` int(11) NOT NULL,
  `lockbox_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_recurring` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `walker_id` int(11) NOT NULL,
  `is_confirmed` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tool_tip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `primary_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hover_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_promo_used`
--

DROP TABLE IF EXISTS `user_promo_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_promo_used` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_promo_used_code_id_foreign` (`code_id`),
  KEY `user_promo_used_user_id_foreign` (`user_id`),
  CONSTRAINT `user_promo_used_code_id_foreign` FOREIGN KEY (`code_id`) REFERENCES `promo_codes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_promo_used_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_promo_used`
--

LOCK TABLES `user_promo_used` WRITE;
/*!40000 ALTER TABLE `user_promo_used` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_promo_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walk`
--

DROP TABLE IF EXISTS `walk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) NOT NULL,
  `dog_id` int(11) NOT NULL,
  `walker_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `is_walker_rated` int(11) NOT NULL,
  `is_dog_rated` int(11) NOT NULL,
  `is_confirmed` int(11) NOT NULL,
  `is_started` int(11) NOT NULL,
  `is_completed` int(11) NOT NULL,
  `is_cancelled` int(11) NOT NULL,
  `distance` float(8,2) NOT NULL,
  `time` int(11) NOT NULL,
  `is_poo` int(11) NOT NULL,
  `is_pee` int(11) NOT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walk`
--

LOCK TABLES `walk` WRITE;
/*!40000 ALTER TABLE `walk` DISABLE KEYS */;
/*!40000 ALTER TABLE `walk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walk_location`
--

DROP TABLE IF EXISTS `walk_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walk_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_id` int(10) unsigned NOT NULL,
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `distance` float(8,3) NOT NULL,
  `bearing` double(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`id`),
  KEY `walk_location_request_id_foreign` (`request_id`),
  CONSTRAINT `walk_location_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walk_location`
--

LOCK TABLES `walk_location` WRITE;
/*!40000 ALTER TABLE `walk_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `walk_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walker`
--

DROP TABLE IF EXISTS `walker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_activation` int(11) NOT NULL,
  `token_expiry` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` int(11) NOT NULL,
  `is_available` int(11) DEFAULT '1',
  `latitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `longitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `is_approved` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` text COLLATE utf8_unicode_ci,
  `last_4` text COLLATE utf8_unicode_ci,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UTC',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `old_latitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `old_longitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `bearing` double(15,8) NOT NULL DEFAULT '0.00000000',
  `car_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `car_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `rate` float(5,2) NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `walker_email_index` (`email`),
  KEY `walker_first_name_index` (`first_name`),
  KEY `walker_last_name_index` (`last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walker`
--

LOCK TABLES `walker` WRITE;
/*!40000 ALTER TABLE `walker` DISABLE KEYS */;
/*!40000 ALTER TABLE `walker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walker_documents`
--

DROP TABLE IF EXISTS `walker_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walker_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `walker_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walker_documents`
--

LOCK TABLES `walker_documents` WRITE;
/*!40000 ALTER TABLE `walker_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `walker_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walker_services`
--

DROP TABLE IF EXISTS `walker_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walker_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_per_unit_distance` float(8,2) NOT NULL DEFAULT '0.00',
  `price_per_unit_time` float(8,2) NOT NULL DEFAULT '0.00',
  `base_price` float(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `walker_services_provider_id_index` (`provider_id`),
  KEY `walker_services_type_index` (`type`),
  KEY `walker_services_price_per_unit_distance_index` (`price_per_unit_distance`),
  KEY `walker_services_price_per_unit_time_index` (`price_per_unit_time`),
  KEY `walker_services_base_price_index` (`base_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walker_services`
--

LOCK TABLES `walker_services` WRITE;
/*!40000 ALTER TABLE `walker_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `walker_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walker_type`
--

DROP TABLE IF EXISTS `walker_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walker_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `max_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_default` int(11) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price_per_unit_distance` double(12,2) NOT NULL DEFAULT '0.00',
  `price_per_unit_time` double(12,2) NOT NULL DEFAULT '0.00',
  `base_price` double(15,2) NOT NULL DEFAULT '0.00',
  `base_distance` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walker_type`
--

LOCK TABLES `walker_type` WRITE;
/*!40000 ALTER TABLE `walker_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `walker_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-05  5:18:57
