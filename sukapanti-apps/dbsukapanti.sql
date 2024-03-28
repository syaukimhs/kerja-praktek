-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 02:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsukapanti`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_21_011632_create_usulanfisiks_table', 1),
(6, '2024_03_21_013335_create_usulanbelanjamodals_table', 1),
(7, '2024_03_21_013903_create_usulaninovasis_table', 1),
(8, '2024_03_21_014211_create_tbdataperencanaans_table', 1),
(9, '2024_03_21_014453_create_tbdatamonitorings_table', 1),
(10, '2024_03_21_014627_create_tbmoduls_table', 1),
(11, '2024_03_21_014754_create_tbmateris_table', 1),
(12, '2014_10_12_000000_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbdatamonitorings`
--

CREATE TABLE `tbdatamonitorings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbdataperencanaans`
--

CREATE TABLE `tbdataperencanaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbmateris`
--

CREATE TABLE `tbmateris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbmoduls`
--

CREATE TABLE `tbmoduls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(5, 'admin', 'admin', '$2y$10$/i3YXjZPnRFZ62G4xRln4.ginsiYYEDqM9GyJqcwr4fCIXtxZKKGq', '2024-03-26 19:15:38', '2024-03-26 19:15:38'),
(6, 'PPSPGOT Mardi Utomo', 'ppspgot.mardiutomo', '$2y$10$tJ1/vtiOwBfl/fg4fvZeA.u3eKU3y4I7e8FE9oJL7Ms1ceEgON4j6', '2024-03-26 19:17:12', '2024-03-26 19:17:12'),
(7, 'PPSA Mandiri', 'ppsa.mandiri', '$2y$10$8gAKM/xPeC/n7RmA8Skfy.MnGlGhguhyBb/7yrbZpcGyjUZ7BcBpu', '2024-03-26 19:17:59', '2024-03-26 19:17:59'),
(8, 'PPSA  Wira Adhi Karya', 'ppsa.wiraadhikarya', '$2y$10$ragAuBvyaakjltCpBSdCjOHoZnPnRbtGdTiILK47Cf17ZNkAHXUsG', '2024-03-26 19:18:49', '2024-03-26 19:18:49'),
(9, 'PPSDM Ngudi Rahayu', 'ppsdm.ngudirahayu', '$2y$10$RhatMUncwetQobRH8eurLenhp7iCbXgLrvY/spd1qghaTDG1H5Xpe', '2024-03-26 19:19:26', '2024-03-26 19:19:26'),
(10, 'PPSLU Cepiring', 'ppslu.cepiring', '$2y$10$ZHOWWBul8pYb7C/.waHdr.u.qEQjRIxP70VNwYi0MT4J2G4OMcA5S', '2024-03-26 19:20:08', '2024-03-26 19:20:08'),
(11, 'PPSLU Turusgede', 'ppslu.turusgede', '$2y$10$nzcWStQL2Up.NdhuP38tKOOM6wPsftgAtFcgyAVv/BKzfkQ8uFi/e', '2024-03-26 19:20:51', '2024-03-26 19:20:51'),
(12, 'PPSDM Pangrukti Mulyo', 'ppsdm.pangruktimulyo', '$2y$10$vhmfwlOU4ZINTPF1AJZsweWLIpqr4RwVGqrguRyFPqZMwO0MfSF9i', '2024-03-26 19:21:43', '2024-03-26 19:21:43'),
(13, 'PPSDM Pendowo', 'ppsdm.pendowo', '$2y$10$jfaUgc7yU/ePzZ/weNC85.C69TO0G950gUDoIOUQNVZQ5U8Z6SEwG', '2024-03-26 19:22:22', '2024-03-26 19:22:22'),
(14, 'PPSLU Potroyudan', 'ppslu.potroyudan', '$2y$10$kKnBrQno1evPGP5msB9cDuLDDvfnGn.5jwgeWPE.ywrFb8oUDNAWC', '2024-03-26 19:22:53', '2024-03-26 19:22:53'),
(15, 'PPSW Wanodyatama', 'ppsw.wanodyatama', '$2y$10$wHl5QkWcRqyaL1bmyNltxejqkIOb3F9wfO7lWm2vsz44x6zc1Pjee', '2024-03-26 19:23:42', '2024-03-26 19:23:42'),
(16, 'PPSA Taruna Yodha', 'ppsa.tarunayodha', '$2y$10$MKGhNuzz27aGXwVS1gMh3uw1T7gsjaC2.tjPDNpygJdml4J4sNPVK', '2024-03-26 19:24:14', '2024-03-26 19:24:14'),
(17, 'PPSA Dharma Putera', 'ppsa.dharmaputera', '$2y$10$ugaLPy.gjzTlYhJ0kiN17e/7dqsIkO4uKGxylV1a6Zr0Lm//k3hd6', '2024-03-26 19:25:03', '2024-03-26 19:25:03'),
(18, 'PPSLU Adi Yuswo', 'ppslu.adiyuswo', '$2y$10$dvdVpVcUn3Sng0MFqaIt7OiiuRCqn1Xx4MxaXWzLBQHvfGc77TmcW', '2024-03-26 19:25:58', '2024-03-26 19:25:58'),
(19, 'PPSLU Dewanata', 'ppslu.dewanata', '$2y$10$8dja8xVHHmPU/4jCEPw2Re5ll5BT0UtDOL7bPUswWGmujcTmbOgpW', '2024-03-26 19:26:34', '2024-03-26 19:26:34'),
(20, 'PPSDI Raharjo', 'ppsdi.raharjo', '$2y$10$t5aPK.jeJaXbCgNw/w/oyOGNxIPbfyvU1WAs.O48nT.2RVh.PU5Aq', '2024-03-26 19:28:56', '2024-03-26 19:28:56'),
(21, 'PPSDM Samekto Karti', 'ppsdm.samektokarti', '$2y$10$.kW0BtRXj0sphHpnfEni6e3Wjxwcsaqge66lr4hIACq9FdxuYKKfy', '2024-03-26 19:29:42', '2024-03-26 19:29:42'),
(22, 'PPSLU Bisma Upakara', 'ppslu.bismaupakara', '$2y$10$.V2cr9xjgpGlLMqNRMfj6.PVUx0XVZpsueF9mxC2zfrybv9i7LcnK', '2024-03-26 19:30:16', '2024-03-26 19:30:16'),
(23, 'PPSLU Bojong Bata', 'ppslu.bojongbata', '$2y$10$slSnJhenA37o1P6J5EAQEOe2TrVYOXuEbThf3MoLBmSFrmwZpwc42', '2024-03-26 19:30:56', '2024-03-26 19:30:56'),
(24, 'PPSDM Penganthi', 'ppsdm.penganthi', '$2y$10$jJ0HhTx/4/3AEaOZDP7w0OvId7Sr9so/knyya8l.rJTxK47pcFL26', '2024-03-26 19:31:57', '2024-03-26 19:31:57'),
(25, 'PPSPMKS Margo Widodo', 'ppspmks.margowidodo', '$2y$10$nlnMPKQkOEaSVevRPbmNwet7tIjr2auzDCPQMrk.ChiBUr0u/mZWG', '2024-03-26 19:33:06', '2024-03-26 19:33:06'),
(26, 'PPSA Kasih Mesra', 'ppsa.kasihmesra', '$2y$10$E6.ca5sVRb0IR8RShtkazeewEvbdVkacvNKhPNVD31GzlsMt0xq9y', '2024-03-26 19:33:42', '2024-03-26 19:33:42'),
(27, 'PPSA Suko Mulyo', 'ppsa.sukomulyo', '$2y$10$CAXWPo9VGSPLLErIJr1Eq.M6LO9wvRsnybpH1pYO39KHtN3V0Fga.', '2024-03-26 19:34:43', '2024-03-26 19:34:43'),
(28, 'PPSA Pamardi Utomo', 'ppsa.pamardiutomo', '$2y$10$9LlH4caciAWVrRYBgf2GueanERaFIlKXvhh.kpsssVNscp8qG73pu', '2024-03-26 19:35:16', '2024-03-26 19:35:16'),
(29, 'PPSA Worowiloso', 'ppsa.worowiloso', '$2y$10$fjzj5TPThY4brY1H/9BJxeFk1h6Y4DJajy9gYmiLRWPvyaJifvXye', '2024-03-26 19:35:55', '2024-03-26 19:35:55'),
(30, 'PPSA Kumuda Putera Puteri', 'ppsa.kumudaputeraputeri', '$2y$10$ubLmb4iBdr/9L5xaG3i1R.V8HK4T4Gt2IyMGv7of8AY1q8DP6bI8a', '2024-03-26 19:36:32', '2024-03-26 19:36:32'),
(33, 'PPSLLU Sudagaran', 'ppslu.sudagaran', '$2y$10$ZZKue2A3Qawb5cBNokkMIedc1tM3PHOc5QJcDiWuSEKdm1ar/ANrC', '2024-03-26 19:39:18', '2024-03-26 19:39:18'),
(34, 'PPSA Tawangmangu', 'ppsa.tawangmangu', '$2y$10$rtVdr8xIsKdZ7J2b4ADPueFdPpPbaoByLuk12HOAjNaQiicYQCMpG', '2024-03-26 19:40:08', '2024-03-26 19:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `usulanbelanjamodals`
--

CREATE TABLE `usulanbelanjamodals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namaunit` varchar(255) NOT NULL,
  `usulan` varchar(255) NOT NULL,
  `volume` varchar(255) NOT NULL,
  `peruntukan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usulanfisiks`
--

CREATE TABLE `usulanfisiks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namaunit` varchar(255) NOT NULL,
  `usulanrehab` varchar(255) NOT NULL,
  `volume` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usulanfisiks`
