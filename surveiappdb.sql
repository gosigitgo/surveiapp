-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table surveiappdb.artikel
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE IF NOT EXISTS `artikel` (
  `id_artikel` int unsigned NOT NULL AUTO_INCREMENT,
  `judul_artikel` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `sub_judul` text COLLATE utf8mb4_general_ci NOT NULL,
  `konten` text COLLATE utf8mb4_general_ci NOT NULL,
  `excerp` text COLLATE utf8mb4_general_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `status` enum('draft','published') COLLATE utf8mb4_general_ci NOT NULL,
  `template_file` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `search_engine_index` enum('Y','N') COLLATE utf8mb4_general_ci NOT NULL,
  `id_file_picker` int unsigned DEFAULT NULL,
  `tgl_terbit` datetime DEFAULT NULL,
  `tgl_create` datetime DEFAULT NULL,
  `id_user_create` int unsigned NOT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `id_user_update` int unsigned NOT NULL,
  PRIMARY KEY (`id_artikel`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.artikel: ~0 rows (approximately)
REPLACE INTO `artikel` (`id_artikel`, `judul_artikel`, `sub_judul`, `konten`, `excerp`, `meta_description`, `slug`, `status`, `template_file`, `search_engine_index`, `id_file_picker`, `tgl_terbit`, `tgl_create`, `id_user_create`, `tgl_update`, `id_user_update`) VALUES
	(1, 'Tentang Survei Pulse Check', 'Mengukur tingkat kesehatan organisasi (OHI) serta evaluasi berkala pelaksanaan Transformasi Internal Kemenkes', '<p>Halo Sobat Sehat,&nbsp;</p>\r\n<p>Saat ini Kementerian Kesehatan sedang melaksanakan Transformasi Kesehatan yang terdiri dari 6 (enam) pilar, yaitu:</p>\r\n<p>(1) Transformasi layanan primer<br />(2) Transformasi layanan rujukan<br />(3) Transformasi sistem ketahanan kesehatan<br />(4) Transformasi sistem pembiayaan kesehatan<br />(5) Transformasi SDM kesehatan<br />(6) Transformasi teknologi kesehatan</p>\r\n<p>Agar pelaksanaan Transformasi Kesehatan dapat berjalan dengan baik, maka diperlukan organisasi yang sehat, sehingga dilakukan inisiatif pelaksanaan Transformasi Internal yang menekankan penguatan terhadap 5 (lima) aspek yaitu:</p>\r\n<p>(1) penguatan perencanaan dan penganggaran<br />(2) penguatan organisasi<br />(3) penguatan sumber daya manusia<br />(4) penguatan teknologi dan digital<br />(5) penguatan kebijakan</p>\r\n<p>Pelaksanaan survei pulse check dilakukan dalam rangka mengukur tingkat kesehatan organisasi (OHI), melakukan evaluasi secara berkala terhadap pelaksanaan transformasi internal sehingga dapat menjadi bahan masukan dan perbaikan pelaksanaan transformasi internal serta diharapkan dapat membangun komitmen bersama seluruh insan Kemenkes dalam melaksanakan transformasi internal demi mewujudkan transformasi kesehatan.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Salam Sehat,&nbsp;<br />Biro Organisasi dan SDM</p>', 'Survei Pulse Check merupakan kegiatan evaluasi berkala pelaksanaan Transformasi Internal Kemenkes', '[excerp]', 'about', 'published', 'default.php', 'Y', 1, '2024-09-11 13:26:59', '0000-00-00 00:00:00', 8, '2024-09-07 22:04:58', 1);

-- Dumping structure for table surveiappdb.artikel_author
DROP TABLE IF EXISTS `artikel_author`;
CREATE TABLE IF NOT EXISTS `artikel_author` (
  `id_artikel` int unsigned NOT NULL,
  `id_author` smallint unsigned NOT NULL,
  PRIMARY KEY (`id_artikel`,`id_author`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.artikel_author: ~4 rows (approximately)
REPLACE INTO `artikel_author` (`id_artikel`, `id_author`) VALUES
	(1, 1),
	(2, 1),
	(4, 1),
	(4, 3);

-- Dumping structure for table surveiappdb.artikel_kategori
DROP TABLE IF EXISTS `artikel_kategori`;
CREATE TABLE IF NOT EXISTS `artikel_kategori` (
  `id_artikel` int unsigned NOT NULL,
  `id_kategori` smallint unsigned NOT NULL,
  PRIMARY KEY (`id_artikel`,`id_kategori`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.artikel_kategori: ~3 rows (approximately)
REPLACE INTO `artikel_kategori` (`id_artikel`, `id_kategori`) VALUES
	(1, 1),
	(2, 3),
	(4, 3);

-- Dumping structure for table surveiappdb.author
DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id_author` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nama_author` varchar(50) NOT NULL,
  `id_user_author` int unsigned NOT NULL,
  PRIMARY KEY (`id_author`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.author: ~1 rows (approximately)
REPLACE INTO `author` (`id_author`, `nama_author`, `id_user_author`) VALUES
	(1, 'Sigit Wibowo', 8);

-- Dumping structure for table surveiappdb.file_picker
DROP TABLE IF EXISTS `file_picker`;
CREATE TABLE IF NOT EXISTS `file_picker` (
  `id_file_picker` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `caption` text COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `alt_text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_file` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `size` int unsigned NOT NULL,
  `tgl_upload` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user_upload` int unsigned NOT NULL,
  `meta_file` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_file_picker`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.file_picker: ~0 rows (approximately)
REPLACE INTO `file_picker` (`id_file_picker`, `title`, `caption`, `description`, `alt_text`, `nama_file`, `mime_type`, `size`, `tgl_upload`, `id_user_upload`, `meta_file`) VALUES
	(1, '', '', '', NULL, 'kantor.jpg', 'image/jpeg', 122225, '2023-06-17 07:43:48', 1, '{"default":{"width":1280,"height":853,"size":122225},"thumbnail":{"small":{"filename":"kantor_small.jpg","width":250,"height":167,"size":24689},"medium":{"filename":"kantor_medium.jpg","width":450,"height":300,"size":63321}}}');

-- Dumping structure for table surveiappdb.kategori
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` smallint unsigned NOT NULL AUTO_INCREMENT,
  `judul_kategori` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.kategori: ~3 rows (approximately)
REPLACE INTO `kategori` (`id_kategori`, `judul_kategori`) VALUES
	(1, 'Transformasi Internal'),
	(2, 'Kepegawaian');

-- Dumping structure for table surveiappdb.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) NOT NULL,
  `id_menu_kategori` int unsigned DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `id_module` smallint unsigned DEFAULT NULL,
  `id_parent` smallint unsigned DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `urut` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_menu`) USING BTREE,
  KEY `menu_module` (`id_module`) USING BTREE,
  KEY `menu_menu` (`id_parent`),
  CONSTRAINT `menu_menu` FOREIGN KEY (`id_parent`) REFERENCES `menu` (`id_menu`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `menu_module` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Tabel menu aplikasi';

-- Dumping data for table surveiappdb.menu: ~21 rows (approximately)
REPLACE INTO `menu` (`id_menu`, `nama_menu`, `id_menu_kategori`, `class`, `url`, `id_module`, `id_parent`, `aktif`, `new`, `urut`) VALUES
	(1, 'User', 5, 'fas fa-users', 'builtin/user', 5, NULL, 1, 0, 5),
	(2, 'Assign Role', 1, 'fas fa-link', '#', NULL, 46, 1, 0, 5),
	(3, 'User Role', 1, 'fas fa-user-tag', 'builtin/user-role', 7, 2, 1, 0, 2),
	(4, 'Module', 1, 'fas fa-network-wired', 'builtin/module', 2, 46, 1, 0, 2),
	(6, 'Menu', 1, 'fas fa-clone', 'builtin/menu', 1, 46, 1, 0, 1),
	(7, 'Menu Role', 1, 'fas fa-folder-minus', 'builtin/menu-role', 8, 2, 1, 0, 3),
	(8, 'Setting', 1, 'fas fa-cogs', '#', NULL, 46, 1, 0, 6),
	(9, 'Role', 1, 'fas fa-briefcase', 'builtin/role', 4, 46, 1, 0, 4),
	(10, 'Setting Aplikasi', 1, 'fas fa-cog', 'builtin/setting-app', 16, 8, 1, 0, 1),
	(11, 'Setting Layout', 1, 'fas fa-brush', 'builtin/setting-layout', 15, 8, 1, 0, 2),
	(23, 'Setting Registrasi', 1, 'fas fa-user-plus', 'builtin/setting-registrasi', 34, 8, 1, 0, 3),
	(38, 'Module Permission', 1, 'fas fa-shield-alt', 'builtin/permission', 51, 46, 1, 0, 3),
	(39, 'Role Permission', 1, 'far fa-user', 'builtin/role-permission', 52, 2, 1, 0, 1),
	(46, 'Aplikasi', 1, 'far fa-sun', '#', NULL, NULL, 1, 0, 1),
	(47, 'Menu Frontend', 2, 'fas fa-tv', 'menu-frontend', 62, NULL, 1, 0, 1),
	(48, 'Setting Survey', 5, 'fas fa-gear', 'setting-survey', 63, NULL, 1, 0, 4),
	(49, 'Survei', 5, 'fas fa-chart-area', 'survey', 64, NULL, 1, 0, 1),
	(50, 'Pertanyaan', 5, 'far fa-circle-question', 'pertanyaan', 65, NULL, 1, 0, 2),
	(51, 'Respon', 5, 'fas fa-user-group', 'respon', 66, NULL, 1, 0, 3),
	(52, 'Halaman Depan', 2, 'fas fa-square-poll-vertical', '{{BASE_URL_PARENT}}', NULL, NULL, 1, 0, 2),
	(53, 'Artikel', 2, 'far fa-newspaper', 'artikel', 41, NULL, 1, 0, 0);

-- Dumping structure for table surveiappdb.menu_frontend
DROP TABLE IF EXISTS `menu_frontend`;
CREATE TABLE IF NOT EXISTS `menu_frontend` (
  `id_menu` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) NOT NULL,
  `id_menu_kategori` smallint unsigned DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `id_parent` smallint unsigned DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT NULL,
  `urut` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE,
  KEY `menu_frontend_menu_frontend` (`id_parent`) USING BTREE,
  KEY `menu_frontend_menu_frontend_group` (`id_menu_kategori`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Tabel menu aplikasi';

-- Dumping data for table surveiappdb.menu_frontend: ~4 rows (approximately)
REPLACE INTO `menu_frontend` (`id_menu`, `nama_menu`, `id_menu_kategori`, `class`, `url`, `id_parent`, `aktif`, `urut`) VALUES
	(3, 'Kembali Ke Atas', 2, 'fas fa-angle-up', '{{BASE_URL}}', NULL, 'Y', 1),
	(5, 'Home', 1, 'fas fa-home', '{{BASE_URL}}', NULL, 'Y', 1),
	(9, 'Tentang Survei', 1, 'fas fa-circle-info', '{{BASE_URL}}about', NULL, 'Y', 3);

-- Dumping structure for table surveiappdb.menu_frontend_kategori
DROP TABLE IF EXISTS `menu_frontend_kategori`;
CREATE TABLE IF NOT EXISTS `menu_frontend_kategori` (
  `id_menu_kategori` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_menu_kategori`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.menu_frontend_kategori: ~2 rows (approximately)
REPLACE INTO `menu_frontend_kategori` (`id_menu_kategori`, `nama_kategori`, `deskripsi`, `aktif`) VALUES
	(1, 'Header', 'Menu Header', 'Y'),
	(2, 'Footer', 'Menu Footer', 'Y');

-- Dumping structure for table surveiappdb.menu_kategori
DROP TABLE IF EXISTS `menu_kategori`;
CREATE TABLE IF NOT EXISTS `menu_kategori` (
  `id_menu_kategori` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `show_title` enum('Y','N') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `urut` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_menu_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table surveiappdb.menu_kategori: ~3 rows (approximately)
REPLACE INTO `menu_kategori` (`id_menu_kategori`, `nama_kategori`, `deskripsi`, `aktif`, `show_title`, `urut`) VALUES
	(1, 'Master Aplikasi', 'Menu pengaturan aplikasi', 'Y', 'Y', 1),
	(2, 'Frontend', 'Halaman Depan Survey', 'Y', 'Y', 3),
	(5, 'Aplikasi Survei', 'Menu Aplikasi Survei', 'Y', 'Y', 2);

-- Dumping structure for table surveiappdb.menu_role
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE IF NOT EXISTS `menu_role` (
  `id_menu` smallint unsigned NOT NULL,
  `id_role` smallint unsigned NOT NULL,
  KEY `module_role_module` (`id_menu`),
  KEY `module_role_role` (`id_role`),
  CONSTRAINT `menu_role_menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `menu_role_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Tabel hak akses dari menu aplikasi';

-- Dumping data for table surveiappdb.menu_role: ~27 rows (approximately)
REPLACE INTO `menu_role` (`id_menu`, `id_role`) VALUES
	(2, 1),
	(3, 1),
	(4, 1),
	(6, 1),
	(8, 1),
	(7, 1),
	(8, 2),
	(9, 1),
	(11, 1),
	(11, 2),
	(23, 1),
	(39, 1),
	(38, 1),
	(48, 1),
	(50, 1),
	(51, 1),
	(51, 2),
	(47, 1),
	(52, 1),
	(52, 2),
	(1, 1),
	(1, 2),
	(53, 1),
	(46, 1),
	(46, 2),
	(10, 1),
	(49, 1);

-- Dumping structure for table surveiappdb.module
DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id_module` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nama_module` varchar(50) DEFAULT NULL,
  `judul_module` varchar(50) DEFAULT NULL,
  `id_module_status` tinyint(1) DEFAULT NULL,
  `login` enum('Y','N','R') NOT NULL DEFAULT 'Y',
  `deskripsi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_module`),
  UNIQUE KEY `module_nama` (`nama_module`),
  KEY `module_module_status` (`id_module_status`),
  CONSTRAINT `module_module_status` FOREIGN KEY (`id_module_status`) REFERENCES `module_status` (`id_module_status`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Tabel modul aplikasi';

-- Dumping data for table surveiappdb.module: ~24 rows (approximately)
REPLACE INTO `module` (`id_module`, `nama_module`, `judul_module`, `id_module_status`, `login`, `deskripsi`) VALUES
	(1, 'builtin/menu', 'Menu Manager', 1, 'Y', 'Administrasi Menu'),
	(2, 'builtin/module', 'Module Manager', 1, 'Y', 'Pengaturan Module'),
	(3, 'builtin/module-role', 'Assign Role ke Module', 1, 'Y', 'Assign Role ke Module'),
	(4, 'builtin/role', 'Role Manager', 1, 'Y', 'Pengaturan Role'),
	(5, 'builtin/user', 'User Manager', 1, 'Y', 'Pengaturan user'),
	(6, 'login', 'Login', 1, 'R', 'Login ke akun Anda'),
	(7, 'builtin/user-role', 'Assign Role ke User', 1, 'Y', 'Assign role ke user'),
	(8, 'builtin/menu-role', 'Menu - Role', 1, 'Y', 'Assign role ke menu'),
	(15, 'builtin/setting-layout', 'Setting Layout', 1, 'Y', 'Setting Layout Aplikasi'),
	(16, 'builtin/setting-app', 'Setting App', 1, 'Y', 'Pengaturan aplikasi seperti nama aplikasi, logo, d'),
	(25, 'home', 'Home', 1, 'Y', 'Home'),
	(33, 'register', 'Register Akun', 1, 'R', 'Register Akun'),
	(34, 'builtin/setting-registrasi', 'Setting Registrasi Akun', 1, 'Y', 'Setting Registrasi Akun'),
	(35, 'recovery', 'Reset Password', 1, 'R', 'Reset Password'),
	(39, 'filepicker', 'File Picker', 1, 'Y', 'File Picker Manager'),
	(41, 'artikel', 'Artikel', 1, 'Y', 'Artikel'),
	(44, 'wilayah', 'Wilayah', 1, 'Y', 'Wilayah'),
	(51, 'builtin/permission', 'Permission', 1, 'Y', 'Permission'),
	(52, 'builtin/role-permission', 'Role Permission', 1, 'Y', 'Role Permission'),
	(62, 'menu-frontend', 'Menu Frontend', 1, 'Y', 'Menu Frontend'),
	(63, 'setting-survey', 'Setting Survey', 1, 'Y', 'Setting Survey'),
	(64, 'survey', 'Survey', 1, 'Y', 'Survey'),
	(65, 'pertanyaan', 'Pertanyaan', 1, 'Y', 'Pertanyaan Survey'),
	(66, 'respon', 'Respon', 1, 'Y', 'Respon Survey');

-- Dumping structure for table surveiappdb.module_permission
DROP TABLE IF EXISTS `module_permission`;
CREATE TABLE IF NOT EXISTS `module_permission` (
  `id_module_permission` smallint unsigned NOT NULL AUTO_INCREMENT,
  `id_module` smallint unsigned NOT NULL DEFAULT '0',
  `nama_permission` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `judul_permission` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_module_permission`) USING BTREE,
  UNIQUE KEY `id_module_nama_permission` (`id_module`,`nama_permission`) USING BTREE,
  CONSTRAINT `module_permission_module` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.module_permission: ~105 rows (approximately)
REPLACE INTO `module_permission` (`id_module_permission`, `id_module`, `nama_permission`, `judul_permission`, `keterangan`) VALUES
	(1, 1, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(2, 2, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(3, 3, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(4, 4, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(5, 5, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(6, 6, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(7, 7, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(8, 8, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(10, 15, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(11, 16, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(14, 25, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(22, 33, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(23, 34, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(24, 35, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(28, 39, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(30, 41, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(33, 44, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(37, 51, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(38, 1, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(39, 2, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(40, 3, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(41, 4, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(42, 5, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(43, 6, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(44, 7, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(45, 8, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(47, 15, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(48, 16, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(51, 25, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(59, 33, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(60, 34, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(61, 35, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(65, 39, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(67, 41, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(70, 44, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(74, 51, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(75, 1, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(76, 2, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(77, 3, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(78, 4, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(79, 5, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(80, 6, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(81, 7, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(82, 8, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(84, 15, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(85, 16, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(88, 25, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(96, 33, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(97, 34, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(98, 35, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(102, 39, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(104, 41, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(107, 44, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(111, 51, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(112, 1, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(113, 2, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(114, 3, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(115, 4, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(116, 5, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(117, 6, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(118, 7, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(119, 8, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(121, 15, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(122, 16, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(125, 25, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(133, 33, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(134, 34, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(135, 35, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(139, 39, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(141, 41, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(144, 44, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(148, 51, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(149, 52, 'read_all', 'Read All Data', 'Hak akses untuk membaca data chartjs'),
	(150, 52, 'create', 'Create Data', 'Hak akses untuk menambah data'),
	(152, 52, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(153, 52, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(182, 5, 'read_own', 'Read Own Data', 'Hak akses untuk membaca data miliknya sendiri'),
	(183, 5, 'update_own', 'Update Own Data', 'Hak akses untuk mengupdate data miliknya sendiri'),
	(184, 5, 'delete_own', 'Delete Own Data', 'Hak akses untuk menghapus data miliknya sendiri'),
	(185, 15, 'read_own', 'Read Own Data', 'Hak akses untuk membaca data miliknya sendiri'),
	(186, 15, 'update_own', 'Update Own Data', 'Hak akses untuk mengupdate data miliknya sendiri'),
	(187, 15, 'delete_own', 'Delete Own Data', 'Hak akses untuk menghapus data miliknya sendiri'),
	(192, 62, 'create', 'Create Data', 'Hak akses untuk membuat data'),
	(193, 62, 'read_all', 'Read All Data', 'Hak akses untuk membaca semua data'),
	(194, 62, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(195, 62, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(196, 63, 'create', 'Create Data', 'Hak akses untuk membuat data'),
	(197, 63, 'read_all', 'Read All Data', 'Hak akses untuk membaca semua data'),
	(198, 63, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(199, 63, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(200, 64, 'create', 'Create Data', 'Hak akses untuk membuat data'),
	(201, 64, 'read_all', 'Read All Data', 'Hak akses untuk membaca semua data'),
	(202, 64, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(203, 64, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(204, 65, 'create', 'Create Data', 'Hak akses untuk membuat data'),
	(205, 65, 'read_all', 'Read All Data', 'Hak akses untuk membaca semua data'),
	(206, 65, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(207, 65, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(208, 66, 'create', 'Create Data', 'Hak akses untuk membuat data'),
	(209, 66, 'read_all', 'Read All Data', 'Hak akses untuk membaca semua data'),
	(210, 66, 'update_all', 'Update All Data', 'Hak akses untuk mengupdate semua data'),
	(211, 66, 'delete_all', 'Delete All Data', 'Hak akses untuk menghapus semua data'),
	(212, 66, 'read_own', 'Read Own Data', 'Hak akses untuk membaca data miliknya sendiri'),
	(213, 66, 'update_own', 'Update Own Data', 'Hak akses untuk mengupdate data miliknya sendiri'),
	(214, 66, 'delete_own', 'Delete Own Data', 'Hak akses untuk menghapus data miliknya sendiri');

-- Dumping structure for table surveiappdb.module_status
DROP TABLE IF EXISTS `module_status`;
CREATE TABLE IF NOT EXISTS `module_status` (
  `id_module_status` tinyint(1) NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(50) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_module_status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Tabel status modul, seperti: aktif, non aktif, dalam perbaikan';

-- Dumping data for table surveiappdb.module_status: ~3 rows (approximately)
REPLACE INTO `module_status` (`id_module_status`, `nama_status`, `keterangan`) VALUES
	(1, 'Aktif', NULL),
	(2, 'Tidak Aktif', NULL),
	(3, 'Dalam Perbaikan', 'Hanya role developer yang dapat mengakses module dengan status ini');

-- Dumping structure for table surveiappdb.pertanyaan
DROP TABLE IF EXISTS `pertanyaan`;
CREATE TABLE IF NOT EXISTS `pertanyaan` (
  `id_pertanyaan` int unsigned NOT NULL AUTO_INCREMENT,
  `id_survey` int unsigned NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `urut` smallint NOT NULL,
  `jenis` enum('shorttext','longtext','options','range','image','smiley','checkbox','dropdown') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `param` text COLLATE utf8mb4_general_ci,
  `required` enum('Y','N') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `validation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_pertanyaan`) USING BTREE,
  KEY `pertanyaan_survey` (`id_survey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.pertanyaan: ~8 rows (approximately)
REPLACE INTO `pertanyaan` (`id_pertanyaan`, `id_survey`, `pertanyaan`, `deskripsi`, `urut`, `jenis`, `param`, `required`, `validation`) VALUES
	(71, 12, 'Atasan langsung saya telah menjelaskan kepada saya pentingnya Transformasi Internal', '', 7, 'range', '{"jenis":{"type":"square","start":"1","end":"5","align":"default","color":"info"}}', 'Y', '[]'),
	(72, 12, 'Atasan langsung saya telah menjelaskan tujuan dan manfaat Transformasi Internal', '', 8, 'range', '{"jenis":{"type":"square","start":"1","end":"5","align":"default","color":"info"}}', 'Y', '[]'),
	(73, 12, 'Atasan langsung saya menunjukkan dukungan yang konsisten pada program Transformasi Internal', '', 9, 'range', '{"jenis":{"type":"square","start":"1","end":"5","align":"default","color":"info"}}', 'Y', '[]'),
	(74, 12, 'Atasan langsung saya mengambil keputusan dan tindakan yang diperlukan untuk mendukung Transformasi Internal', '', 10, 'range', '{"jenis":{"type":"square","start":"1","end":"5","align":"default","color":"info"}}', 'Y', '[]'),
	(75, 12, 'Atasan langsung saya menjadi role-model dalam mendukung upaya Transformasi Internal', '', 11, 'range', '{"jenis":{"type":"square","start":"1","end":"5","align":"default","color":"info"}}', 'Y', '[]'),
	(76, 12, 'Jenis Kelamin', '', 2, 'options', NULL, 'Y', '[]'),
	(77, 12, 'Pendidikan', '', 3, 'options', NULL, 'Y', '[]'),
	(78, 12, 'Tahun Lahir', '', 4, 'options', NULL, 'Y', '[]'),
	(79, 12, 'freetext', '<p><span style="color: #e03e2d; font-size: 12pt;"><sub>Keterangan Pilihan : 1 = Sangat Tidak Setuju, 2 = Tidak Setuju, 3 = Setuju, 4 = Sangat Setuju</sub></span></p>', 6, '', NULL, 'N', '[]'),
	(80, 12, 'freetext', '<h4><span style="text-decoration: underline;">Kepemimpinan</span></h4>', 5, '', NULL, 'N', '[]'),
	(81, 12, 'freetext', '<h5><span style="text-decoration: underline;">Informasi Responden</span></h5>', 1, '', NULL, 'N', '[]');

-- Dumping structure for table surveiappdb.pertanyaan_options
DROP TABLE IF EXISTS `pertanyaan_options`;
CREATE TABLE IF NOT EXISTS `pertanyaan_options` (
  `id_pertanyaan_options` int unsigned NOT NULL AUTO_INCREMENT,
  `id_pertanyaan` int unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lainnya` enum('Y','N') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `urut` smallint NOT NULL,
  PRIMARY KEY (`id_pertanyaan_options`) USING BTREE,
  KEY `pertanyaan_options_pertanyaan` (`id_pertanyaan`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.pertanyaan_options: ~14 rows (approximately)
REPLACE INTO `pertanyaan_options` (`id_pertanyaan_options`, `id_pertanyaan`, `label`, `lainnya`, `urut`) VALUES
	(103, 76, 'Laki-Laki', 'N', 1),
	(104, 76, 'Perempuan', 'N', 2),
	(105, 77, 'S3', 'N', 1),
	(106, 77, 'S2', 'N', 2),
	(107, 77, 'S1/Sarjana Terapan/D4', 'N', 3),
	(108, 77, 'D1/D2/D3', 'N', 4),
	(109, 77, 'SMA / sederajat', 'N', 5),
	(110, 77, 'SMP / sederajat', 'N', 6),
	(111, 77, 'SD / sederajat', 'N', 7),
	(112, 78, 'Dibawah 1965 (Baby Boomer)', 'N', 1),
	(113, 78, '1965-1976 (Gen-X)', 'N', 2),
	(114, 78, '1977-1994 (Gen-Y)', 'N', 3),
	(115, 78, '1995-2010 (Gen-Z)', 'N', 4),
	(116, 78, 'Diatas 2010 (Gen-Alpha)', 'N', 5);

-- Dumping structure for table surveiappdb.respon
DROP TABLE IF EXISTS `respon`;
CREATE TABLE IF NOT EXISTS `respon` (
  `id_respon` int unsigned NOT NULL AUTO_INCREMENT,
  `id_survey` int unsigned NOT NULL,
  `tgl_submit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_update` datetime NOT NULL,
  `tgl_update_admin` datetime NOT NULL,
  `ip_address` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo_data` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_respon`) USING BTREE,
  KEY `respon_survey` (`id_survey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.respon: ~0 rows (approximately)
REPLACE INTO `respon` (`id_respon`, `id_survey`, `tgl_submit`, `tgl_update`, `tgl_update_admin`, `ip_address`, `photo_data`) VALUES
	(169, 12, '2024-09-05 10:19:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '::1', NULL);

-- Dumping structure for table surveiappdb.respon_detail
DROP TABLE IF EXISTS `respon_detail`;
CREATE TABLE IF NOT EXISTS `respon_detail` (
  `id_respon` int unsigned NOT NULL,
  `id_pertanyaan` int unsigned NOT NULL,
  `respon` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_respon`,`id_pertanyaan`) USING BTREE,
  KEY `respon_detail_pertanyaan` (`id_pertanyaan`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.respon_detail: ~5 rows (approximately)
REPLACE INTO `respon_detail` (`id_respon`, `id_pertanyaan`, `respon`) VALUES
	(169, 71, '1'),
	(169, 72, '2'),
	(169, 73, '4'),
	(169, 74, '3'),
	(169, 75, '3');

-- Dumping structure for table surveiappdb.respon_options
DROP TABLE IF EXISTS `respon_options`;
CREATE TABLE IF NOT EXISTS `respon_options` (
  `id_respon` int unsigned NOT NULL,
  `id_pertanyaan_options` int unsigned NOT NULL,
  `options_text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `options_lainnya` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_respon`,`id_pertanyaan_options`) USING BTREE,
  KEY `respon_options_pertanyaan_options` (`id_pertanyaan_options`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.respon_options: ~2 rows (approximately)
REPLACE INTO `respon_options` (`id_respon`, `id_pertanyaan_options`, `options_text`, `options_lainnya`) VALUES
	(169, 103, 'Laki-Laki', NULL),
	(169, 106, 'S2', NULL),
	(169, 114, '1977-1994 (Gen-Y)', NULL);

-- Dumping structure for table surveiappdb.respon_user
DROP TABLE IF EXISTS `respon_user`;
CREATE TABLE IF NOT EXISTS `respon_user` (
  `id_respon` int unsigned NOT NULL,
  `id_user` int unsigned NOT NULL,
  PRIMARY KEY (`id_respon`,`id_user`) USING BTREE,
  KEY `respon_user_user` (`id_user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.respon_user: ~0 rows (approximately)

-- Dumping structure for table surveiappdb.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nama_role` varchar(50) NOT NULL,
  `judul_role` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `id_module` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `role_nama` (`nama_role`),
  KEY `role_module` (`id_module`),
  CONSTRAINT `role_module` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Tabel yang berisi daftar role, role ini mengatur bagaimana user mengakses module, role ini nantinya diassign ke user';

-- Dumping data for table surveiappdb.role: ~3 rows (approximately)
REPLACE INTO `role` (`id_role`, `nama_role`, `judul_role`, `keterangan`, `id_module`) VALUES
	(1, 'admin', 'Administrator', 'Administrator', 5),
	(2, 'user', 'User', 'Pengguna umum', 5),
	(3, 'webdev', 'Web Developer', 'Pengembang aplikasi', 5);

-- Dumping structure for table surveiappdb.role_module_permission
DROP TABLE IF EXISTS `role_module_permission`;
CREATE TABLE IF NOT EXISTS `role_module_permission` (
  `id_role` smallint unsigned NOT NULL,
  `id_module_permission` smallint unsigned NOT NULL,
  PRIMARY KEY (`id_role`,`id_module_permission`) USING BTREE,
  KEY `role_permission_permission` (`id_module_permission`) USING BTREE,
  CONSTRAINT `role_module_permission_module_permission` FOREIGN KEY (`id_module_permission`) REFERENCES `module_permission` (`id_module_permission`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_module_permission_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.role_module_permission: ~104 rows (approximately)
REPLACE INTO `role_module_permission` (`id_role`, `id_module_permission`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 10),
	(1, 11),
	(1, 14),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 28),
	(1, 30),
	(1, 33),
	(1, 37),
	(1, 38),
	(1, 39),
	(1, 40),
	(1, 41),
	(1, 42),
	(1, 43),
	(1, 44),
	(1, 45),
	(1, 47),
	(1, 48),
	(1, 51),
	(1, 59),
	(1, 60),
	(1, 61),
	(1, 65),
	(1, 67),
	(1, 70),
	(1, 74),
	(1, 75),
	(1, 76),
	(1, 77),
	(1, 78),
	(1, 79),
	(1, 80),
	(1, 81),
	(1, 82),
	(1, 84),
	(1, 85),
	(1, 88),
	(1, 96),
	(1, 97),
	(1, 98),
	(1, 102),
	(1, 104),
	(1, 107),
	(1, 111),
	(1, 112),
	(1, 113),
	(1, 114),
	(1, 115),
	(1, 116),
	(1, 117),
	(1, 118),
	(1, 119),
	(1, 121),
	(1, 122),
	(1, 125),
	(1, 133),
	(1, 134),
	(1, 135),
	(1, 139),
	(1, 141),
	(1, 144),
	(1, 148),
	(1, 149),
	(1, 150),
	(1, 152),
	(1, 153),
	(2, 182),
	(3, 182),
	(2, 183),
	(2, 185),
	(2, 186),
	(1, 192),
	(1, 193),
	(1, 194),
	(1, 195),
	(1, 196),
	(1, 197),
	(1, 198),
	(1, 199),
	(1, 200),
	(1, 201),
	(1, 202),
	(1, 203),
	(1, 204),
	(1, 205),
	(1, 206),
	(1, 207),
	(1, 208),
	(1, 209),
	(1, 210),
	(1, 211),
	(2, 212),
	(2, 213),
	(2, 214);

-- Dumping structure for table surveiappdb.setting
DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `param` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `value` tinytext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`type`,`param`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.setting: ~26 rows (approximately)
REPLACE INTO `setting` (`type`, `param`, `value`) VALUES
	('app', 'background_logo', 'transparent'),
	('app', 'btn_login', 'btn-success'),
	('app', 'deskripsi_web', 'Survei Pulse Check'),
	('app', 'favicon', 'favicon.png'),
	('app', 'footer_app', '&copy; {{YEAR}} &lt;a href=&quot;https://www.kemkes.go.id&quot; target=&quot;_blank&quot;&gt;https://www.kemkes.go.id&lt;/a&gt;'),
	('app', 'footer_login', '&copy; {{YEAR}} &lt;a href=&quot;https://www.kemkes.go.id&quot; target=&quot;_blank&quot;&gt;https://www.kemkes.go.id&lt;/a&gt;'),
	('app', 'judul_web', 'Survei Pulse Check'),
	('app', 'logo_app', 'logo_kemenkes_new(1).png'),
	('app', 'logo_login', 'logo_kemenkes_new.png'),
	('app', 'logo_register', 'favicon(1).png'),
	('layout', 'bootswatch_theme', 'default'),
	('layout', 'color_scheme', 'blue-dark'),
	('layout', 'font_family', 'poppins'),
	('layout', 'font_size', '13'),
	('layout', 'logo_background_color', 'dark'),
	('layout', 'sidebar_color', 'dark'),
	('register', 'default_page_id_module', '5'),
	('register', 'default_page_id_role', '2'),
	('register', 'default_page_type', 'id_module'),
	('register', 'default_page_url', '{{BASE_URL}}builtin/user/edit?id=1'),
	('register', 'enable', 'N'),
	('register', 'id_role', '2'),
	('register', 'metode_aktivasi', 'email'),
	('survey', 'current_timezone', 'Asia/Jakarta'),
	('survey', 'email_tujuan', 'osdm@kemkes.go.id'),
	('survey', 'multiple_submit', 'Y'),
	('survey', 'nama_email_tujuan', 'Responden'),
	('web', 'default_page_description', 'Survei Pulse Check'),
	('web', 'default_page_title', 'Survei Pulse Check'),
	('web', 'web_name', 'Biro OSDM');

-- Dumping structure for table surveiappdb.setting_user
DROP TABLE IF EXISTS `setting_user`;
CREATE TABLE IF NOT EXISTS `setting_user` (
  `id_user` int unsigned NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `param` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.setting_user: 2 rows
/*!40000 ALTER TABLE `setting_user` DISABLE KEYS */;
REPLACE INTO `setting_user` (`id_user`, `type`, `param`) VALUES
	(2, 'layout', '{"color_scheme":"purple","bootswatch_theme":"default","sidebar_color":"dark","logo_background_color":"dark","font_family":"open-sans","font_size":"15"}'),
	(3, 'layout', '{"color_scheme":"green","bootswatch_theme":"default","sidebar_color":"dark","logo_background_color":"dark","font_family":"poppins","font_size":"14.5"}');
/*!40000 ALTER TABLE `setting_user` ENABLE KEYS */;

-- Dumping structure for table surveiappdb.survey
DROP TABLE IF EXISTS `survey`;
CREATE TABLE IF NOT EXISTS `survey` (
  `id_survey` int unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `page_description` text COLLATE utf8mb4_general_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci NOT NULL,
  `tampilkan_judul_deskripsi` enum('Y','N') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Y',
  `css` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Y',
  `login` enum('Y','N') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `using_periode` enum('Y','N') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `text_align` enum('default','left','center') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'left',
  `layout_width` enum('small','medium','large','fullwidth') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'medium',
  `slug` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `using_photo` enum('Y','N') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `id_user_input` int NOT NULL,
  `tgl_input` date NOT NULL,
  `id_user_update` int NOT NULL,
  `tgl_update` date DEFAULT NULL,
  PRIMARY KEY (`id_survey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.survey: ~1 rows (approximately)
REPLACE INTO `survey` (`id_survey`, `page_title`, `page_description`, `judul`, `deskripsi`, `tampilkan_judul_deskripsi`, `css`, `aktif`, `login`, `using_periode`, `text_align`, `layout_width`, `slug`, `using_photo`, `start_date`, `end_date`, `id_user_input`, `tgl_input`, `id_user_update`, `tgl_update`) VALUES
	(12, 'Survei Pulse Check Semester II Tahun 2024', 'Survei Pulse Check merupakan survey dalam rangka evaluasi berkala dan berkelanjutan pelaksanaan transformasi internal Kementerian Kesehatan', 'Survei Pulse Check Semester II Tahun 2024', 'Survei Pulse Check bertujuan dalam rangka penerapan evaluasi berkala dan berkelanjutan pelaksanaan transformasi internal Kementerian Kesehatan', 'Y', '', 'Y', 'N', 'Y', 'left', 'medium', 'survey-pulse-check', 'N', '2024-09-01', '2024-09-30', 1, '0000-00-00', 1, '2024-09-07');

-- Dumping structure for table surveiappdb.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verified` tinyint NOT NULL,
  `status` enum('active','suspended','deleted') DEFAULT NULL,
  `created` datetime NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `default_page_type` enum('url','id_module','id_role') DEFAULT 'id_module',
  `default_page_url` varchar(255) DEFAULT NULL,
  `default_page_id_module` smallint unsigned DEFAULT NULL,
  `default_page_id_role` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Tabel user untuk login';

-- Dumping data for table surveiappdb.user: ~31 rows (approximately)
REPLACE INTO `user` (`id_user`, `email`, `username`, `nama`, `password`, `verified`, `status`, `created`, `avatar`, `default_page_type`, `default_page_url`, `default_page_id_module`, `default_page_id_role`) VALUES
	(1, 'sigit.kemke@gmail.com', 'admin', 'Sigit Wibowo', '$2y$10$pp.DC8Cfkw1rpeUmTbD/tOHUyOEhr3gGSwQfmLsaviaHqKWOOsD9W', 1, 'active', '2021-01-01 08:09:30', 'SIGIT_SQUARE_SMALL2.jpg', 'id_module', '', 64, 1),
	(2, 'user.administrasi@gmail.com', 'user', 'User Administrasi', '$2y$10$mULSmqshWmi/SpxVvoEwPe8/ZxJRKyQLVJusxiAYneFycNYJDhjKe', 1, 'active', '2021-01-01 08:10:11', 'administrator.png', 'id_role', '', 5, 2),
	(3, 'superuser@gmail.com', 'superuser', 'Super User', '$2y$10$WKtoNg.3RKbMYCM4ypYQx.5/5/W60faz8T2Kxc/XDE1h.bIL/Icg2', 1, 'active', '2021-01-01 08:11:15', '', NULL, NULL, 5, NULL);

-- Dumping structure for table surveiappdb.user_login_activity
DROP TABLE IF EXISTS `user_login_activity`;
CREATE TABLE IF NOT EXISTS `user_login_activity` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int unsigned NOT NULL,
  `id_activity` tinyint NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_login_activity_user` (`id_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table surveiappdb.user_login_activity: ~50 rows (approximately)
REPLACE INTO `user_login_activity` (`id`, `id_user`, `id_activity`, `time`) VALUES
	(335, 52, 1, '2023-06-02 13:20:44'),
	(336, 52, 1, '2023-06-02 13:29:25'),
	(337, 2, 1, '2023-06-02 21:32:19'),
	(338, 2, 1, '2023-06-02 21:34:42'),
	(339, 1, 1, '2023-06-02 21:35:33'),
	(340, 2, 1, '2023-06-02 14:39:39'),
	(341, 52, 1, '2023-06-02 14:48:54'),
	(342, 52, 1, '2023-06-02 21:50:23'),
	(343, 52, 1, '2023-06-02 14:59:46'),
	(344, 1, 1, '2023-06-03 14:21:11'),
	(345, 52, 1, '2023-06-03 14:27:22'),
	(346, 1, 1, '2023-06-03 14:37:08'),
	(347, 1, 1, '2023-06-05 19:23:24'),
	(348, 1, 1, '2023-06-05 20:08:48'),
	(349, 1, 1, '2023-06-06 05:12:53'),
	(350, 1, 1, '2023-06-06 18:03:02'),
	(351, 1, 1, '2023-06-06 22:17:35'),
	(352, 1, 1, '2023-06-07 05:04:05'),
	(353, 1, 1, '2023-06-07 19:21:59'),
	(354, 1, 1, '2023-06-08 05:03:41'),
	(355, 1, 1, '2023-06-10 17:05:03'),
	(356, 1, 1, '2023-06-10 17:05:50'),
	(357, 1, 1, '2023-06-10 17:07:03'),
	(358, 1, 1, '2023-06-12 05:48:43'),
	(359, 2, 1, '2023-06-13 05:25:18'),
	(360, 1, 1, '2023-06-13 05:25:52'),
	(361, 2, 1, '2023-06-13 05:26:31'),
	(362, 2, 1, '2023-06-13 05:28:45'),
	(363, 1, 1, '2023-06-13 05:29:21'),
	(364, 1, 1, '2023-06-13 05:30:07'),
	(365, 2, 1, '2023-06-13 05:30:17'),
	(366, 2, 1, '2023-06-12 22:47:01'),
	(367, 1, 1, '2023-06-13 05:51:13'),
	(368, 1, 1, '2023-06-15 05:19:11'),
	(369, 1, 1, '2023-06-15 05:31:04'),
	(370, 2, 1, '2023-06-15 21:08:02'),
	(371, 1, 1, '2023-06-15 21:11:22'),
	(372, 2, 1, '2023-06-16 18:30:33'),
	(373, 1, 1, '2023-06-16 18:32:56'),
	(374, 2, 1, '2023-06-16 18:34:53'),
	(375, 1, 1, '2023-06-16 18:36:28'),
	(376, 2, 1, '2023-06-16 18:37:15'),
	(377, 2, 1, '2023-06-16 18:37:56'),
	(378, 1, 1, '2023-06-16 19:52:45'),
	(379, 1, 1, '2023-06-16 20:18:45'),
	(380, 2, 1, '2023-06-16 13:56:23'),
	(381, 1, 1, '2023-06-17 07:39:44'),
	(382, 1, 1, '2023-06-17 15:00:04'),
	(383, 1, 1, '2023-06-17 15:06:47'),
	(384, 1, 1, '2023-06-17 22:16:55'),
	(385, 1, 1, '2024-08-11 20:58:33'),
	(386, 1, 1, '2024-09-04 14:04:45'),
	(387, 1, 1, '2024-09-04 21:04:58'),
	(388, 1, 1, '2024-09-04 21:09:54'),
	(389, 1, 1, '2024-09-04 21:36:11'),
	(390, 1, 1, '2024-09-04 21:44:13'),
	(391, 1, 1, '2024-09-04 22:28:34'),
	(392, 1, 1, '2024-09-04 22:30:06'),
	(393, 1, 1, '2024-09-05 06:59:25'),
	(394, 1, 1, '2024-09-05 07:03:50'),
	(395, 1, 1, '2024-09-05 07:13:28'),
	(396, 1, 1, '2024-09-05 07:19:48'),
	(397, 1, 1, '2024-09-05 07:37:42'),
	(398, 1, 1, '2024-09-05 09:53:32'),
	(399, 1, 1, '2024-09-05 10:45:52'),
	(400, 1, 1, '2024-09-07 21:40:55'),
	(401, 1, 1, '2024-09-07 22:00:33');

-- Dumping structure for table surveiappdb.user_login_activity_ref
DROP TABLE IF EXISTS `user_login_activity_ref`;
CREATE TABLE IF NOT EXISTS `user_login_activity_ref` (
  `id_activity` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id_activity`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table surveiappdb.user_login_activity_ref: ~0 rows (approximately)

-- Dumping structure for table surveiappdb.user_role
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `id_user` int unsigned NOT NULL,
  `id_role` smallint unsigned NOT NULL,
  PRIMARY KEY (`id_user`,`id_role`),
  KEY `module_role_module` (`id_user`),
  KEY `module_role_role` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Tabel yang berisi role yang dimili oleh masing masing user';

-- Dumping data for table surveiappdb.user_role: ~5 rows (approximately)
REPLACE INTO `user_role` (`id_user`, `id_role`) VALUES
	(1, 1),
	(2, 2),
	(3, 2),
	(52, 2),
	(3, 3);

-- Dumping structure for table surveiappdb.user_token
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE IF NOT EXISTS `user_token` (
  `selector` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `action` enum('register','remember','recovery','activation') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` int unsigned NOT NULL,
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`selector`),
  KEY `user_token_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table surveiappdb.user_token: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
