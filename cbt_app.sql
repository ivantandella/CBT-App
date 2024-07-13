-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 09:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbt_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL, NULL),
(2, 'Admin2', 'admin2', NULL, NULL, NULL);

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
(5, '2021_11_14_145550_create_siswa_table', 1),
(6, '2021_11_14_151127_create_tentor_table', 1),
(7, '2021_11_14_151339_create_ujian_table', 1),
(8, '2021_11_23_105821_create_soal_table', 1),
(9, '2021_11_29_154413_create_nilai_table', 1),
(10, '2021_12_01_171916_create_admin_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` bigint(20) UNSIGNED NOT NULL,
  `id_ujian` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_ujian`, `id_siswa`, `tanggal`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-12-28 12:41:11', 100, NULL, NULL),
(2, 1, 2, '2021-12-28 12:41:11', 90, NULL, NULL),
(3, 1, 3, '2021-12-28 12:41:11', 80, NULL, NULL),
(4, 1, 4, '2021-12-28 12:41:11', 90, NULL, NULL),
(5, 1, 5, '2021-12-28 12:41:12', 100, NULL, NULL),
(6, 1, 6, '2021-12-28 12:41:12', 90, NULL, NULL),
(7, 1, 7, '2021-12-28 12:41:12', 100, NULL, NULL),
(8, 1, 8, '2021-12-28 12:41:12', 80, NULL, NULL),
(9, 1, 9, '2021-12-28 12:41:12', 80, NULL, NULL),
(10, 1, 10, '2021-12-28 12:41:12', 100, NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `username`, `nama`, `asal_sekolah`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'doni', 'Doni', 'SMAN 2', NULL, NULL, NULL),
(2, 'rizki', 'Rizki', 'SMAN 2', NULL, NULL, NULL),
(3, 'bayu', 'Bayu', 'SMAN 1', NULL, NULL, NULL),
(4, 'monica', 'Monica', 'MAN 1', NULL, NULL, NULL),
(5, 'angel', 'Angel', 'MAN 1', NULL, NULL, NULL),
(6, 'farhan', 'Farhan', 'MAN 2', NULL, NULL, NULL),
(7, 'iqbal', 'Iqbal', 'MAN 1', NULL, NULL, NULL),
(8, 'bella', 'Bella', 'MAN 2', NULL, NULL, NULL),
(9, 'nadia', 'Nadia', 'SMAN 1', NULL, NULL, NULL),
(10, 'putri', 'Putri', 'SMAN 1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` bigint(20) UNSIGNED NOT NULL,
  `id_ujian` bigint(20) UNSIGNED NOT NULL,
  `gambar_soal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi_soal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar_pil_a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pil_a` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar_pil_b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pil_b` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar_pil_c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pil_c` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar_pil_d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pil_d` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar_pil_e` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pil_e` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kunci_jawaban` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `id_ujian`, `gambar_soal`, `isi_soal`, `gambar_pil_a`, `pil_a`, `gambar_pil_b`, `pil_b`, `gambar_pil_c`, `pil_c`, `gambar_pil_d`, `pil_d`, `gambar_pil_e`, `pil_e`, `kunci_jawaban`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '1 + 1 = ...', NULL, '1', NULL, '2', NULL, '3', NULL, '4', NULL, '5', 'B', NULL, NULL),
