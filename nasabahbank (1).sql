-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2023 pada 18.23
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
-- Database: `nasabah_bank`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `nasabahbank`
--

CREATE TABLE `nasabahbank` (
  `no_nasabah` int(10) NOT NULL,
  `ktp` varchar(20) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `no_handphone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nasabahbank`
--

INSERT INTO `nasabahbank` (`no_nasabah`, `ktp`, `nama`, `jenis_kelamin`, `alamat`, `email`, `no_handphone`) VALUES
(23453, '234567345612324', 'Bento', 'L', 'portugal', 'bento23@gmail.com', '085276254364'),
(42345, '134497544312274', 'tiara', 'P', 'brazil', 'tiara24@gmail.com', '085716408956');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `nasabahbank`
--
ALTER TABLE `nasabahbank`
  ADD PRIMARY KEY (`no_nasabah`),
  ADD UNIQUE KEY `ktp` (`ktp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nasabahbank`
--
ALTER TABLE `nasabahbank`
  MODIFY `no_nasabah` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42346;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
