/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : zena

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 24/11/2024 05:20:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` (`id`, `title`, `slug`, `text_color`, `bg_color`, `created_at`, `updated_at`) VALUES (17, 'Kunjungan', 'kunjungan', NULL, NULL, '2024-11-21 20:48:14', '2024-11-21 20:48:14');
INSERT INTO `categories` (`id`, `title`, `slug`, `text_color`, `bg_color`, `created_at`, `updated_at`) VALUES (18, 'Penelitian', 'penelitian', NULL, NULL, '2024-11-21 20:50:33', '2024-11-21 20:50:33');
INSERT INTO `categories` (`id`, `title`, `slug`, `text_color`, `bg_color`, `created_at`, `updated_at`) VALUES (19, 'Kerjasama', 'kerjasama', NULL, NULL, '2024-11-21 20:53:45', '2024-11-21 20:53:45');
INSERT INTO `categories` (`id`, `title`, `slug`, `text_color`, `bg_color`, `created_at`, `updated_at`) VALUES (20, 'Lulusan', 'lulusan', NULL, NULL, '2024-11-21 20:56:12', '2024-11-21 20:56:12');
COMMIT;

-- ----------------------------
-- Table structure for category_post
-- ----------------------------
DROP TABLE IF EXISTS `category_post`;
CREATE TABLE `category_post` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of category_post
-- ----------------------------
BEGIN;
INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES (4, 303, 11, NULL, NULL);
INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES (5, 303, 10, NULL, NULL);
INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES (6, 304, 12, NULL, NULL);
INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES (7, 305, 17, NULL, NULL);
INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES (8, 306, 18, NULL, NULL);
INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES (9, 307, 17, NULL, NULL);
INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES (10, 308, 19, NULL, NULL);
INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES (11, 309, 20, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2023_09_06_121600_create_sessions_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2023_09_08_133049_create_posts_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2023_09_08_133104_create_categories_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2023_09_08_133145_create_category_post_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '2023_09_17_160342_create_post_like_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '2023_09_25_045944_create_comments_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2023_09_30_090231_add_role_to_users', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for post_like
-- ----------------------------
DROP TABLE IF EXISTS `post_like`;
CREATE TABLE `post_like` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_like_user_id_index` (`user_id`),
  KEY `post_like_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_like
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `body`, `published_at`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES (303, 1, 'posts/thumbnails/JPUU54ojNMJWN57W6PCzFAEyASjS0N-metaU2NyZWVuc2hvdCAyMDI0LTExLTA4IGF0IDIwLjA0LjQ3LnBuZw==-.png', 'berita aa', 'berita-aa', '<p>asdadsanfjsnkjnjgdhjgjhgnekrnerngerjnk</p>', '2024-11-15 04:00:05', 1, '2024-11-21 20:48:29', '2024-11-15 04:53:38', '2024-11-21 20:48:29');
INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `body`, `published_at`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES (304, 1, NULL, 'asdsadsa', 'asdsadsa', '<p>sdasadasdasd</p>', '2024-11-17 04:05:17', 0, '2024-11-21 20:48:33', '2024-11-17 04:05:39', '2024-11-21 20:48:33');
INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `body`, `published_at`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES (305, 1, 'posts/thumbnails/jPEIkb5iSknqI4a8wsfStKAsjwBqYE-metadGltdGh1bWIuanBlZw==-.jpg', 'KESERUAN KUNJUNGAN SMK PELITA JATIBARANG DI ITD ADISUTJIPTO', 'keseruan-kunjungan-smk-pelita-jatibarang-di-itd-adisutjipto', '<p>Institut Teknologi Dirgantara Adisutjipto Yogyakarta (ITDA) menyambut kedatangan 155 siswa beserta guru pendamping dari SMK Pelita Jatibarang, Indramayu. Kunjungan yang berlangsung penuh antusias ini dibuka dengan sambutan hangat dari Kepala Pusat Humas dan Admisi ITDA, Anton Setiawan H., S.Kom., M.T., yang mengapresiasi kedatangan para siswa dan guru.</p><p>Dalam kesempatan ini, para siswa mendapat materi inspiratif dari dosen ITDA, Ibu Nurchayani Dewi Retnowati, S.Far., Apt., M.T., yang memperkenalkan mereka pada dunia dirgantara serta peluang karier di bidang teknologi penerbangan. Materi ini diharapkan bisa membuka wawasan dan memotivasi para siswa untuk lebih mengenal serta menekuni ilmu kedirgantaraan.</p><p>Setelah sesi materi, para siswa diajak berkeliling kampus untuk melihat langsung berbagai fasilitas yang dimiliki ITDA. Mereka mengunjungi laboratorium, ruang kelas modern, serta pusat kegiatan mahasiswa, yang semuanya dirancang untuk mendukung proses pembelajaran dan inovasi teknologi di bidang dirgantara.</p><p>Kegiatan ini diharapkan dapat menjadi inspirasi bagi siswa-siswi SMK Pelita Jatibarang untuk terus mengembangkan potensi diri dan meraih cita-cita mereka. Dengan kunjungan ini, ITDA juga berharap dapat semakin memperkenalkan dunia dirgantara kepada generasi muda serta memotivasi mereka untuk menggapai masa depan di bidang teknologi penerbangan.</p><p><br></p>', '2024-11-21 20:49:01', 1, NULL, '2024-11-21 20:49:21', '2024-11-21 20:49:21');
INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `body`, `published_at`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES (306, 1, 'posts/thumbnails/ipRTKqo8Wrf3WeB2I2zdn9zEs1f24a-metadGltdGh1bWIgKDEpLmpwZWc=-.jpg', 'PACU SEMANGAT INOVASI! ITD ADISUTJIPTO GELAR MONITORING DAN EVALUASI PENELITIAN BIMA 2024', 'pacu-semangat-inovasi-itd-adisutjipto-gelar-monitoring-dan-evaluasi-penelitian-bima-2024', '<p>Institut Teknologi Dirgantara Adisutjipto (ITD Adisutjipto) menggelar Monitoring dan Evaluasi Internal Program Penelitian Bima Tahun Anggaran 2024. Acara ini diadakan di Ruang Galaxy Akademik, dihadiri oleh 20 dosen yang terbagi dalam empat tim penelitian, dan berlangsung dari pukul 09.00 hingga 12.30 WIB.</p><p>Kegiatan ini bertujuan untuk memastikan penelitian ITD Adisutjipto memberikan dampak positif bagi pengembangan teknologi, kesejahteraan masyarakat, dan daya saing bangsa. Reviewer dalam acara ini adalah Prof. Dr. Anak Agung Putu Susastriawan, S.T., M.Tech. dari Universitas Akprind, yang memberikan penilaian mendalam atas hasil riset yang dipresentasikan oleh setiap tim.</p><p>Acara dibuka dengan sambutan Kepala LPPM, dilanjutkan dengan sesi evaluasi untuk setiap tim. Selain menilai hasil riset, acara ini juga menjadi momen refleksi bagi ITD Adisutjipto untuk terus meningkatkan kualitas penelitian dan inovasi yang bermanfaat.</p><p>Hasil evaluasi diharapkan dapat menjadi motivasi bagi para peneliti ITD Adisutjipto untuk terus berkontribusi dalam pengembangan ilmu pengetahuan dan teknologi, mendorong ITD Adisutjipto untuk tetap menjadi pelopor perubahan positif bagi masyarakat.</p><p><br></p>', '2024-11-21 20:51:33', 1, NULL, '2024-11-21 20:51:47', '2024-11-21 20:51:47');
INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `body`, `published_at`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES (307, 1, 'posts/thumbnails/eZQrFC8FK1PoNEWhVpmJxT6812rfuK-metadGltdGh1bWIgKDIpLmpwZWc=-.jpg', 'KUNJUNGAN SMAN 2 OKU KE ITDA: MENGINSPIRASI GENERASI MUDA UNTUK BERKARYA DI DUNIA DIRGANTARA', 'kunjungan-sman-2-oku-ke-itda-menginspirasi-generasi-muda-untuk-berkarya-di-dunia-dirgantara', '<p>Pada Selasa, 22 Oktober 2024, Institut Teknologi Dirgantara Adisutjipto (ITD Adisutjipto) Yogyakarta menyambut hangat kunjungan dari SMAN 2 OKU. Kegiatan ini bertujuan memperkenalkan pendidikan tinggi dan teknologi dirgantara kepada 123 siswa yang berkunjung.</p><p>Wakil Rektor III ITD Adisutjipto, Kolonel (Purn) Drs. Suyoko, M.Si., membuka acara dengan memaparkan pentingnya teknologi dirgantara bagi masa depan Indonesia. Sambutan dari Kepala Sekolah SMAN 2 OKU, Bapak Agus Sudiana, S.Pd., M.M., memperkuat apresiasi atas kesempatan belajar ini.</p><p>Selain sesi pengenalan kampus dan materi dari dosen C. Sukaca B., S.T., M.T., acara diisi dengan tanya jawab interaktif dan tur fasilitas kampus, yang semakin membuka wawasan siswa tentang peluang karier di dunia dirgantara.</p><p>Melalui kunjungan ini, ITD Adisutjipto berharap dapat menginspirasi para siswa untuk terus mengembangkan diri dalam bidang teknologi dan berkontribusi pada kemajuan bangsa.</p>', '2024-11-21 20:52:50', 1, NULL, '2024-11-21 20:53:02', '2024-11-21 20:53:02');
INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `body`, `published_at`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES (308, 1, 'posts/thumbnails/JsdADzdTUkb0e29qL2rd4uai2PgdvP-metadGltdGh1bWIgKDMpLmpwZWc=-.jpg', 'ITD ADISUTJIPTO DAN ROYAL AMBARUKMO JALIN KERJASAMA STRATEGIS UNTUK PENGEMBANGAN PENDIDIKAN DAN INDUSTRI', 'itd-adisutjipto-dan-royal-ambarukmo-jalin-kerjasama-strategis-untuk-pengembangan-pendidikan-dan-industri', '<p>Institut Teknologi Dirgantara Adisutjipto (ITD Adisutjipto) dan Royal Ambarukmo Yogyakarta resmi menandatangani Nota Kesepahaman dan Perjanjian Kerjasamapada hari Kamis (17/10/2024), bertempat di Royal Ambarukmo Yogyakarta. Kerjasama ini bertujuan untuk mendukung Tri Dharma Perguruan Tinggi dan implementasi Merdeka Belajar Kampus Merdeka (MBKM), memperkuat sinergi antara dunia pendidikan dan industri.</p><p>Kegiatan ini dihadiri oleh Herman Courbois, General Manager Royal Ambarukmo, dan Didit, HR Manager Royal Ambarukmo, serta Rektor&nbsp; ITD Adisutjipto, Kolonel Tek. DR. Nur Priyanto Poupon, M.Pd. beserta Wakil Rektor I, Wakil Rektor III, Kabiro Kerjasama, dan Kaprodi Informatika. Dalam sambutannya, Rektor ITD Adisutjipto menekankan bahwa kerjasama ini akan membuka peluang besar bagi mahasiswa melalui program magang dan proyek industri, sekaligus meningkatkan keterampilan profesional yang relevan dengan dunia kerja.</p><p>Rektor juga menyampaikan apresiasi kepada Royal Ambarukmo atas komitmennya dalam mendukung kerjasama ini. Kerjasama ini diharapkan tidak hanya bermanfaat bagi kedua belah pihak, tetapi juga memberikan kontribusi nyata bagi masyarakat dan pembangunan daerah. Acara ditutup dengan penandatanganan kesepakatan dan sesi foto bersama sebagai simbolisasi komitmen dalam menjalankan kerjasama yang produktif.</p>', '2024-11-21 20:54:17', 1, NULL, '2024-11-21 20:54:35', '2024-11-21 20:54:35');
INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `body`, `published_at`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES (309, 1, 'posts/thumbnails/OMTDOKGQR1EqpyJ8Gm3Bn3IPHXEF1q-metadGltdGh1bWIgKDQpLmpwZWc=-.jpg', 'ITD ADISUTJIPTO CETAK LULUSAN BERPRESTASI: WISUDAWAN CUMLAUDE SIAP MENGHARUMKAN BANGSA', 'itd-adisutjipto-cetak-lulusan-berprestasi-wisudawan-cumlaude-siap-mengharumkan-bangsa', '<p>Institut Teknologi Dirgantara Adisutjipto (ITD Adisutjipto) kembali meluluskan alumninya yang acara wisudanya dilaksanakan pada Selasa (15/10/2024), bertempat di Indraprasta Grand Ballroom Sahid Raya Hotel and Convention Yogyakarta. Wisuda Institut Teknologi Dirgantara Adisutjipto Tahun Akademik 2024/2025, diikuti sebanyak 324 orang, yang tersebar pada 2 Fakultas dan 6 Program Studi.</p><p>Wisuda pada T.A. 2024/2025 ini merupakan wisuda yang istimewa bagi ITD Adisutjipto, dengan rata-rata IPK lulusan 3,29, angka ini naik secara <em>significant </em>daripada tahun lalu yaitu 3,24. Dari 324 wisudawan tersebut, terdapat 69 wisudawan yang memperoleh predikat <em>cumlaude</em>. Untuk lulusan berprestasi pamuncak tingkat ITD Adisutjipto untuk Calvin Delano Immanuel Pangkey, S.T., Program Studi Teknik Dirgantara, Fakultas Teknologi Kedirgantaraan, dengan IPK: 3.97, predikat cumlaude, dengan masa studi 4 Tahun 5 Bulan 27 Hari dan untuk D III&nbsp; diberikan kepada Sunu Aditya Pamungkas, Amd. T. Program Studi Aeronautika, Fakultas Teknologi Kedirgantaraan, dengan IPK: 3,65 predikat cumlaude dengan masa studi 2 Tahun 10 Bulan 28 Hari.</p><p>Prosesi wisuda dibuka dan dipimpin oleh Ketua Senat ITD Adisutjipto, Marsma TNI (Purn) Wahyudi Sumarwoto, S.E., M.Si. yang didampingi oleh Rektor ITD Adisutjipto, Dr. Nur Priyanto Poupon, M.Pd. Pada ada kesempatan wisuda tahun ini, selain sambutan Rektor ITD Adisutjipto juga dibacakan sambutan KASAU selaku Pembina Yayasan Adiupaya TNI AU (YASAU) oleh Inspektur Jenderal TNI Angkatan Udara (Irjenau) Marsekal Muda TNI Jemi Trisonjaya, S.M., M.Tr.(Han)., M.I.Pol. Dilanjutkan sambutan Kepala Wilayah V LLDIKTI yang diwakili oleh Ketua Tim Keprotokolan, Kehumasan dan Sekretariat Pimpinan, Pungki Herawati, S.IP., M.A. ,. Acara ini, dihadiri juga oleh Ketua Umum YASAU, Marsda TNI (Purn) Ir. Tri Bowo Budi Santoso, M.M., M.Tr (Han) beserta jajaran Pengurus YASAU, Pimpinan Perguruan Tinggi Swasta (PTS) di bawah naungan YASAU, Pimpinan PTS LLDIKTI Wilayah V, Pimpinan Perusahaan Industri yang bekerja sama dengan ITD Adisutjipto, beserta undangan lainnya.</p><p>ITD Adisutjipto telah menetapkan standar keunggulan akademik yang tinggi dengan memfokuskan dalam bidang sains dan teknologi kedirgantaraan dan saat ini menduduki peringkat pertama di Indonesia sebagai PTS kedirgantaraan versi SINTA Kemendikbudristek. Maka dari itu juga, Rektor ITD Adisutjipto berpesan agar alumni dapat mempromosikan kampus ini dengan cara mengedepankan empat value yang sudah didapatkan di ITD Adisutjipto. Apabila nantinya dalam bekerja dapat meraih sukses dengan cara-cara yang Jujur, Tekun, Tulus dan Disiplin, artinya para alumni telah mengharumkan nama almamater ITD Adisutjipto ini. Dan secara universal, telah ikut andil dalam upaya membangun bangsa dan negara.</p>', '2024-11-21 20:57:07', 1, NULL, '2024-11-21 20:57:19', '2024-11-21 20:57:19');
COMMIT;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('hgQ6tVppYbtvD3bAA8Z4m16XTGzM6RNZJTAV17xr', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVdLUzY4bk14dlNNcWoyYkRHMHJaajhJaVZ2cXczSTg1Z0VzMDdXSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732241591);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role`) VALUES (1, 'Admin', 'demo@demo.com', NULL, '$2y$10$J6IqBrFtDNZ9aTyBR2XCJO64Owie2Oq4Hsale1Q1bISXkekrLx4mq', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 03:10:12', '2024-11-21 20:49:31', 'ADMIN');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
