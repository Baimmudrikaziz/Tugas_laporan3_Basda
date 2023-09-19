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
-- Struktur dari tabel `perusahaanbank`
--

CREATE TABLE `perusahaanbank` (
  `no_bank` int(10) NOT NULL,
  `no_nasabah` int(10) DEFAULT NULL,
  `alamat_bank` varchar(30) DEFAULT NULL,
  `nama_pemilik_bank` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perusahaanbank`
--

INSERT INTO `perusahaanbank` (`no_bank`, `no_nasabah`, `alamat_bank`, `nama_pemilik_bank`) VALUES
(35677, 42345, 'bengkulu', 'bank bri'),
(67654, 23453, 'bengkulu', 'bank bri');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `perusahaanbank`
--
ALTER TABLE `perusahaanbank`
  ADD PRIMARY KEY (`no_bank`),
  ADD KEY `no_nasabah` (`no_nasabah`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `perusahaanbank`
--
ALTER TABLE `perusahaanbank`
  ADD CONSTRAINT `perusahaanbank_ibfk_1` FOREIGN KEY (`no_nasabah`) REFERENCES `nasabahbank` (`no_nasabah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
