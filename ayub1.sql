-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2022 pada 01.48
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayub1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `subagiya`
--

CREATE TABLE `subagiya` (
  `id_barang` int(11) NOT NULL,
  `barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subagiya`
--

INSERT INTO `subagiya` (`id_barang`, `barang`) VALUES
(1, 'Redmi Note 7'),
(2, 'Samsung M20'),
(3, 'Realme 3'),
(4, 'Iphone X');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subagiya1`
--

CREATE TABLE `subagiya1` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_penjualan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subagiya1`
--

INSERT INTO `subagiya1` (`id_penjualan`, `id_barang`, `jumlah`, `tgl_penjualan`) VALUES
(1, 1, 5, '2019-01-11'),
(2, 3, 3, '2019-01-04'),
(3, 2, 4, '2019-02-11'),
(4, 2, 3, '2019-03-09'),
(5, 3, 4, '2019-04-10'),
(6, 4, 1, '2019-05-11'),
(7, 1, 2, '2019-05-05'),
(8, 4, 7, '2019-06-09'),
(9, 3, 2, '2019-06-11'),
(10, 2, 5, '2019-07-11'),
(11, 1, 2, '2019-07-12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `subagiya`
--
ALTER TABLE `subagiya`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `subagiya1`
--
ALTER TABLE `subagiya1`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `subagiya`
--
ALTER TABLE `subagiya`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `subagiya1`
--
ALTER TABLE `subagiya1`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
