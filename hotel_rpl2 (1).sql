-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 10:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_rpl2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(50) NOT NULL,
  `nama` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'ALDRICH RYU DANENDRA', 'ALDRICH1', '456'),
(5, 'CITRA ANNISA TOURSINA\r\nTRIWIJAYA', 'CITRA', '123456'),
(10, 'ALHIKAM DIRGA RAMADHAN', 'ALHIKAM', '654321');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_kamar`
--

CREATE TABLE `tbl_jenis_kamar` (
  `id` int(50) NOT NULL,
  `jenis_kamar` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jenis_kamar`
--

INSERT INTO `tbl_jenis_kamar` (`id`, `jenis_kamar`, `harga`, `keterangan`) VALUES
(5, 'Standard Room', 800000, 'memiliki fasilitas, sepertitempat tidur, AC, TV,perlengkapan mandi, dan airminum. ukuran kasur yangdisediakan oleh StandardRoom model single bed, queensize'),
(7, 'Superior Room', 1500000, 'Area tempat duduk, Lantai berkarpet, Lemari Pakaian. Shower, Bathtub, Peralatan mandi, Toilet, Handuk, Kaca Rias. Minibar, Air Mineral, Coffee & tea set + Termos elektrik.'),
(8, 'Deluxe Room', 1800000, 'kamar mandi yang berukuran besar dan dilengkapi dengan bathtub, shower, meja rias, meja samping tempat tidur, meja tulis kecil, kursi, lemari es mini.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyewa`
--

CREATE TABLE `tbl_penyewa` (
  `id_sewa` int(50) NOT NULL,
  `id_kamar` int(50) NOT NULL,
  `nama` text NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `no_identitas` int(50) NOT NULL,
  `no_hp` int(50) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `total` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_penyewa`
--

INSERT INTO `tbl_penyewa` (`id_sewa`, `id_kamar`, `nama`, `check_in`, `check_out`, `no_identitas`, `no_hp`, `jumlah`, `total`) VALUES
(3, 5, 'frida', '2024-06-14', '2024-06-15', 1212, 2147483647, 2, 1600000),
(11, 7, 'yahayyu', '2024-06-04', '2024-06-05', 123123123, 1212121212, 2, 3000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jenis_kamar`
--
ALTER TABLE `tbl_jenis_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penyewa`
--
ALTER TABLE `tbl_penyewa`
  ADD PRIMARY KEY (`id_sewa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_jenis_kamar`
--
ALTER TABLE `tbl_jenis_kamar`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_penyewa`
--
ALTER TABLE `tbl_penyewa`
  MODIFY `id_sewa` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
