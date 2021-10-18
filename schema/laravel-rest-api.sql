/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.33 : Database - laravel-rest-api
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel-rest-api` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `laravel-rest-api`;

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blogs` */

insert  into `blogs`(`id`,`title`,`description`,`created_at`,`updated_at`) values 
(2,'This is my first blog','This is blog description.','2021-07-05 09:50:52','2021-07-05 09:50:52'),
(3,'This is my first blog','This is blog description.','2021-07-05 09:51:07','2021-07-05 09:51:07');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2021_06_30_172728_create_rests_table',1),
(5,'2019_12_14_000001_create_personal_access_tokens_table',2),
(6,'2021_07_04_064142_create_blogs_table',3);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`abilities`,`last_used_at`,`created_at`,`updated_at`) values 
(1,'App\\Models\\User',1,'MyAuthApp','f581ff01f106f9875e19a5be49f33dbd17b232e011dd210dc3603b54fc196273','[\"*\"]',NULL,'2021-07-04 09:40:17','2021-07-04 09:40:17'),
(2,'App\\Models\\User',3,'MyAuthApp','96414ef86b773d2a8d52a8acb24a56594d429950ace3782894e2655b549f315d','[\"*\"]',NULL,'2021-07-04 09:41:00','2021-07-04 09:41:00'),
(3,'App\\Models\\User',3,'MyAuthApp','17206e11ef4062205e77c27195dfd3edf472f60120549204c327b94d221682e3','[\"*\"]',NULL,'2021-07-04 09:52:04','2021-07-04 09:52:04'),
(4,'App\\Models\\User',3,'MyAuthApp','61dab351ea599dcdaa91816a9ba6e2bf9e4b9736acc906584bfa92e4b8cc750f','[\"*\"]',NULL,'2021-07-04 09:59:25','2021-07-04 09:59:25'),
(5,'App\\Models\\User',3,'MyAuthApp','39898e09bd299124b36890c29beca8f5de2e38fbc6538ed8047d2ead3e856569','[\"*\"]','2021-07-05 09:52:30','2021-07-04 09:59:27','2021-07-05 09:52:30'),
(6,'App\\Models\\User',5,'MyAuthApp','8de5bb8c5cd7f813c463da1e9789607a8ea7f35bfe6a2e610655a75288f7978d','[\"*\"]',NULL,'2021-07-05 09:50:24','2021-07-05 09:50:24'),
(7,'App\\Models\\User',3,'MyAuthApp','16c7ea6d79e3f04e38420fe432a70a2dec8a1b39cf9cc46bd207e33b66a52dc8','[\"*\"]','2021-07-05 09:51:07','2021-07-05 09:50:37','2021-07-05 09:51:07');

/*Table structure for table `rests` */

DROP TABLE IF EXISTS `rests`;

CREATE TABLE `rests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rests` */

insert  into `rests`(`id`,`user_name`,`email`,`password`,`created_at`,`updated_at`) values 
(1,'moon','moon','moon','2021-06-30 17:41:46','2021-06-30 17:41:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Raqibul Hasan','rhmoon21@gmail.com',NULL,'$2y$10$V.u.pmgjnXdT6Cb7hyXjCeJhy/7rws4TVwh0TmN3ei.RPDzIeLRWW',NULL,'2021-07-04 09:40:17','2021-07-04 09:40:17'),
(3,'Raqibul Hasan Moon','moon21bd@gmail.com',NULL,'$2y$10$afOgascK5jvXoqy3ZwiY5u0nyj2e59CA2QRdqdhnRycOLVe2pQ5PS',NULL,'2021-07-04 09:41:00','2021-07-04 09:41:00'),
(5,'Raqibul Hasan','moon21@outlook.com',NULL,'$2y$10$VFCCaZD9njD8RTc67J3YherbK3LjoXz1wJinSIYThceMs4tJlBRxC',NULL,'2021-07-05 09:50:23','2021-07-05 09:50:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
