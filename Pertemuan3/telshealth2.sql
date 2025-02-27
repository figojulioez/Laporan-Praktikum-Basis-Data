-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2025 pada 15.46
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telshealth2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `hb`
--

CREATE TABLE `hb` (
  `id_hb` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `hb` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hb`
--

INSERT INTO `hb` (`id_hb`, `id_user`, `id_kelas`, `tgl`, `hb`, `status`) VALUES
(2, 15, 9, '2023-06-21', '13', 'Normal'),
(3, 23, 9, '2023-06-22', '11', 'Normal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `tgl` varchar(20) NOT NULL,
  `kelas` varchar(35) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `count_kesehatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `tgl`, `kelas`, `jurusan`, `count_kesehatan`) VALUES
(1, '08/06/2023', 'X RPL 1', 'RPL', 0),
(2, '08/06/2023', 'X RPL 2', 'RPL', 0),
(3, '08/06/2023', 'X RPL 3', 'RPL', 0),
(4, '08/06/2023', 'X DKV 1', 'MM', 0),
(5, '08/06/2023', 'X DKV 2', 'MM', 0),
(6, '08/06/2023', 'X DKV 3', 'MM', 0),
(7, '08/06/2023', 'X TKJ 1', 'TKJ', 0),
(8, '08/06/2023', 'X TKJ 2', 'TKJ', 0),
(9, '08/06/2023', 'X TKJ 3', 'TKJ', 2),
(10, '08/06/2023', 'X TELCO', 'TELCO', 0),
(11, '08/06/2023', 'XI RPL 1', 'RPL', 0),
(12, '08/06/2023', 'XI RPL 2', 'RPL', 0),
(13, '08/06/2023', 'XI RPL 3', 'RPL', 0),
(14, '08/06/2023', 'XI MM 1', 'MM', 0),
(15, '08/06/2023', 'XI MM 2', 'MM', 0),
(16, '08/06/2023', 'XI MM 3', 'MM', 0),
(17, '08/06/2023', 'XI TKJ 1', 'TKJ', 0),
(18, '08/06/2023', 'XI TKJ 2', 'TKJ', 0),
(19, '08/06/2023', 'XI TKJ 3', 'TKJ', 0),
(20, '08/06/2023', 'XI TELCO', 'TELCO', 0),
(21, '08/06/2023', 'XII RPL 1', 'RPL', 0),
(22, '08/06/2023', 'XII RPL 2', 'RPL', 0),
(23, '08/06/2023', 'XII MM 1', 'MM', 0),
(24, '08/06/2023', 'XII MM 2', 'MM', 0),
(25, '08/06/2023', 'XII MM 3', 'MM', 0),
(26, '08/06/2023', 'XII TKJ 1', 'TKJ', 0),
(27, '08/06/2023', 'XII TKJ 2', 'TKJ', 0),
(28, '08/06/2023', 'XII TKJ 3', 'TKJ', 0),
(29, '08/06/2023', 'XII TELCO', 'TELCO', 0),
(30, '2025-12-12', 'XI', 'Teknologi Informasi', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kesehatan`
--

CREATE TABLE `kesehatan` (
  `id_kesehatan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `bb` varchar(30) NOT NULL,
  `tb` varchar(30) NOT NULL,
  `sistol` varchar(30) NOT NULL,
  `diastol` varchar(30) NOT NULL,
  `status_darah` varchar(30) NOT NULL,
  `imt` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kesehatan`
--

INSERT INTO `kesehatan` (`id_kesehatan`, `id_user`, `id_kelas`, `tgl`, `bb`, `tb`, `sistol`, `diastol`, `status_darah`, `imt`, `status`) VALUES
(39, 11, 9, '2023-06-21', '60', '170', '130', '60', 'Kesalahan input data', '20.8', 'Normal'),
(40, 4, 9, '2023-06-21', '70', '173', '130', '80', 'Tinggi', '23.4', 'Normal'),
(41, 9, 9, '2023-06-21', '60', '170', '95', '67', 'Normal', '20.8', 'Normal'),
(42, 15, 9, '2023-06-21', '62', '170', '130', '80', 'Tinggi', '21.5', 'Normal'),
(44, 8, 9, '2023-06-22', '65', '170', '95', '103', 'Tekanan Darah Tinggi', '22.5', 'Normal'),
(45, 27, 9, '2023-06-22', '80', '177', '97', '64', 'Rendah', '25.6', 'Kelebihan berat badan'),
(46, 25, 9, '2023-06-22', '80', '169', '98', '70', 'Normal', '28.0', 'Kelebihan berat badan'),
(47, 23, 9, '2023-06-22', '62', '170', '130', '80', 'Tinggi', '21.5', 'Normal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `tgl` varchar(20) NOT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `user` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `level` enum('PMR','Siswa','Guru Olahraga') NOT NULL,
  `jk` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `id_kelas`, `tgl`, `nis`, `user`, `pwd`, `nama`, `level`, `jk`) VALUES
(1, NULL, '08/06/2023 11:19:37', '2410506001', 'admin', '12345', 'Administrator', 'PMR', 'L'),
(2, 9, '13/06/2023 19:08:15', '222310234', 'a.yulia.sna', '222310234', 'A.YULIA SETIA NUR ABADI', 'Siswa', 'P'),
(3, 9, '13/06/2023 19:08:15', '222310235', 'abiel', '222310235', 'ABIEL KUSUMA PUTRA RAMADHAN ', 'Siswa', 'L'),
(4, 9, '13/06/2023 19:08:15', '222310236', 'afazri', '222310236', 'AHMAD FAZRI SETIAWAN', 'Siswa', 'L'),
(5, 9, '13/06/2023 19:08:15', '222310237', 'aisyah', '222310237', 'AISYAH ', 'Siswa', 'P'),
(6, 9, '13/06/2023 19:08:15', '222310238', 'alfayudha', '222310238', 'ALFA YUDHA TRI VIDHIYANSYAH', 'Siswa', 'L'),
(7, 9, '13/06/2023 19:08:15', '222310239', 'amare', '222310239', 'AMARE TRYPUTRA MUHARAM', 'Siswa', 'L'),
(8, 9, '13/06/2023 19:08:15', '222310240', 'angga', '222310240', 'ANGGA PRASETIYO', 'Siswa', 'L'),
(9, 9, '13/06/2023 19:08:15', '222310241', 'aulia.aa', '222310241', 'AULIA ABDUL AZIS', 'Siswa', 'L'),
(10, 9, '13/06/2023 19:08:15', '222310242', 'damar.af', '222310242', 'DAMAR ABDI FAEYZA', 'Siswa', 'L'),
(11, 9, '13/06/2023 19:08:15', '222310243', 'dian.ak', '222310243', 'DIAN AKHRAS KURNIA', 'Siswa', 'P'),
(12, 9, '13/06/2023 19:08:15', '222310244', 'fakhri.my', '222310244', 'FAKHRI MULYANA YUSUF', 'Siswa', 'L'),
(13, 9, '13/06/2023 19:08:15', '222310245', 'fahmi.m', '222310245', 'FAHMI MUHAIMIN ', 'Siswa', 'L'),
(14, 9, '13/06/2023 19:08:15', '222310246', 'fatih.th', '222310246', 'FATIH TRI HARJUANDI', 'Siswa', 'L'),
(15, 9, '13/06/2023 19:08:15', '222310247', 'hikmah.na', '222310247', 'HIKMAH NUR AISYAH', 'Siswa', 'P'),
(16, 9, '13/06/2023 19:08:15', '222310248', 'm.zulqornain', '222310248', 'MOHAMMAD ZUL QORNAIN', 'Siswa', 'L'),
(17, 9, '13/06/2023 19:08:15', '222310249', 'm.fathir.a', '222310249', 'MUHAMAD FATHIR ARLIANSYAH', 'Siswa', 'L'),
(18, 9, '13/06/2023 19:08:15', '222310250', 'm.aryowibowo', '222310250', 'MUHAMMAD ARYO WIBOWO ', 'Siswa', 'L'),
(19, 9, '13/06/2023 19:08:15', '222310251', 'm.daffaalkindi', '222310251', 'MUHAMMAD DAFFA ALKINDI', 'Siswa', 'L'),
(20, 9, '13/06/2023 19:08:15', '222310252', 'm.farras.azhim', '222310252', 'MUHAMMAD FARRAS HAZIM ', 'Siswa', 'L'),
(21, 9, '13/06/2023 19:08:15', '222310253', 'm.hafidzh.firdaus', '222310253', 'MUHAMMAD HAFIZH FIRDAUS', 'Siswa', 'L'),
(22, 9, '13/06/2023 19:08:15', '222310254', 'm.yazid', '222310254', 'MUHAMMAD YAZID MAULANA YUSUF', 'Siswa', 'L'),
(23, 9, '13/06/2023 19:08:15', '222310255', 'n.noviyanti', '222310255', 'NAFISA NOVIYANTI', 'Siswa', 'P'),
(24, 9, '13/06/2023 19:08:15', '222310256', 'n.adiraiano', '222310256', 'NAUFAL ADIRAINO', 'Siswa', 'L'),
(25, 9, '13/06/2023 19:08:15', '222310257', 'qaish', '222310257', 'QAISH ABU BAKAR AS-SIDIQ', 'Siswa', 'L'),
(26, 9, '13/06/2023 19:08:15', '222310258', 'r.danish', '222310258', 'RAFFANDI DANISH WIDIYATNA', 'Siswa', 'L'),
(27, 9, '13/06/2023 19:08:15', '222310259', 'randy.aa', '222310259', 'RANDY AHMAD ALIFI', 'Siswa', 'L'),
(28, 9, '13/06/2023 19:08:15', '222310260', 'razwa.m', '222310260', 'RAZWA MAWLA AL-RAFFI', 'Siswa', 'L'),
(29, 9, '13/06/2023 19:08:15', '222310261', 'rizki.a', '222310261', 'RIZKI ANUGRAH BUCHORI', 'Siswa', 'L'),
(30, 9, '13/06/2023 19:08:15', '222310262', 'shafa.n', '222310262', 'SHAFA NAILAH HUTAJULU', 'Siswa', 'P'),
(32, 22, '14/06/2023 22:19:44', '202110050', 'pakiw', 'pakiw', 'Rifki', 'Siswa', 'L'),
(33, 22, '15/06/2023 08:34:41', '202110042', 'farizi', '12345', 'Farizi', 'Siswa', 'L'),
(34, 21, '22/06/2023 10:20:36', '1829323', 'dadung', '123', 'DADUNG', 'Siswa', 'L'),
(35, 21, '22/06/2023 10:20:36', '18298394', 'fito', '123', 'FITO', 'Siswa', 'L'),
(36, 21, '22/06/2023 10:20:36', '18298390', 'azka', '123', 'AZKA', 'Siswa', 'P'),
(37, 21, '22/06/2023 10:20:36', '18298396', 'bintang', '123', 'BINTANG', 'Siswa', 'L'),
(38, 21, '22/06/2023 10:20:36', '18298395', 'irgan', '123', 'IRGAN', 'Siswa', 'L');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hb`
--
ALTER TABLE `hb`
  ADD PRIMARY KEY (`id_hb`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kesehatan`
--
ALTER TABLE `kesehatan`
  ADD PRIMARY KEY (`id_kesehatan`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hb`
--
ALTER TABLE `hb`
  MODIFY `id_hb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `kesehatan`
--
ALTER TABLE `kesehatan`
  MODIFY `id_kesehatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
