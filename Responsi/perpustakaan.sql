-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Mar 2025 pada 08.36
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(20) DEFAULT 'Umum',
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `jurusan`, `tgl_daftar`) VALUES
('ANG00001', 'Julioez Candita', 'Teknik Informatika', '2025-03-28'),
('ANG00002', 'Candita Haga', 'Teknologi Informasi', '2025-03-28'),
('ANG00003', 'Haga Figo', 'Teknologi Informasi', '2024-03-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_2nf`
--

CREATE TABLE `anggota_2nf` (
  `id_anggota` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota_2nf`
--

INSERT INTO `anggota_2nf` (`id_anggota`, `nama`, `jurusan`) VALUES
('ANG00001', 'Julioez Candita', 'Teknik Informatika'),
('ANG00002', 'Candita Haga', 'Teknologi Informasi'),
('ANG00003', 'Haga Figo', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tahun_terbit` int(11) DEFAULT NULL CHECK (`tahun_terbit` between 1900 and 2025),
  `id_penerbit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `tahun_terbit`, `id_penerbit`) VALUES
('BKU00001', 'Kambing Jantan', 2009, 'PNB00001'),
('BKU00002', 'Your Name', 2019, 'PNB00002'),
('BKU00003', 'Laskar Pelangi', 2005, 'PNB00001'),
('BKU00004', 'Ayat-ayat cinta', 2008, 'PNB00001'),
('BKU00005', 'Attack on titan', 2009, 'PNB00002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_2nf`
--

CREATE TABLE `buku_2nf` (
  `id_buku` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_penerbit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku_2nf`
--

INSERT INTO `buku_2nf` (`id_buku`, `judul`, `id_penerbit`) VALUES
('BKU00001', 'Kambing Jantan', 'PBT00001'),
('BKU00002', 'Your Name', 'PBT00001'),
('BKU00003', 'Laskar Pelangi', 'PBT00003'),
('BKU00004', 'Ayat-ayat Cinta', 'PBT00001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_anggota` varchar(10) DEFAULT NULL,
  `id_buku` varchar(10) DEFAULT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`) VALUES
(4, 'ANG00001', 'BKU00002', '2025-03-25', '2025-03-28', 0),
(5, 'ANG00001', 'BKU00001', '2025-03-24', '2025-03-28', 0),
(6, 'ANG00001', 'BKU00004', '2025-03-24', NULL, 2000),
(7, 'ANG00002', 'BKU00002', '2025-03-03', '2025-03-06', 0),
(8, 'ANG00002', 'BKU00001', '2025-03-03', '2025-03-06', 0),
(9, 'ANG00003', 'BKU00001', '2025-03-01', '2025-03-04', 0),
(10, 'ANG00003', 'BKU00003', '2025-03-01', '2025-03-04', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_2nf`
--

CREATE TABLE `peminjaman_2nf` (
  `id_transaksi` varchar(10) NOT NULL,
  `id_anggota` varchar(10) DEFAULT NULL,
  `id_buku` varchar(10) DEFAULT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman_2nf`
--

INSERT INTO `peminjaman_2nf` (`id_transaksi`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`) VALUES
('PMJ00001', 'ANG00001', 'BKU00001', '2025-03-10', '2025-03-15', 0),
('PMJ00002', 'ANG00002', 'BKU00002', '2025-03-12', '2025-03-17', 4000),
('PMJ00003', 'ANG00003', 'BKU00004', '2025-03-14', '2025-03-18', 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(10) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`, `alamat`) VALUES
('PNB00001', 'Gagas Media', 'Perumnas 3 Kota Bekasi'),
('PNB00002', 'Penerbit Haru', 'Hokkaido Jepang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit_3nf`
--

CREATE TABLE `penerbit_3nf` (
  `id_penerbit` varchar(10) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penerbit_3nf`
--

INSERT INTO `penerbit_3nf` (`id_penerbit`, `nama_penerbit`, `alamat`) VALUES
('PBT00001', 'Gagas Media', 'Jl. Sudirman No. 10, Jakarta'),
('PBT00002', 'Penerbit Haru', 'Jl. Melati No. 23, Bandung'),
('PBT00003', 'Bentang Pustaka', 'Jl. Mawar No. 45, Yogyakarta'),
('PBT00004', 'Penerbit Basmala', 'Jl. Kenanga No. 12, Surabaya'),
('PBT00005', 'Penerbit Kodansha', 'Jl. Sakura No. 8, Tokyo, Jepang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `anggota_2nf`
--
ALTER TABLE `anggota_2nf`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_penerbit` (`id_penerbit`);

--
-- Indeks untuk tabel `buku_2nf`
--
ALTER TABLE `buku_2nf`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_penerbit` (`id_penerbit`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `peminjaman_2nf`
--
ALTER TABLE `peminjaman_2nf`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indeks untuk tabel `penerbit_3nf`
--
ALTER TABLE `penerbit_3nf`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`);

--
-- Ketidakleluasaan untuk tabel `buku_2nf`
--
ALTER TABLE `buku_2nf`
  ADD CONSTRAINT `buku_2nf_ibfk_1` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit_3nf` (`id_penerbit`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Ketidakleluasaan untuk tabel `peminjaman_2nf`
--
ALTER TABLE `peminjaman_2nf`
  ADD CONSTRAINT `peminjaman_2nf_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota_2nf` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_2nf_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku_2nf` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
