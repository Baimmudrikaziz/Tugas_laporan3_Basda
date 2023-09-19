-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2023 pada 18.22
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekeningbank`
--

CREATE TABLE `rekeningbank` (
  `no_rekening` int(10) NOT NULL,
  `no_nasabah` int(10) DEFAULT NULL,
  `no_bank` int(10) DEFAULT NULL,
  `saldo` decimal(20,2) DEFAULT NULL,
  `jenis_member` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rekeningbank`
--

INSERT INTO `rekeningbank` (`no_rekening`, `no_nasabah`, `no_bank`, `saldo`, `jenis_member`) VALUES
(23456754, 23453, 67654, 10000000.00, 'silver'),
(32256754, 42345, 35677, 20000000.00, 'gold');

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
-- Indeks untuk tabel `perusahaanbank`
--
ALTER TABLE `perusahaanbank`
  ADD PRIMARY KEY (`no_bank`),
  ADD KEY `no_nasabah` (`no_nasabah`);

--
-- Indeks untuk tabel `rekeningbank`
--
ALTER TABLE `rekeningbank`
  ADD PRIMARY KEY (`no_rekening`),
  ADD KEY `no_nasabah` (`no_nasabah`),
  ADD KEY `no_bank` (`no_bank`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nasabahbank`
--
ALTER TABLE `nasabahbank`
  MODIFY `no_nasabah` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42346;

--
-- AUTO_INCREMENT untuk tabel `rekeningbank`
--
ALTER TABLE `rekeningbank`
  MODIFY `no_rekening` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32256755;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `perusahaanbank`
--
ALTER TABLE `perusahaanbank`
  ADD CONSTRAINT `perusahaanbank_ibfk_1` FOREIGN KEY (`no_nasabah`) REFERENCES `nasabahbank` (`no_nasabah`);

--
-- Ketidakleluasaan untuk tabel `rekeningbank`
--
ALTER TABLE `rekeningbank`
  ADD CONSTRAINT `rekeningbank_ibfk_1` FOREIGN KEY (`no_nasabah`) REFERENCES `nasabahbank` (`no_nasabah`),
  ADD CONSTRAINT `rekeningbank_ibfk_2` FOREIGN KEY (`no_bank`) REFERENCES `perusahaanbank` (`no_bank`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
