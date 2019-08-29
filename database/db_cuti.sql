-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 08:54 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mohoncuti`
--

CREATE TABLE `tb_mohoncuti` (
  `no_cuti` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jml_hari` int(11) NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `jenis` enum('Nikah','Haji','Lahiran','Emergency') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `jab` varchar(255) NOT NULL,
  `tmp_lhr` varchar(255) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `gol_darah` enum('A','AB','B','O') NOT NULL,
  `agama` enum('Islam','Kristen','Katholik','Buddha','Hindu') NOT NULL,
  `status` enum('K0','K1','K2','K3') NOT NULL,
  `telp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hak_cuti_tahunan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`nip`, `nama`, `jk`, `jab`, `tmp_lhr`, `tgl_lhr`, `gol_darah`, `agama`, `status`, `telp`, `alamat`, `hak_cuti_tahunan`) VALUES
('1801385492', 'Ivan', 'L', 'Back End', 'Jakarta', '2019-08-13', 'A', 'Buddha', 'K0', '085719867784', 'Tangerang', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` enum('Admin','Pegawai','HRD') DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `password`, `hak_akses`, `aktif`) VALUES
(1, 'Ivan', '12345', 'Admin', 'Y'),
(2, 'Budi', '12345', 'Pegawai', 'Y'),
(3, 'Janet', '12345', 'HRD', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mohoncuti`
--
ALTER TABLE `tb_mohoncuti`
  ADD PRIMARY KEY (`no_cuti`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_mohoncuti`
--
ALTER TABLE `tb_mohoncuti`
  MODIFY `no_cuti` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
