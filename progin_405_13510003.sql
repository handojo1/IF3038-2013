-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2013 at 08:13 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `progin_405_13510003`
--

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE IF NOT EXISTS `hak_akses` (
  `username` varchar(50) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  KEY `username` (`username`),
  KEY `id_kategori` (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `id_kategori` (`id_kategori`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`) VALUES
(1, 'progin', 'jo'),
(2, 'sister', 'jo'),
(3, 'kripto', 'jo'),
(4, 'IMK', 'jo'),
(5, 'KAP', 'jo'),
(6, 'studium_generale', 'jo');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `username` varchar(50) NOT NULL,
  `id_tugas` int(255) NOT NULL,
  `waktu` datetime NOT NULL,
  `isi` varchar(10000) NOT NULL,
  KEY `username` (`username`),
  KEY `komentar_ibfk_2` (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`username`, `id_tugas`, `waktu`, `isi`) VALUES
('asdasdasd', 1, '2013-04-14 00:00:00', 'ini bukan komen jo'),
('progin', 1, '2013-03-21 00:00:00', 'ini juga bukan komen jo'),
('jo', 1, '2013-04-10 22:23:02', 'sasasa'),
('jo', 1, '2013-04-10 22:29:40', 'sasasa');

-- --------------------------------------------------------

--
-- Table structure for table `mengerjakan`
--

CREATE TABLE IF NOT EXISTS `mengerjakan` (
  `username` varchar(30) NOT NULL,
  `status_tugas` tinyint(1) NOT NULL,
  `id_tugas` int(11) NOT NULL,
  KEY `username` (`username`),
  KEY `id_tugas` (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mengerjakan`
--

INSERT INTO `mengerjakan` (`username`, `status_tugas`, `id_tugas`) VALUES
('jo', 0, 1),
('asdasdasd', 0, 1),
('progin', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(500) NOT NULL,
  UNIQUE KEY `Username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`username`, `password`, `nama_lengkap`, `tanggal_lahir`, `email`, `avatar`) VALUES
('asdasdasd', 'asdasdasd', 'asdas asdasd', '2013-03-05', 'sad@asdas.com', 'asdasdads'),
('jo', 'jo', 'jo jo', '2013-03-05', 'sad@asdas.com', 'pict/cancel.png'),
('progin', 'progin', 'progin progin', '2013-03-01', 'progin@aa.aa', 'pict/avatar.jpg'),
('tes', 'tes', 'tes tes', '2013-03-04', 'asdadasa', 'dasdada');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE IF NOT EXISTS `tugas` (
  `id_tugas` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(11) NOT NULL,
  `nama_tugas` varchar(50) NOT NULL,
  `deadline` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tag` varchar(500) NOT NULL,
  `attachment` varchar(1000) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tugas`),
  UNIQUE KEY `ID` (`id_tugas`),
  KEY `id_kategori` (`id_kategori`),
  KEY `tugas_ibfk_2` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id_tugas`, `id_kategori`, `nama_tugas`, `deadline`, `status`, `tag`, `attachment`, `username`) VALUES
(1, 1, 'progin dewa', '2013-03-05 18:00:00', 0, 'hampir selesai', 'attach/satu.jpg;', 'jo');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD CONSTRAINT `hak_akses_ibfk_1` FOREIGN KEY (`username`) REFERENCES `pengguna` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hak_akses_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `kategori_ibfk_1` FOREIGN KEY (`username`) REFERENCES `pengguna` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`username`) REFERENCES `pengguna` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_tugas`) REFERENCES `tugas` (`id_tugas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mengerjakan`
--
ALTER TABLE `mengerjakan`
  ADD CONSTRAINT `mengerjakan_ibfk_1` FOREIGN KEY (`username`) REFERENCES `pengguna` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mengerjakan_ibfk_2` FOREIGN KEY (`id_tugas`) REFERENCES `tugas` (`id_tugas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `tugas_ibfk_2` FOREIGN KEY (`username`) REFERENCES `pengguna` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
