-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 06:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pertanian`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE `bahan` (
  `id_bahan` int(11) NOT NULL,
  `jenis_bahan` varchar(255) NOT NULL,
  `jumlah_bahan` varchar(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jenis_bibit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `jenis_bahan`, `jumlah_bahan`, `harga`, `jenis_bibit`) VALUES
(1, 'pupuk kimia ', '2', 15000, NULL),
(2, 'karung', '10', 20000, NULL),
(3, 'tali', '1', 15000, NULL),
(4, 'tanah', '1', 10000, 'Padat');

-- --------------------------------------------------------

--
-- Table structure for table `detail_jual`
--

CREATE TABLE `detail_jual` (
  `id_jual` int(11) NOT NULL,
  `id-bahan` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_jual`
--

INSERT INTO `detail_jual` (`id_jual`, `id-bahan`, `jumlah`) VALUES
(1, 2, '2 karung'),
(2, 2, '1 karung'),
(1, 3, '1/2 meter'),
(2, 3, '1/2 meter');

-- --------------------------------------------------------

--
-- Table structure for table `detail_kebutuhan_tanam`
--

CREATE TABLE `detail_kebutuhan_tanam` (
  `id tanam` int(11) NOT NULL,
  `id bahan` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `berat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_kebutuhan_tanam`
--

INSERT INTO `detail_kebutuhan_tanam` (`id tanam`, `id bahan`, `jumlah`, `berat`) VALUES
(1, 1, '1 botol', '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_tanam`
--

CREATE TABLE `detail_tanam` (
  `id_detail_tanam` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `jumlah_bibit` varchar(255) NOT NULL,
  `tgl_tanam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_tanam`
--

INSERT INTO `detail_tanam` (`id_detail_tanam`, `jenis`, `jumlah_bibit`, `tgl_tanam`) VALUES
(1, 'padi', '100', '2023-05-06'),
(2, 'tembakau', '300', '2023-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `inputpanen`
--

CREATE TABLE `inputpanen` (
  `jenis_panen` varchar(50) NOT NULL,
  `Berat` int(11) NOT NULL,
  `tgl_panen` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inputpanen`
--

INSERT INTO `inputpanen` (`jenis_panen`, `Berat`, `tgl_panen`, `jumlah`, `harga`) VALUES
('panen padi', 1, '2023-06-05', 111, 10000),
('panen tembakau', 11, '2023-06-02', 10000, 13000);

-- --------------------------------------------------------

--
-- Table structure for table `inputtanam`
--

CREATE TABLE `inputtanam` (
  `jenis_tanam` varchar(50) NOT NULL,
  `Berat` varchar(50) NOT NULL,
  `tgl_tanam` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inputtanam`
--

INSERT INTO `inputtanam` (`jenis_tanam`, `Berat`, `tgl_tanam`, `jumlah`, `harga`) VALUES
('padi', '110', '2023-06-08', 111, 10000),
('jagung', '1', '0000-00-00', 1, 1000),
('palawija', '1', '2023-06-08', 1, 1),
('tembakau', '1', '2023-06-01', 10000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pekerjaan`
--

CREATE TABLE `jenis_pekerjaan` (
  `id_jenis_pekerjaan` int(11) NOT NULL,
  `jenis_pekerjaan` varchar(255) NOT NULL,
  `harga_jasa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_pekerjaan`
--

INSERT INTO `jenis_pekerjaan` (`id_jenis_pekerjaan`, `jenis_pekerjaan`, `harga_jasa`) VALUES
(1, 'mandor', 12000),
(2, 'petani', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pertanian`
--

CREATE TABLE `jenis_pertanian` (
  `id_jenispertanian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_pertanian`
--

INSERT INTO `jenis_pertanian` (`id_jenispertanian`, `nama`) VALUES
(1, 'pertanian padi'),
(2, 'pertanian tembakau');

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE `jual` (
  `id_jual` int(11) NOT NULL,
  `kodenota` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `panen` varchar(50) NOT NULL,
  `berat` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `bahanID` int(11) NOT NULL,
  `panenID` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`id_jual`, `kodenota`, `nama`, `panen`, `berat`, `jumlah`, `harga`, `bahanID`, `panenID`, `total`) VALUES
(1, '', '', '', '1 kwintal', '1 ', 500000, 2, 1, 0),
(2, '', '', '', '500 kilogram', '1', 1000000, 2, 2, 0),
(3, 'kn01', 'Roni Sianturi', '', '12', '12', 1000, 2, 1, 12000),
(5, 'kn02', 'Maher Zaen', 'padi', '23', '11', 1000, 2, 1, 11000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nama_pegawai` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `tugas` varchar(50) NOT NULL,
  `harga_jasa` int(11) NOT NULL,
  `jenis_pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nama_pegawai`, `jenis_kelamin`, `alamat`, `no_telp`, `tugas`, `harga_jasa`, `jenis_pekerjaan`) VALUES
('faris', 'laki-laki', 'fsadff', 'asfdaf', 'asfasd', 112, '121323'),
('namaku', 'laki-laki', 'alamat', 'jenis pekerjaan', 'tugas', 1212, '08323434'),
('namapegawai', 'laki-laki', 'alamat', '082323', 'tugas', 21000, 'jenispekerjaan'),
('NP', 'laki-laki', 'AL', '083232', 'TGS', 1232, 'JP'),
('coba', 'laki-laki', 'rwerwer 343', '222', 'sfdds', 222, 'sfdf'),
('coba3', 'laki-laki', 'sfdsfs', '2222', 'sdfsdf', 222, 'sdfsf');

-- --------------------------------------------------------

--
-- Table structure for table `panen`
--

CREATE TABLE `panen` (
  `id_panen` int(11) NOT NULL,
  `berat` varchar(255) NOT NULL,
  `jenis_panen` varchar(255) NOT NULL,
  `tgl_panen` date NOT NULL,
  `tanamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `panen`
--

INSERT INTO `panen` (`id_panen`, `berat`, `jenis_panen`, `tgl_panen`, `tanamID`) VALUES
(1, '1 kwintal', 'panen padi', '2023-07-25', 1),
(2, '500 kilogram', 'tembakau', '2023-08-25', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `tugas` varchar(255) DEFAULT NULL,
  `harga_jasa` int(11) DEFAULT NULL,
  `jenis_pekerjaanID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `alamat`, `jenis_kelamin`, `no_telp`, `tugas`, `harga_jasa`, `jenis_pekerjaanID`) VALUES
(1, 'suparno', 'jl. kemangi jember no. 25', 'L', '08312132434', 'menanam padi', 12000, 2),
(2, 'sayanto', 'jl. arif rahman hakim no. 31 jember', 'L', '0129383182', 'memantau lahan padi', 500000, 1),
(3, 'jasmin', 'jl. ketapang bali pucuk no. 99', 'P', '089765432', 'menanam bibit tembakau', 40000, 2),
(4, 'suryaka', 'jl. cobong kali anak jember no. 4', 'L', '0853256759', 'mengawasi lahan tembakau', 500000, 1),
(5, 'nama', 'alamat', 'L', 'no telp', 'tugas', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tanam`
--

CREATE TABLE `tanam` (
  `id_tanam` int(11) NOT NULL,
  `detail_tanamID` int(11) NOT NULL,
  `pegawaiID` int(11) NOT NULL,
  `jenis_pertanianID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanam`
--

INSERT INTO `tanam` (`id_tanam`, `detail_tanamID`, `pegawaiID`, `jenis_pertanianID`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kodenota` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `panen` varchar(50) NOT NULL,
  `berat` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kodenota`, `nama`, `panen`, `berat`, `jumlah`, `harga`, `total`) VALUES
('kn01', 'Maher Zaen', 'padi', 'kilogram', 11, 1000, 11000),
('kn02', 'Roni Sianturi', 'padi', 'kilogram', 222, 1000, 222000),
('kn03', 'Sarimen', 'padi', 'kilogram', 333, 1000, 333000),
('kn04', 'Ultramen', 'jagung', 'kilogram', 333, 1000, 333000),
('kodenota', 'nama', 'panen padi', '1', 1000, 20, 20000),
('kn05', 'Panda', 'panen padi', '3', 2, 1000, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id_bahan`),
  ADD KEY `bahanIDIndex` (`id_bahan`);

--
-- Indexes for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD KEY `id_jual` (`id_jual`),
  ADD KEY `id-bahan` (`id-bahan`);

--
-- Indexes for table `detail_kebutuhan_tanam`
--
ALTER TABLE `detail_kebutuhan_tanam`
  ADD PRIMARY KEY (`id bahan`),
  ADD KEY `id tanam` (`id tanam`);

--
-- Indexes for table `detail_tanam`
--
ALTER TABLE `detail_tanam`
  ADD PRIMARY KEY (`id_detail_tanam`);

--
-- Indexes for table `jenis_pekerjaan`
--
ALTER TABLE `jenis_pekerjaan`
  ADD PRIMARY KEY (`id_jenis_pekerjaan`);

--
-- Indexes for table `jenis_pertanian`
--
ALTER TABLE `jenis_pertanian`
  ADD PRIMARY KEY (`id_jenispertanian`);

--
-- Indexes for table `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`id_jual`),
  ADD KEY `bahanID` (`bahanID`),
  ADD KEY `panenID` (`panenID`),
  ADD KEY `jualIDIndexview` (`id_jual`);

--
-- Indexes for table `panen`
--
ALTER TABLE `panen`
  ADD PRIMARY KEY (`id_panen`),
  ADD KEY `tanamID` (`tanamID`),
  ADD KEY `panenIDIndexview` (`id_panen`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `jenis_pekerjaanID` (`jenis_pekerjaanID`);

--
-- Indexes for table `tanam`
--
ALTER TABLE `tanam`
  ADD PRIMARY KEY (`id_tanam`),
  ADD KEY `pegawaiID` (`pegawaiID`),
  ADD KEY `jenis_pertanianID` (`jenis_pertanianID`),
  ADD KEY `detail_tanamID` (`detail_tanamID`),
  ADD KEY `detail_tanamID_2` (`detail_tanamID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_kebutuhan_tanam`
--
ALTER TABLE `detail_kebutuhan_tanam`
  MODIFY `id bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_tanam`
--
ALTER TABLE `detail_tanam`
  MODIFY `id_detail_tanam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_pekerjaan`
--
ALTER TABLE `jenis_pekerjaan`
  MODIFY `id_jenis_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_pertanian`
--
ALTER TABLE `jenis_pertanian`
  MODIFY `id_jenispertanian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jual`
--
ALTER TABLE `jual`
  MODIFY `id_jual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `panen`
--
ALTER TABLE `panen`
  MODIFY `id_panen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tanam`
--
ALTER TABLE `tanam`
  MODIFY `id_tanam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD CONSTRAINT `detail_jual_ibfk_1` FOREIGN KEY (`id_jual`) REFERENCES `jual` (`id_jual`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_jual_ibfk_2` FOREIGN KEY (`id-bahan`) REFERENCES `bahan` (`id_bahan`) ON UPDATE CASCADE;

--
-- Constraints for table `detail_kebutuhan_tanam`
--
ALTER TABLE `detail_kebutuhan_tanam`
  ADD CONSTRAINT `detail_kebutuhan_tanam_ibfk_1` FOREIGN KEY (`id tanam`) REFERENCES `tanam` (`id_tanam`) ON UPDATE CASCADE;

--
-- Constraints for table `jual`
--
ALTER TABLE `jual`
  ADD CONSTRAINT `jual_ibfk_1` FOREIGN KEY (`bahanID`) REFERENCES `bahan` (`id_bahan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jual_ibfk_2` FOREIGN KEY (`panenID`) REFERENCES `panen` (`id_panen`) ON UPDATE CASCADE;

--
-- Constraints for table `panen`
--
ALTER TABLE `panen`
  ADD CONSTRAINT `panen_ibfk_1` FOREIGN KEY (`tanamID`) REFERENCES `tanam` (`id_tanam`) ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`jenis_pekerjaanID`) REFERENCES `jenis_pekerjaan` (`id_jenis_pekerjaan`) ON UPDATE CASCADE;

--
-- Constraints for table `tanam`
--
ALTER TABLE `tanam`
  ADD CONSTRAINT `tanam_ibfk_1` FOREIGN KEY (`pegawaiID`) REFERENCES `pegawai` (`id_pegawai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tanam_ibfk_2` FOREIGN KEY (`jenis_pertanianID`) REFERENCES `jenis_pertanian` (`id_jenispertanian`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tanam_ibfk_3` FOREIGN KEY (`detail_tanamID`) REFERENCES `detail_tanam` (`id_detail_tanam`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