(2, 1, NULL, '5 x 5 = ...', NULL, '21', NULL, '22', NULL, '23', NULL, '24', NULL, '25', 'E', NULL, NULL),
(3, 2, NULL, '<div>Berikut yang merupakan hewan berkaki dua adalah...</div>', NULL, '<div>Kambing</div>', NULL, '<div>Kuda</div>', NULL, '<div>Ayam</div>', NULL, '<div>Ular</div>', NULL, '<div>Ikan</div>', 'C', NULL, '2021-12-28 12:43:52'),
(4, 2, 'soal/jgWpr5mDhGukOxR9fP5huDheygrv5lkiRLyjsMUZ.png', '<div>Berikut merupakan logo fakultas...</div>', NULL, '<div>FMIPA</div>', NULL, '<div>Fasilkom-TI</div>', NULL, '<div>FKM</div>', NULL, '<div>FT</div>', NULL, '<div>FKG</div>', 'B', '2021-12-28 12:45:05', '2021-12-28 12:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `tentor`
--

CREATE TABLE `tentor` (
  `id_tentor` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tentor`
--

INSERT INTO `tentor` (`id_tentor`, `username`, `nama`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'budi', 'Budi', NULL, NULL, NULL),
(2, 'siti', 'Siti', NULL, NULL, NULL),
(3, 'andi', 'Andi', NULL, NULL, NULL),
(4, 'susilo', 'Susilo', NULL, NULL, NULL),
(5, 'bunga', 'Bunga', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` bigint(20) UNSIGNED NOT NULL,
  `id_tentor` bigint(20) UNSIGNED NOT NULL,
  `nama_ujian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_soal` int(11) NOT NULL DEFAULT 0,
  `waktu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `id_tentor`, `nama_ujian`, `slug`, `token`, `jumlah_soal`, `waktu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Try Out 01', 'try-out-01', 'ABCD', 2, 120, NULL, NULL, NULL),
(2, 3, 'Try Out 02', 'try-out-02', 'EFGH', 2, 60, NULL, '2021-12-28 12:45:05', NULL),
(3, 5, 'Try Out 03', 'try-out-03', 'QWERTY', 0, 90, NULL, NULL, NULL),
(4, 3, 'dcds', 'dcds', 'sddsf', 0, 12, '2022-02-01 06:04:26', '2022-02-01 06:04:32', '2022-02-01 06:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `no_hp`, `role`, `foto`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Admin', 'admin@gmail.com', '$2y$10$z5FT0EjInmCrpGTGoiV/Xe/lnn6l4FDQmvL516F82fKJvBayAY4qa', '08123456789', 'admin', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'admin2', 'Admin2', 'admin2@gmail.com', '$2y$10$867qbTz9z0skxpbtVNfd.e/sVN7lSSCTmS8iPRqCWBt/AAUuOcD46', '08123456789', 'admin', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'budi', 'Budi', 'budi@gmail.com', '$2y$10$uPoVyZGowGMZOjnq1K2/euS.lk6imzeH6daCzaLIZ21MzQ8F//qyi', '08123456789', 'tentor', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'siti', 'Siti', 'siti@gmail.com', '$2y$10$zW2yaJ1pr0mC1WW.IZiUe.DByXf3p6ab9WxQ8w2h75dKGUFoNLbtC', '08123456789', 'tentor', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'andi', 'Andi', 'andi@gmail.com', '$2y$10$UtLtdKbBp2ncDUeohuUnRe5Q8Hz8zWL61DybE7PIHnV40da2atb9q', '08123456789', 'tentor', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'susilo', 'Susilo', 'susilo@gmail.com', '$2y$10$rFwB2B7O6ZO.7DesRrlCpus.QZJUDyqeG6VNbvWOqE8PXXMwuJrDy', '08123456789', 'tentor', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'bunga', 'Bunga', 'bunga@gmail.com', '$2y$10$OWdGNiMihOc48oSdRCR2oesFQKqsGkGtSEdAmJFelJGn7NnxZpxHy', '08123456789', 'tentor', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'doni', 'Doni', 'doni@gmail.com', '$2y$10$nRwIh/GeI2A2A0QLE.X5XOb/OWL5f/0haEEI83VsNx8dUt5h/pBFC', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'rizki', 'Rizki', 'rizki@gmail.com', '$2y$10$dqs4OJ.UKrc13fmx1JNG.OmfZo3lJpU5pOlbE9f218S77ZWE27Uba', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'bayu', 'Bayu', 'bayu@gmail.com', '$2y$10$cA82ewJa7RiSPbcBF0UbB.AiPKiaX.Ms.ieCSrcZIsUAKStvkDG/W', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'monica', 'Monica', 'monica@gmail.com', '$2y$10$3cWYme30jtiCyY65xXvmteT4UgU.pvji.UY6MeXxdIAU7PgwAZahK', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'angel', 'Angel', 'angel@gmail.com', '$2y$10$u41SWksDQUjYzg2NgVeeyuPHnOJtqQtr6eU3XdUANcmJSkNJzkfpW', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'farhan', 'Farhan', 'farhan@gmail.com', '$2y$10$R2B8bA5Gl4JkNYktOmdlxeTXuDRRer25om6mL8tvXSuDxekZqQfFG', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'iqbal', 'Iqbal', 'iqbal@gmail.com', '$2y$10$2l/HgdNEyLJcuOrmNsL/2uqFO/ZpMwgS/ULAPEw1L77EPemCKiKZG', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'bella', 'Bella', 'bella@gmail.com', '$2y$10$tZjAOY5Jrus2kkpAT2/PCuTHNDdY4JBSfDSPr4KrOzAyyyyETIeaa', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'nadia', 'Nadia', 'nadia@gmail.com', '$2y$10$uF.l16BETQrQ2J.MkWjyieDH70JAwwxLiDDF00JVYAJtW5qX.kqBa', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'putri', 'Putri', 'putri@gmail.com', '$2y$10$c9xMts7rNSFZ2hXfuUNRw.t.Da/lyigHa9CTK/28zC7SKUVlR3c2W', '08123456789', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

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
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `nilai_id_ujian_foreign` (`id_ujian`),
  ADD KEY `nilai_id_siswa_foreign` (`id_siswa`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `soal_id_ujian_foreign` (`id_ujian`);

--
-- Indexes for table `tentor`
--
ALTER TABLE `tentor`
  ADD PRIMARY KEY (`id_tentor`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`),
  ADD KEY `ujian_id_tentor_foreign` (`id_tentor`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tentor`
--
ALTER TABLE `tentor`
  MODIFY `id_tentor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `nilai_id_ujian_foreign` FOREIGN KEY (`id_ujian`) REFERENCES `ujian` (`id_ujian`);

--
-- Constraints for table `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `soal_id_ujian_foreign` FOREIGN KEY (`id_ujian`) REFERENCES `ujian` (`id_ujian`);

--
-- Constraints for table `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `ujian_id_tentor_foreign` FOREIGN KEY (`id_tentor`) REFERENCES `tentor` (`id_tentor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