--

INSERT INTO `usulanfisiks` (`id`, `namaunit`, `usulanrehab`, `volume`, `file`, `created_at`, `updated_at`) VALUES
(3, 'PPSPGOT Mardiutomo', 'rehab gedung C', '90m', 'Pengumuman Libur dan Cuti Bersama Hari Raya Idul F_240325_163053.pdf', '2024-03-26 18:56:13', '2024-03-26 18:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `usulaninovasis`
--

CREATE TABLE `usulaninovasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namapanti` varchar(255) NOT NULL,
  `namainovasi` varchar(255) NOT NULL,
  `paguanggaran` bigint(20) NOT NULL,
  `tahunpelaksanaan` bigint(20) NOT NULL,
  `latarbelakang` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `deskripsiinovasi` varchar(255) NOT NULL,
  `proposal` varchar(255) NOT NULL,
  `rab` varchar(255) NOT NULL,
  `tanggalusulan` date NOT NULL,
  `catatankeuangan` varchar(255) NOT NULL,
  `statususulan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usulaninovasis`
--

INSERT INTO `usulaninovasis` (`id`, `namapanti`, `namainovasi`, `paguanggaran`, `tahunpelaksanaan`, `latarbelakang`, `tujuan`, `deskripsiinovasi`, `proposal`, `rab`, `tanggalusulan`, `catatankeuangan`, `statususulan`, `created_at`, `updated_at`) VALUES
(1, 'PPSPGOT Mardiutomo', 'inovasi rehab gedung serba guna', 20000000, 2024, 'gedung sudah sangat terbengkalai dan perlu di rehab ulang', 'tujuan dari rehab tersebut yaitu untuk mengaktifkan kembali gedung tersebut', 'sebagai berikut', 'Pengumuman Libur dan Cuti Bersama Hari Raya Idul F_240325_163053.pdf', 'Pengumuman Libur dan Cuti Bersama Hari Raya Idul F_240325_163053.pdf', '2024-03-20', 'Pengumuman Libur dan Cuti Bersama Hari Raya Idul F_240325_163053.pdf', 'baru mengusulkan', '2024-03-26 19:00:27', '2024-03-26 19:00:27');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbdatamonitorings`
--
ALTER TABLE `tbdatamonitorings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbdataperencanaans`
--
ALTER TABLE `tbdataperencanaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbmateris`
--
ALTER TABLE `tbmateris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbmoduls`
--
ALTER TABLE `tbmoduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `usulanbelanjamodals`
--
ALTER TABLE `usulanbelanjamodals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usulanfisiks`
--
ALTER TABLE `usulanfisiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usulaninovasis`
--
ALTER TABLE `usulaninovasis`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbdatamonitorings`
--
ALTER TABLE `tbdatamonitorings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbdataperencanaans`
--
ALTER TABLE `tbdataperencanaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbmateris`
--
ALTER TABLE `tbmateris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbmoduls`
--
ALTER TABLE `tbmoduls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `usulanbelanjamodals`
--
ALTER TABLE `usulanbelanjamodals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `usulanfisiks`
--
ALTER TABLE `usulanfisiks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usulaninovasis`
--
ALTER TABLE `usulaninovasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
