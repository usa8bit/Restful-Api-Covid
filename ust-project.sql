-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 10:31 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ust-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_14_030442_create_patients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_date_at` date NOT NULL,
  `out_date_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `phone`, `address`, `status`, `in_date_at`, `out_date_at`, `created_at`, `updated_at`) VALUES
(1, 'Umay Hutapea', '(+62) 545 3619 2885', 'Jr. Jend. A. Yani No. 33, Banjarmasin 18532, Riau', 'Positive', '2022-11-11', '2022-11-16', NULL, NULL),
(2, 'Gawati Susanti', '0913 0830 926', 'Gg. Achmad Yani No. 197, Palangka Raya 92112, Bali', 'Positive', '2022-11-11', '2022-11-21', NULL, NULL),
(3, 'Jinawi Sihotang M.TI.', '0614 4236 1565', 'Psr. Basuki Rahmat  No. 651, Sukabumi 33863, Kaltim', 'Positive', '2022-11-14', '2022-11-11', NULL, NULL),
(4, 'Dina Laksmiwati', '0841 5846 452', 'Gg. Ters. Pasir Koja No. 986, Palangka Raya 87390, Aceh', 'Positive', '2022-11-16', '2022-11-08', NULL, NULL),
(5, 'Galih Megantara', '(+62) 29 7338 485', 'Gg. Fajar No. 290, Surabaya 48790, Sumut', 'Recovered', '2022-11-09', '2022-11-17', NULL, NULL),
(6, 'Putu Dimas Hutapea S.Ked', '(+62) 256 3812 998', 'Kpg. Kartini No. 682, Serang 28108, Kaltim', 'Recovered', '2022-11-19', '2022-11-18', NULL, NULL),
(7, 'Dariati Darijan Hakim', '(+62) 226 6815 8854', 'Ds. Agus Salim No. 711, Ambon 57305, Gorontalo', 'Dead', '2022-11-18', '2022-11-12', NULL, NULL),
(8, 'Dagel Prayoga', '(+62) 289 3931 586', 'Kpg. Abang No. 310, Administrasi Jakarta Pusat 23818, Sumsel', 'Positive', '2022-11-13', '2022-11-17', NULL, NULL),
(9, 'Mitra Lurhur Prasetyo', '(+62) 691 5515 9298', 'Jln. Basuki No. 708, Pasuruan 16645, Kalteng', 'Positive', '2022-11-20', '2022-11-11', NULL, NULL),
(10, 'Najib Dabukke M.Kom.', '021 5269 0291', 'Jln. Sentot Alibasa No. 752, Sabang 92347, Babel', 'Dead', '2022-11-12', '2022-11-08', NULL, NULL),
(11, 'Halima Safitri S.IP', '0801 9620 243', 'Kpg. Sam Ratulangi No. 838, Palangka Raya 96803, Malut', 'Dead', '2022-11-08', '2022-11-07', NULL, NULL),
(12, 'Icha Uyainah S.IP', '0219 8486 3416', 'Ki. Nangka No. 840, Pontianak 97714, Kalsel', 'Positive', '2022-11-20', '2022-11-13', NULL, NULL),
(13, 'Iriana Genta Purnawati', '0369 8376 602', 'Ki. Halim No. 283, Gunungsitoli 96828, Kalteng', 'Recovered', '2022-11-12', '2022-11-07', NULL, NULL),
(14, 'Karma Pranowo', '0275 6289 2685', 'Ds. Baja Raya No. 51, Pasuruan 81988, Riau', 'Dead', '2022-11-07', '2022-11-11', NULL, NULL),
(15, 'Amalia Andriani', '(+62) 348 3121 0616', 'Ki. Bacang No. 514, Pekanbaru 27803, Jambi', 'Positive', '2022-11-21', '2022-11-18', NULL, NULL),
(16, 'Salimah Kuswandari', '(+62) 590 9755 854', 'Ki. Tangkuban Perahu No. 90, Pasuruan 79148, Gorontalo', 'Recovered', '2022-11-19', '2022-11-12', NULL, NULL),
(17, 'Paris Suartini', '0477 9769 5137', 'Kpg. Hasanuddin No. 651, Bima 93599, NTB', 'Recovered', '2022-11-10', '2022-11-17', NULL, NULL),
(18, 'Intan Zulaika', '(+62) 607 8207 5988', 'Dk. Bara No. 603, Lubuklinggau 22667, Aceh', 'Recovered', '2022-11-09', '2022-11-18', NULL, NULL),
(19, 'Febi Andriani', '(+62) 339 0676 4328', 'Kpg. Jambu No. 780, Binjai 47296, Papua', 'Positive', '2022-11-11', '2022-11-21', NULL, NULL),
(20, 'Icha Suartini', '(+62) 766 0355 5424', 'Gg. Bhayangkara No. 153, Kupang 51329, Lampung', 'Dead', '2022-11-17', '2022-11-15', NULL, NULL),
(21, 'Rafid Wahyudin', '0342 3474 3434', 'Dk. Zamrud No. 459, Malang 40785, Sulbar', 'Dead', '2022-11-13', '2022-11-16', NULL, NULL),
(22, 'Jaga Maheswara S.Pd', '0870 6106 3972', 'Jln. Babadak No. 386, Ternate 20073, Maluku', 'Dead', '2022-11-09', '2022-11-12', NULL, NULL),
(23, 'Zahra Chelsea Palastri', '0638 7607 0035', 'Psr. Antapani Lama No. 880, Bandung 42663, Jabar', 'Recovered', '2022-11-12', '2022-11-09', NULL, NULL),
(24, 'Ophelia Suartini', '(+62) 665 4464 7276', 'Psr. Ronggowarsito No. 725, Administrasi Jakarta Pusat 57206, DIY', 'Recovered', '2022-11-11', '2022-11-17', NULL, NULL),
(25, 'Mila Zelda Safitri S.E.I', '(+62) 663 3469 630', 'Ds. Adisumarmo No. 946, Batu 55591, Malut', 'Positive', '2022-11-19', '2022-11-15', NULL, NULL),
(26, 'Irwan Lukman Maryadi', '0291 1229 9690', 'Kpg. Moch. Yamin No. 977, Madiun 34237, Sulbar', 'Recovered', '2022-11-15', '2022-11-13', NULL, NULL),
(27, 'Gambira Siregar', '0394 9878 7499', 'Psr. Yos Sudarso No. 965, Jambi 53422, Kalteng', 'Dead', '2022-11-10', '2022-11-09', NULL, NULL),
(28, 'Adikara Sihotang', '(+62) 21 3918 8899', 'Psr. Sudirman No. 593, Tegal 26508, Sulbar', 'Positive', '2022-11-08', '2022-11-19', NULL, NULL),
(29, 'Erik Habibi', '0212 1319 8883', 'Kpg. Samanhudi No. 377, Jayapura 94282, Kaltara', 'Dead', '2022-11-18', '2022-11-13', NULL, NULL),
(30, 'Nurul Purnawati', '0817 929 669', 'Psr. Banceng Pondok No. 468, Jayapura 48372, Sultra', 'Dead', '2022-11-11', '2022-11-09', NULL, NULL),
(31, 'Febi Restu Laksita S.Pd', '0477 5752 178', 'Dk. Bara No. 864, Bogor 28385, DKI', 'Dead', '2022-11-11', '2022-11-08', NULL, NULL),
(32, 'Rahmi Nuraini', '(+62) 966 6742 3441', 'Psr. Bah Jaya No. 968, Sukabumi 24041, Aceh', 'Dead', '2022-11-08', '2022-11-19', NULL, NULL),
(33, 'Taufan Prasetya', '(+62) 553 5208 1771', 'Ki. Krakatau No. 281, Tual 96563, Riau', 'Dead', '2022-11-11', '2022-11-10', NULL, NULL),
(34, 'Paiman Teddy Iswahyudi', '0627 1221 7303', 'Psr. Lumban Tobing No. 489, Kediri 96202, Maluku', 'Positive', '2022-11-11', '2022-11-13', NULL, NULL),
(35, 'Nilam Kani Nuraini M.Kom.', '(+62) 869 261 938', 'Jr. Supono No. 755, Samarinda 19112, Jabar', 'Positive', '2022-11-09', '2022-11-16', NULL, NULL),
(36, 'Kuncara Hardiansyah', '(+62) 452 4764 096', 'Jln. Salam No. 949, Madiun 63404, Pabar', 'Recovered', '2022-11-13', '2022-11-14', NULL, NULL),
(37, 'Tari Pratiwi', '(+62) 437 6642 5202', 'Ds. Sadang Serang No. 311, Padang 70586, Bali', 'Dead', '2022-11-10', '2022-11-15', NULL, NULL),
(38, 'Gilda Nuraini M.Farm', '022 7518 4565', 'Jln. Batako No. 951, Medan 20886, Gorontalo', 'Positive', '2022-11-12', '2022-11-08', NULL, NULL),
(39, 'Zalindra Ina Mayasari', '0803 636 766', 'Kpg. Gotong Royong No. 110, Tangerang 84296, Sulbar', 'Recovered', '2022-11-17', '2022-11-07', NULL, NULL),
(40, 'Ika Kezia Fujiati', '0444 2917 1868', 'Jr. Tambak No. 61, Administrasi Jakarta Selatan 40558, Kalsel', 'Dead', '2022-11-11', '2022-11-21', NULL, NULL),
(41, 'Kenzie Siregar S.Ked', '(+62) 844 8517 2146', 'Ki. Dr. Junjunan No. 326, Tanjung Pinang 30676, Jambi', 'Dead', '2022-11-16', '2022-11-12', NULL, NULL),
(42, 'Oliva Rika Astuti S.Gz', '0803 668 074', 'Jln. K.H. Maskur No. 925, Bandung 35073, Jabar', 'Dead', '2022-11-15', '2022-11-12', NULL, NULL),
(43, 'Lintang Widiastuti S.IP', '0559 2038 534', 'Jr. Yap Tjwan Bing No. 327, Serang 75965, Papua', 'Dead', '2022-11-19', '2022-11-16', NULL, NULL),
(44, 'Usman Kusumo M.Farm', '(+62) 971 1503 4851', 'Psr. Bakaru No. 187, Manado 90624, Kalsel', 'Positive', '2022-11-09', '2022-11-20', NULL, NULL),
(45, 'Prabu Simanjuntak S.E.I', '0609 2259 4544', 'Gg. Kiaracondong No. 321, Makassar 51128, Kalsel', 'Dead', '2022-11-21', '2022-11-19', NULL, NULL),
(46, 'Maria Mulyani S.Gz', '0993 1629 339', 'Ki. Sutarto No. 190, Bandung 72226, Bengkulu', 'Dead', '2022-11-14', '2022-11-10', NULL, NULL),
(47, 'Vanya Oktaviani', '(+62) 536 7544 362', 'Jr. Suharso No. 987, Batam 37841, Lampung', 'Positive', '2022-11-07', '2022-11-15', NULL, NULL),
(48, 'Mursinin Prayoga S.E.', '020 3909 354', 'Kpg. Bakin No. 343, Bandung 75107, Kalsel', 'Positive', '2022-11-08', '2022-11-19', NULL, NULL),
(49, 'Umi Yuliarti', '(+62) 21 7151 152', 'Gg. Wahid No. 700, Mojokerto 34760, DIY', 'Positive', '2022-11-07', '2022-11-15', NULL, NULL),
(50, 'Jamal Wacana', '0737 2275 977', 'Jln. Taman No. 268, Palangka Raya 64358, Pabar', 'Dead', '2022-11-20', '2022-11-10', NULL, NULL),
(51, 'Ajeng Rahmi Laksmiwati S.Kom', '(+62) 26 2275 291', 'Gg. Rajiman No. 818, Mojokerto 81103, Riau', 'Dead', '2022-11-12', '2022-11-08', NULL, NULL),
(52, 'Asmianto Saptono', '0991 3127 6705', 'Dk. Moch. Ramdan No. 482, Jambi 80236, Sultra', 'Dead', '2022-11-19', '2022-11-21', NULL, NULL),
(53, 'Adika Rahman Putra S.E.I', '0808 0727 164', 'Kpg. Baha No. 257, Palembang 25928, Sulbar', 'Dead', '2022-11-09', '2022-11-17', NULL, NULL),
(54, 'Zizi Uyainah S.Farm', '0291 8037 770', 'Kpg. S. Parman No. 186, Kediri 94159, Aceh', 'Positive', '2022-11-09', '2022-11-17', NULL, NULL),
(55, 'Ilsa Astuti', '(+62) 359 0717 926', 'Gg. Nangka No. 125, Langsa 31262, NTT', 'Positive', '2022-11-21', '2022-11-10', NULL, NULL),
(56, 'Cengkir Pangestu', '(+62) 646 7835 2656', 'Ki. Sunaryo No. 955, Tegal 54395, Lampung', 'Positive', '2022-11-10', '2022-11-12', NULL, NULL),
(57, 'Chandra Anggriawan', '0372 5396 0223', 'Jln. Baiduri No. 829, Administrasi Jakarta Utara 24220, Kepri', 'Positive', '2022-11-18', '2022-11-18', NULL, NULL),
(58, 'Winda Rahmi Usamah', '(+62) 319 5555 2206', 'Jln. Jend. Sudirman No. 118, Tanjungbalai 87968, Malut', 'Recovered', '2022-11-15', '2022-11-18', NULL, NULL),
(59, 'Tari Widiastuti', '(+62) 296 4330 246', 'Jr. Basudewo No. 500, Binjai 77152, Kalsel', 'Dead', '2022-11-19', '2022-11-13', NULL, NULL),
(60, 'Ika Padmasari S.IP', '(+62) 548 5949 3681', 'Ki. Eka No. 561, Tanjung Pinang 37637, Banten', 'Dead', '2022-11-18', '2022-11-20', NULL, NULL),
(61, 'Mariadi Wasita', '023 7929 2471', 'Ki. Kiaracondong No. 248, Payakumbuh 73915, Riau', 'Positive', '2022-11-16', '2022-11-18', NULL, NULL),
(62, 'Gabriella Lestari', '0924 1892 810', 'Jr. Badak No. 363, Manado 75811, Sumbar', 'Positive', '2022-11-15', '2022-11-14', NULL, NULL),
(63, 'Cinthia Widiastuti', '(+62) 783 8689 8640', 'Ki. Baranang Siang No. 847, Palopo 57197, Kalsel', 'Dead', '2022-11-19', '2022-11-08', NULL, NULL),
(64, 'Tania Puspasari', '(+62) 479 1957 1751', 'Gg. Wahidin No. 594, Cimahi 30499, NTB', 'Positive', '2022-11-15', '2022-11-11', NULL, NULL),
(65, 'Iriana Oktaviani', '(+62) 931 7996 3831', 'Jln. Dahlia No. 71, Tidore Kepulauan 96789, Sulteng', 'Positive', '2022-11-07', '2022-11-15', NULL, NULL),
(66, 'Gatot Narpati', '(+62) 646 6563 979', 'Gg. Barat No. 970, Pekanbaru 19359, Sumut', 'Dead', '2022-11-20', '2022-11-15', NULL, NULL),
(67, 'Mahesa Darsirah Mansur S.E.I', '(+62) 560 2752 501', 'Jln. Babadak No. 612, Pagar Alam 71528, Sumsel', 'Positive', '2022-11-14', '2022-11-10', NULL, NULL),
(68, 'Enteng Nugroho', '0279 5578 635', 'Dk. Bagas Pati No. 481, Padangpanjang 34352, DIY', 'Recovered', '2022-11-09', '2022-11-21', NULL, NULL),
(69, 'Halima Latika Wijayanti', '(+62) 375 3465 7676', 'Kpg. Acordion No. 607, Administrasi Jakarta Barat 56411, Papua', 'Recovered', '2022-11-13', '2022-11-08', NULL, NULL),
(70, 'Sakura Jasmin Handayani S.E.', '0484 8194 929', 'Ds. Dr. Junjunan No. 558, Bogor 66879, Gorontalo', 'Dead', '2022-11-19', '2022-11-15', NULL, NULL),
(71, 'Ibrahim Jaga Maulana M.Pd', '(+62) 766 9643 1365', 'Kpg. Baya Kali Bungur No. 372, Bandar Lampung 20215, Kaltara', 'Recovered', '2022-11-10', '2022-11-20', NULL, NULL),
(72, 'Gaiman Saptono', '0550 0607 174', 'Kpg. Uluwatu No. 250, Ambon 41937, DKI', 'Positive', '2022-11-09', '2022-11-11', NULL, NULL),
(73, 'Mursita Hidayanto', '(+62) 803 4879 4198', 'Kpg. Baha No. 36, Bekasi 61632, Jatim', 'Dead', '2022-11-17', '2022-11-12', NULL, NULL),
(74, 'Yusuf Januar S.E.', '0961 7251 587', 'Jr. Bah Jaya No. 916, Bandung 41720, DKI', 'Recovered', '2022-11-09', '2022-11-14', NULL, NULL),
(75, 'Hana Halimah S.I.Kom', '(+62) 609 6387 5371', 'Gg. Abdullah No. 422, Subulussalam 38720, Kaltara', 'Recovered', '2022-11-18', '2022-11-19', NULL, NULL),
(76, 'Hamzah Balijan Permadi S.H.', '(+62) 960 9178 3812', 'Gg. Kusmanto No. 604, Malang 46222, Sumbar', 'Recovered', '2022-11-16', '2022-11-20', NULL, NULL),
(77, 'Hesti Safitri', '(+62) 306 9941 6893', 'Jr. Sutan Syahrir No. 711, Solok 67963, Sulteng', 'Positive', '2022-11-12', '2022-11-10', NULL, NULL),
(78, 'Gabriella Puspita', '0746 9781 759', 'Jln. Bara Tambar No. 116, Sungai Penuh 12041, Aceh', 'Dead', '2022-11-18', '2022-11-15', NULL, NULL),
(79, 'Cici Astuti', '0617 6579 164', 'Kpg. Veteran No. 976, Lhokseumawe 11712, Sulbar', 'Dead', '2022-11-15', '2022-11-10', NULL, NULL),
(80, 'Uda Prasetyo', '(+62) 306 1622 556', 'Ds. Lumban Tobing No. 461, Singkawang 78617, Papua', 'Dead', '2022-11-12', '2022-11-19', NULL, NULL),
(81, 'Bakti Banawa Salahudin S.E.', '(+62) 649 2055 976', 'Dk. Bak Air No. 34, Metro 69606, Jatim', 'Recovered', '2022-11-18', '2022-11-12', NULL, NULL),
(82, 'Mahfud Najmudin S.Sos', '(+62) 607 7010 875', 'Jr. Tentara Pelajar No. 335, Bau-Bau 79182, Sumsel', 'Positive', '2022-11-15', '2022-11-16', NULL, NULL),
(83, 'Fitria Safitri', '(+62) 886 631 508', 'Kpg. Cikutra Timur No. 262, Bukittinggi 75161, Babel', 'Dead', '2022-11-19', '2022-11-15', NULL, NULL),
(84, 'Rahmi Zelaya Mandasari S.H.', '(+62) 929 9725 871', 'Ds. Banal No. 687, Pangkal Pinang 92600, Kaltara', 'Dead', '2022-11-12', '2022-11-18', NULL, NULL),
(85, 'Argono Maryadi S.Farm', '(+62) 732 1926 747', 'Ki. Tambun No. 178, Pagar Alam 66826, Sulsel', 'Dead', '2022-11-08', '2022-11-12', NULL, NULL),
(86, 'Dina Riyanti S.H.', '0686 8930 248', 'Kpg. Daan No. 171, Cilegon 53733, DIY', 'Positive', '2022-11-09', '2022-11-11', NULL, NULL),
(87, 'Eva Andriani S.Psi', '(+62) 595 5376 449', 'Ki. Suprapto No. 740, Gorontalo 34121, Kaltim', 'Dead', '2022-11-09', '2022-11-14', NULL, NULL),
(88, 'Zelda Andriani', '028 6872 5423', 'Ki. Jakarta No. 502, Pekalongan 36564, DIY', 'Recovered', '2022-11-12', '2022-11-14', NULL, NULL),
(89, 'Jasmin Wulandari', '0783 5833 154', 'Kpg. Bak Air No. 149, Depok 71759, Sumsel', 'Positive', '2022-11-17', '2022-11-11', NULL, NULL),
(90, 'Ratna Elma Mulyani S.Psi', '(+62) 779 9422 5743', 'Kpg. Monginsidi No. 945, Jayapura 89124, Lampung', 'Positive', '2022-11-16', '2022-11-07', NULL, NULL),
(91, 'Gina Permata', '0323 0364 6678', 'Jr. Cut Nyak Dien No. 148, Serang 77942, Pabar', 'Positive', '2022-11-17', '2022-11-11', NULL, NULL),
(92, 'Lembah Dabukke', '(+62) 966 6697 2603', 'Ki. K.H. Wahid Hasyim (Kopo) No. 535, Cimahi 47730, Maluku', 'Dead', '2022-11-17', '2022-11-20', NULL, NULL),
(93, 'Queen Oktaviani', '0548 0628 6688', 'Psr. Halim No. 885, Administrasi Jakarta Selatan 38031, Sulbar', 'Positive', '2022-11-07', '2022-11-09', NULL, NULL),
(94, 'Dadap Damanik S.H.', '025 8896 3302', 'Jr. Tangkuban Perahu No. 275, Padangsidempuan 65751, Jambi', 'Dead', '2022-11-09', '2022-11-19', NULL, NULL),
(95, 'Jane Amalia Pertiwi S.Pt', '(+62) 307 4425 860', 'Gg. Salak No. 996, Padangpanjang 65013, Bali', 'Dead', '2022-11-12', '2022-11-11', NULL, NULL),
(96, 'Hasan Prayoga', '0692 8749 8785', 'Gg. Barat No. 209, Solok 41544, Gorontalo', 'Recovered', '2022-11-14', '2022-11-17', NULL, NULL),
(97, 'Ibrani Sihombing', '(+62) 439 8223 266', 'Jln. Suryo No. 968, Administrasi Jakarta Utara 83675, NTT', 'Recovered', '2022-11-08', '2022-11-11', NULL, NULL),
(98, 'Heryanto Artawan Pratama', '(+62) 22 7713 977', 'Ds. Nakula No. 679, Banjarmasin 64567, Riau', 'Recovered', '2022-11-14', '2022-11-14', NULL, NULL),
(99, 'Kasiyah Mandasari', '0582 2559 7688', 'Dk. Madrasah No. 777, Administrasi Jakarta Selatan 59843, Pabar', 'Positive', '2022-11-08', '2022-11-16', NULL, NULL),
(100, 'Prasetya Wasita', '0346 4086 028', 'Jr. Thamrin No. 734, Bitung 34288, Kalsel', 'Positive', '2022-11-16', '2022-11-08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'ef64f794ca89d3244968ca0b437eee572e6bf4dba509564273cc0a5c5fac04fa', '[\"*\"]', '2022-11-14 02:30:11', NULL, '2022-11-14 02:29:03', '2022-11-14 02:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Usaamah', 'usa8bit@gmail.com', NULL, '$2y$10$YUX7upXahiNcLe2GUrBQUe3aJQSyFO0Lv3kDoSwdGuo9r9mRej3bC', NULL, '2022-11-14 02:27:51', '2022-11-14 02:27:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
