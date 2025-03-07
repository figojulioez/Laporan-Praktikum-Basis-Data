-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Mar 2025 pada 15.13
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
-- Database: `praktikum_sql`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `nilai` decimal(3,2) DEFAULT NULL,
  `mata_kuliah` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `jurusan`, `nilai`, `mata_kuliah`) VALUES
('241050601', 'JULIOEZ', 'Teknologi Informasi', 1.00, 'Basis Data'),
('241050601', 'CANDITA', 'Teknologi Informasi', 1.00, 'Basis Data'),
('241050601', 'JULCAN', 'Teknik Mekratonika', 1.00, 'Robot'),
('2410506002', 'HAGA', 'Teknik Elektro', 1.00, 'Sistem Digital'),
('2410506002', 'FIGO', 'Teknik Elektro', 1.00, 'Sistem Digital'),
('2410506002', 'HAGA FIGO', 'Teknik Mekratonika', 1.00, 'Robot'),
('2410506003', 'LATU', 'Teknik Sipil', 1.00, 'Struktur Bangunan'),
('2410506003', 'PEIRI', 'Teknik Sipil', 1.00, 'Mekanika Tanah'),
('241050601', 'JULIOEZ', 'Teknologi Informasi', 3.50, 'Basis Data'),
('241050601', 'CANDITA', 'Teknologi Informasi', 3.80, 'Basis Data'),
('241050601', 'JULCAN', 'Teknik Mekratonika', 3.70, 'Robot'),
('2410506002', 'HAGA', 'Teknik Elektro', 3.60, 'Sistem Digital'),
('2410506002', 'FIGO', 'Teknik Elektro', 3.75, 'Sistem Digital'),
('2410506002', 'HAGA FIGO', 'Teknik Mekratonika', 3.85, 'Robot'),
('2410506003', 'LATU', 'Teknik Sipil', 3.40, 'Struktur Bangunan'),
('2410506003', 'PEIRI', 'Teknik Sipil', 3.60, 'Mekanika Tanah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`) VALUES
(1, 'Laptop A', 'Electronics', 1200.00),
(2, 'Smartphone B', 'Electronics', 800.00),
(3, 'Tablet C', 'Electronics', 500.00),
(4, 'Shirt D', 'Clothing', 25.00),
(5, 'Jeans E', 'Clothing', 45.00),
(6, 'Shoes F', 'Clothing', 60.00),
(7, 'Book G', 'Books', 15.00),
(8, 'Notebook H', 'Books', 10.00),
(9, 'Pen I', 'Stationery', 2.00),
(10, 'Pencil J', 'Stationery', 1.50);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
