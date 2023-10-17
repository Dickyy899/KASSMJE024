-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2023 at 06:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uang_kas`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan_pembayaran`
--

CREATE TABLE `bulan_pembayaran` (
  `id_bulan_pembayaran` int(11) NOT NULL,
  `nama_bulan` enum('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember') NOT NULL,
  `tahun` int(4) NOT NULL,
  `pembayaran_perminggu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bulan_pembayaran`
--

INSERT INTO `bulan_pembayaran` (`id_bulan_pembayaran`, `nama_bulan`, `tahun`, `pembayaran_perminggu`) VALUES
(8, 'oktober', 2023, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'DICKY HADI PRATAMA'),
(4, 'JIHAN RATNA FAHIRA');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_uang_kas` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id_riwayat_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `jenis_kelamin`, `no_telepon`, `email`) VALUES
(10, 'AMELIA WULANDARI', 'wanita', '', ''),
(11, 'AULIA ZELLINA PUTRI', 'wanita', '', ''),
(12, 'DARU AFANDI', 'pria', '', ''),
(13, 'DENI FIRMANSYAH', 'pria', '', ''),
(14, 'DENI WIBAWA', 'pria', '', ''),
(15, 'DEO RESTA PUTRA', 'pria', '', ''),
(16, 'DESSY AINUL FITRI', 'wanita', '', ''),
(17, 'DICKY HADI PRATAMA', 'pria', '', ''),
(18, 'DWI PUTRI NOVIANTI', 'wanita', '', ''),
(19, 'ELFRIDA JELITA', 'wanita', '', ''),
(20, 'FIRDA NUR HALIZAH', 'wanita', '', ''),
(21, 'GILANG SURYA ADI', 'pria', '', ''),
(22, 'HAMIDAH SARI ANGGI NASUTION', 'wanita', '', ''),
(23, 'HANAN SORAYA', 'wanita', '', ''),
(24, 'HESTI DWI LESTARI', 'wanita', '', ''),
(25, 'JIHAN RATNA FAHIRA', 'wanita', '', ''),
(26, 'JUMADI ARIF', 'wanita', '', ''),
(27, 'M. ANANG', 'pria', '', ''),
(28, 'MOCHAMAD HENDRO HARDIANTO', 'pria', '', ''),
(29, 'MOHAMAD ZAKI FADILAH', 'pria', '', ''),
(30, 'MUHAMAD ARDIAN', 'pria', '', ''),
(31, 'MUHAMAD DEDE YUSUF', 'pria', '', ''),
(32, 'MUHAMAD LUTHFI DWI NUR SAPUTRO', 'pria', '', ''),
(33, 'NATASHA AMARTIA', 'wanita', '', ''),
(34, 'NAUFAL IBNU AFAN', 'pria', '', ''),
(35, 'NAZWA FATHI REDZA ALFAROBI', 'wanita', '', ''),
(36, 'PRISILIA', 'wanita', '', ''),
(37, 'PUTRI NURHALIZA', 'wanita', '', ''),
(38, 'RIA SELVIANA', 'wanita', '', ''),
(39, 'SABRINA', 'wanita', '', ''),
(40, 'SHANDY EKA PRIATNA', 'pria', '', ''),
(41, 'SITI NURHALIZA', 'wanita', '', ''),
(42, 'TITO PANGESTU', 'pria', '', ''),
(43, 'TODIYAN PERI', 'pria', '', ''),
(44, 'YUNITA INDAH PERMATASARI', 'wanita', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id_uang_kas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_bulan_pembayaran` int(11) NOT NULL,
  `minggu_ke_1` int(11) DEFAULT NULL,
  `minggu_ke_2` int(11) DEFAULT NULL,
  `minggu_ke_3` int(11) DEFAULT NULL,
  `minggu_ke_4` int(11) DEFAULT NULL,
  `status_lunas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uang_kas`
--

INSERT INTO `uang_kas` (`id_uang_kas`, `id_siswa`, `id_bulan_pembayaran`, `minggu_ke_1`, `minggu_ke_2`, `minggu_ke_3`, `minggu_ke_4`, `status_lunas`) VALUES
(16, 10, 8, 0, 0, 0, 0, 1),
(17, 11, 8, 0, 0, 0, 0, 0),
(18, 12, 8, 0, 0, 0, 0, 0),
(19, 13, 8, 0, 0, 0, 0, 0),
(20, 14, 8, 0, 0, 0, 0, 0),
(21, 15, 8, 0, 0, 0, 0, 0),
(22, 16, 8, 0, 0, 0, 0, 0),
(23, 17, 8, 0, 0, 0, 0, 0),
(24, 18, 8, 0, 0, 0, 0, 0),
(25, 19, 8, 0, 0, 0, 0, 0),
(26, 20, 8, 0, 0, 0, 0, 0),
(27, 21, 8, 0, 0, 0, 0, 0),
(28, 22, 8, 0, 0, 0, 0, 0),
(29, 23, 8, 0, 0, 0, 0, 0),
(30, 24, 8, 0, 0, 0, 0, 0),
(31, 25, 8, 0, 0, 0, 0, 0),
(32, 26, 8, 0, 0, 0, 0, 0),
(33, 27, 8, 0, 0, 0, 0, 0),
(34, 28, 8, 0, 0, 0, 0, 0),
(35, 29, 8, 0, 0, 0, 0, 0),
(36, 30, 8, 0, 0, 0, 0, 0),
(37, 31, 8, 0, 0, 0, 0, 0),
(38, 32, 8, 0, 0, 0, 0, 0),
(39, 33, 8, 0, 0, 0, 0, 0),
(40, 34, 8, 0, 0, 0, 0, 0),
(41, 35, 8, 0, 0, 0, 0, 0),
(42, 36, 8, 0, 0, 0, 0, 0),
(43, 37, 8, 0, 0, 0, 0, 0),
(44, 38, 8, 0, 0, 0, 0, 0),
(45, 39, 8, 0, 0, 0, 0, 0),
(46, 40, 8, 0, 0, 0, 0, 0),
(47, 41, 8, 0, 0, 0, 0, 0),
(48, 42, 8, 0, 0, 0, 0, 0),
(49, 43, 8, 0, 0, 0, 0, 0),
(50, 44, 8, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_jabatan`) VALUES
(1, 'dicky hadi pratama', '05SMJE024', '$2y$10$RtlG8gY2cp/2BYEeMBJ2C.tMli1qvWGCoT/jkKIZVNrRJ/4cGbbTm', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  ADD PRIMARY KEY (`id_bulan_pembayaran`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_uang_kas` (`id_uang_kas`);

--
-- Indexes for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  ADD PRIMARY KEY (`id_riwayat_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD PRIMARY KEY (`id_uang_kas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_bulan_pembayaran` (`id_bulan_pembayaran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  MODIFY `id_bulan_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id_riwayat_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `uang_kas`
--
ALTER TABLE `uang_kas`
  MODIFY `id_uang_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
