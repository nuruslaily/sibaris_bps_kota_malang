-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Jan 2021 pada 13.40
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sibaris`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(25) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `merk` varchar(75) NOT NULL,
  `tahun_peroleh` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `penguasaan` varchar(25) NOT NULL,
  `id_ruang` int(11) DEFAULT NULL,
  `keadaan` varchar(25) NOT NULL,
  `keterangan` text,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `kode_barang`, `nama_barang`, `merk`, `tahun_peroleh`, `jumlah`, `satuan`, `penguasaan`, `id_ruang`, `keadaan`, `keterangan`, `created`, `modified`) VALUES
(10, '3.05.01.04.001', 'Lemari Besi/Metal', 'LEMARI BESI 1/2 TINGGI BOTHER B-206', '2016', 1, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 19:42:20', NULL),
(11, '3.05.01.04.002', 'Lemari Kayu', 'LT FILE CABINET SM58604,EBO', '2013', 1, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:20:52', NULL),
(12, '3.05.02.01.002', 'Meja Kerja Kayu', 'HsS-1811*180 Office Table', '2013', 1, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:20:52', '2021-01-19 20:23:21'),
(13, '3.05.02.01.003', 'Kursi Besi/Metal', 'council A47WW Managerialcha', '2013', 1, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:27:01', NULL),
(14, '3.05.02.01.003', 'Kursi Besi/Metal', 'Wave Staff Chair Black Low', '2013', 2, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:27:01', NULL),
(15, '3.05.02.01.003', 'Kursi Besi/Metal', 'Kursi Kepala Kantor', '2020', 1, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:33:27', NULL),
(16, '3.05.02.01.005', 'Sice', 'Sofa (2+1+1 Meja)', '2013', 1, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:33:27', NULL),
(17, '3.05.02.04.004', 'A.C. Split', 'DAIKIN KAPASITAS 1,5 PK', '2016', 1, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:44:14', NULL),
(18, '3.05.02.06.027', 'Gambar Presiden/Wakil Presiden', '-', '1998', 2, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:44:14', NULL),
(19, '3.10.01.02.001', 'P.C Unit', 'Dell/Optiplex 780', '2010', 1, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:51:20', NULL),
(20, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'EPSON L210', '2014', 1, 'Buah', 'Milik Sendiri', 6, 'Baik', NULL, '2021-01-19 20:51:20', NULL),
(21, '3.05.01.04.001', 'Lemari Besi/Metal', 'Datascript', '1997', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(22, '3.05.01.04.002', 'Lemari Kayu', '-', '1995', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(23, '3.05.01.04.002', 'Lemari Kayu', 'Almari Rak bentuk segitiga', '2013', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(24, '3.05.01.04.002', 'Lemari Kayu', 'Almari', '2013', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(25, '3.05.01.04.002', 'Lemari Kayu', 'Lemari Kayu', '2020', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 21:06:46', NULL),
(26, '3.05.01.04.004', 'Rak Kayu', '-', '1984', 4, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', '2021-01-19 21:11:32'),
(27, '3.05.01.04.004', 'Rak Kayu', '-', '1997', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(28, '3.05.01.04.005', 'Filing Cabinet Besi', 'Brather', '1987', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(29, '3.05.01.04.007', 'Brandkas', 'Comunity', '2017', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(30, '3.05.01.05.007', 'CCTV - Camera Control Television System', 'AVTEC HDMI', '2016', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(31, '3.05.01.05.010', 'White Board', 'wb maqueta c yansa', '2016', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 21:22:40', '2021-01-19 21:23:25'),
(32, '3.05.01.05.017', 'Mesin Absensi ', '-', '2011', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', 'asset', '2021-01-19 00:00:00', '2021-01-19 21:47:06'),
(33, '3.05.02.01.002', 'Meja Kerja Kayu', 'Executive Table SM 16B Ebon ', '2013', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(34, '3.05.02.01.003', 'Kursi Besi/Metal', 'Winston Managerial Chairbla', '2013', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(35, '3.05.02.01.003', 'Kursi Besi/Metal', 'Wave Staff Chair Black Low', '2013', 2, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(36, '3.05.02.01.003', 'Kursi Besi/Metal', 'Wolfsburg Visitor Chair Blu', '2013', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(37, '3.05.02.01.003', 'Kursi Besi/Metal', 'Kursi Kepala Seksi', '2020', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(38, '3.05.02.01.009', 'Meja Komputer', 'LT Computer Table MC32312 B', '2013', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', '2021-01-19 21:43:30'),
(39, '3.05.02.01.009', 'Meja Komputer', 'HS-1403*140 Computer table', '2013', 2, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', '2021-01-19 21:44:56'),
(40, '3.05.02.04.004', 'A.C. Split', 'SHARP INV PCL', '2014', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', '2021-01-19 21:46:26'),
(41, '3.05.02.06.017', 'Unit Power Supply', 'Eaton NV 600H', '2011', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', 'Asset', '2021-01-19 00:00:00', NULL),
(42, '3.06.01.01.048', 'Uninterruptible Power Supply (UPS)', 'APC BX650LI-MS', '2019', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', 'Kota Malang', '2021-01-19 00:00:00', NULL),
(43, '3.06.02.01.010', 'Facsimile', 'PANASONIC KX-MB', '2016', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 00:00:00', NULL),
(44, '3.10.01.02.001', 'P.C Unit', 'Lenovo/Think Centre', '2011', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', 'Asset', '2021-01-19 22:10:50', NULL),
(45, '3.10.01.02.001', 'P.C Unit', 'Dell OptiPlex 3020 Micro + Monitor Dell E2214H', '2015', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', '02520.0955/BAST/X/2', '2021-01-19 22:10:50', NULL),
(46, '3.10.01.02.002', 'Laptop', 'LENOVO/THINKPAD L412', '2010', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', '', '2021-01-19 22:15:40', '2021-01-22 16:57:45'),
(47, '3.10.01.02.003', 'Note Book', 'HP Business Notebook 348 G4', '2018', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', 'BPS Kota Malang', '2021-01-19 22:15:40', NULL),
(48, '3.10.01.02.001', 'P.C Unit', 'ThinkCentre M720t', '2019', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', 'BPS Kota Malang', '2021-01-19 22:20:43', NULL),
(49, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'EPSON L210', '2014', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 22:20:43', NULL),
(50, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'HP LaserJet Pro M201dw', '2015', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', NULL, '2021-01-19 22:21:58', '2021-01-19 22:26:37'),
(53, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'EPSON L3150', '2018', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', '-', '2021-01-19 22:25:11', NULL),
(54, '3.10.02.03.004', 'Scanner (Peralatan Personal Komputer)', 'Fujitsu', '2010', 1, 'Buah', 'Milik Sendiri', 4, 'Baik', 'F15530C2', '2021-01-19 22:28:30', NULL),
(55, '3.05.02.01.002', 'Meja Kerja Kayu', 'Meja dengan laci (ruang rap)', '2013', 5, 'Buah', 'Milik Sendiri', 8, 'Baik', NULL, '2021-01-19 22:28:30', '2021-01-20 11:49:46'),
(56, '3.05.02.01.003', 'Kursi Besi/Metal', 'Nora folding chair BlackNC9', '2013', 5, 'Buah', 'Milik Sendiri', 8, 'Baik', NULL, '2021-01-20 11:36:26', NULL),
(57, '3.05.02.04.004', 'A.C Split', 'SHARP AC SPLIT AH-XP13NRY', '2014', 1, 'Buah', 'Milik Sendiri', 8, 'Baik', NULL, '2021-01-20 11:36:26', NULL),
(58, '3.05.02.01.003', 'Kursi Besi/Metal', 'Winston Managerial Chairbla', '2013', 1, 'Buah', 'Milik Sendiri', 8, 'Baik', '', '2021-01-20 11:56:11', NULL),
(59, '3.03.03.08.012', 'Termometer Standar', 'Jumper JPD-FR300', '2020', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', 'Kota Malang', '2021-01-20 12:17:22', NULL),
(60, '3.05.01.04.002', 'Lemari Kayu', '-', '1998', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:22:22', NULL),
(61, '3.05.01.04.002', 'Lemari Kayu', 'Almari rak bentuk segitiga', '2013', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:23:48', NULL),
(62, '3.05.01.04.004', 'Rak Kayu', 'Tempat koran', '2013', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:25:52', NULL),
(63, '3.05.01.04.015', 'Locker', 'Locker Pegawai', '2020', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:34:15', NULL),
(64, '3.05.01.05.001', 'Tabung Pemadam Api', 'Ultima abs 90 ep-3', '2016', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:36:42', NULL),
(65, '3.05.01.05.017', 'Mesin Absensi', 'Magic G6800', '2016', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:40:21', NULL),
(66, '3.05.01.05.081', 'Papan Pengumuman', 'PAPAN PENGUMUMAN BESAR', '2016', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:42:59', NULL),
(67, '3.05.01.05.083', 'Teralis', 'TERALIS LENGKAP', '2016', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:45:25', NULL),
(68, '3.05.02.01.002', 'Meja Kerja Kayu', 'Meja Kubikal atau Meja', '2013', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:47:37', NULL),
(69, '3.05.02.01.003', 'Kursi Besi/Metal', 'Wolfsburg Visitor Chair Blu', '2013', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:50:42', NULL),
(70, '3.05.02.01.003', 'Kursi Besi/Metal', 'Gang chair Y-Serius 45 BLK', '2013', 2, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:52:27', NULL),
(71, '3.05.02.01.005', 'Sice', 'Sofa (2+1+1 Meja)', '2013', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:55:40', NULL),
(72, '3.05.02.01.009', 'Meja Komputer', 'LT Computer Table', '2013', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 12:59:21', NULL),
(73, '3.05.02.01.013', 'Meja Telepon', '-', '1984', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 13:00:15', NULL),
(74, '3.05.02.01.014', 'Meja Resepsionis', 'Meja Front Office', '2013', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 13:04:58', NULL),
(75, '3.05.02.06.042', 'Lambang Instansi', 'Lambang Instansi', '2013', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', 'Backdroup', '2021-01-20 13:06:45', '2021-01-22 16:30:02'),
(76, '3.05.02.06.057', 'Vertikal Blind', 'ONNA SERY 71 HEAVY DUTY', '2014', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 13:08:13', NULL),
(77, '3.06.02.01.003', 'Pesawat Telephone', 'INTI', '1989', 1, 'Buah', 'Milik Sendiri', 1, 'Baik', '', '2021-01-20 13:09:55', NULL),
(78, '3.03.03.10.004', 'Timbangan Bbi Capasitas 100 Kg', 'SHIMA', '2000', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 20:58:25', NULL),
(79, '3.04.01.03.009', 'Alat Bantu Uji Tumbuh', '-', '2010', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:05:30', NULL),
(80, '3.04.01.03.009', 'Alat Bantu Uji Tumbuh', 'Alat Ubinan', '2018', 2, 'Buah', 'Milik Sendiri', 9, 'Baik', 'Alat Ubinan', '2021-01-20 21:07:49', '2021-01-22 15:59:58'),
(81, '3.04.01.03.009', 'Alat Bantu Uji Tumbuh', 'Alat Ubinan', '2019', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:10:17', NULL),
(82, '3.05.01.04.002', 'Lemari Kayu', '-', '1980', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:11:02', NULL),
(83, '3.05.01.04.002', 'Lemari Kayu', '-', '1983', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:12:01', NULL),
(84, '3.05.01.04.004', 'Rak Kayu', '-', '1997', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:12:44', NULL),
(85, '3.05.02.01.002', 'Meja Kerja Kayu', 'AURA 1/2 BIRO', '2004', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:14:00', NULL),
(86, '3.05.02.01.020', 'Kursi Fiber Glas/Plastik', 'Tiger T98', '2004', 2, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:14:50', NULL),
(87, '3.05.02.02.003', 'Jam Elektronik', '-', '1997', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:15:42', NULL),
(88, '3.05.02.03.001', 'Mesin Penghisap Debu/Vacuum Cleaner', 'NILFISK 20 INOX', '2016', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:16:26', NULL),
(89, '3.05.0.20.04.006', 'Kipas Angin', 'Nasional', '1996', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', 'unt.koreksi nilai', '2021-01-20 21:18:08', NULL),
(90, '3.05.02.06.018', 'Step Up/Down (Alat Rumah Tangga Lainnya (Home Use))', 'APC', '1997', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', 'unt.koreksi nilai', '2021-01-20 21:19:20', '2021-01-22 16:08:28'),
(91, '3.06.02.01.003', 'Pesawat Telephone ', 'Inti', '1989', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:20:07', NULL),
(92, '3.06.02.01.010', 'Facsimile', 'PANASONIX KXF2710', '1996', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:20:49', NULL),
(93, '3.10.02.01.003', 'Floppy Disk Unit (Peralatan Mainframe)', 'Dell Latitude 6410 ATG', '2011', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', 'asset', '2021-01-20 21:21:42', NULL),
(94, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'EPSON L210', '2014', 1, 'Buah', 'Milik Sendiri', 9, 'Baik', '', '2021-01-20 21:23:06', NULL),
(95, '3.05.01.04.002', 'Lemari Kayu', '-', '2005', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:24:19', NULL),
(96, '3.05.01.04.002', 'Lemari Kayu', 'Lemari Kayu', '2020', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:25:35', NULL),
(97, '3.05.01.04.004', 'Rak Kayu', 'Rak Terbuka', '2013', 3, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:26:40', NULL),
(98, '3.05.01.04.004', 'Rak Kayu', 'LT FILE CABINET SM58602,EB', '2013', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:29:25', NULL),
(99, '3.05.01.04.015', 'Locker', 'Locker', '2013', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:30:54', NULL),
(100, '3.05.02.01.003', 'Kursi Besi/Metal', 'Nora folding chair  BlackNC9', '2013', 6, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:32:27', NULL),
(101, '3.05.02.01.009', 'Meja Komputer', 'MC21208 LT Comp Table,Black', '2013', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:33:05', NULL),
(102, '3.05.02.01.009', 'Meja Komputer', 'HS-1403*140 Computer table', '2013', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:33:41', NULL),
(103, '3.05.02.04.004', 'A.C. Split', 'AC SHARP 1 PK', '2014', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:34:32', NULL),
(104, '3.10.01.02.001', 'P.C Unit', 'Lenovo/Think Centre', '2011', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:35:10', NULL),
(105, '3.10.01.02.001', 'P.C Unit', 'Dell/Optiplex 780', '2010', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:36:20', NULL),
(106, '6.01.01.02.999', 'Serial Lainnya', 'STATISTIK INDONESIA 2006 ', '2010', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:38:33', NULL),
(107, '6.01.01.02.999', 'Serial Lainnya', 'JAWA TIMUR DALAM ANGKA 2006', '2010', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:39:18', NULL),
(108, '6.01.01.02.999', 'Serial Lainnya', 'JAWA TIMUR DALAM ANGKA 2007', '2010', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:40:00', NULL),
(109, '6.01.01.02.999', 'Serial Lainnya', 'JAWA TIMUR DALAM ANGKA 2008', '2010', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:40:32', NULL),
(110, '6.01.01.02.999', 'Serial Lainnya', 'KOTA MALANG DLM ANGKA 2000', '2010', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:41:18', NULL),
(111, '6.01.01.02.999', 'Serial Lainnya', 'KOTA MALANG DLM ANGKA 2001', '2010', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:41:52', NULL),
(112, '6.01.01.02.999', 'Serial Lainnya', 'KOTA MALANG DLM ANGKA 2002', '2010', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:42:47', NULL),
(113, '6.01.01.02.999', 'Serial Lainnya', 'KOTA MALANG DLM ANGKA 2003', '2010', 1, 'Buah', 'Milik Sendiri', 2, 'Baik', '', '2021-01-20 21:43:34', NULL),
(114, '3.03.02.11.003', 'Rol Meter', 'ONI', '2015', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:46:40', NULL),
(115, '3.05.01.04.001', 'Lemari Besi/Metal', 'LEMARI BESI', '2016', 2, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:47:41', NULL),
(116, '3.05.01.04.002', 'Lemari Kayu', 'Lemari Kayu', '2020', 4, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:48:16', NULL),
(117, '3.05.01.04.005', 'Filing Cabinet Besi', 'Takashimura', '1997', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:49:05', NULL),
(118, '3.05.01.04.005', 'Filing Cabinet Besi', 'Yunika', '1997', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:49:45', NULL),
(119, '3.05.01.04.005', 'Filing Cabinet Besi', 'DATASCRIPT', '1997', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:50:34', NULL),
(120, '3.05.01.05.001', 'Tabung Pemadam Api', 'ultima abs 90 ep-3', '2016', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:51:30', NULL),
(121, '3.05.02.01.002', 'Meja Kerja Kayu', 'Executive Table SM 16B Ebson', '2013', 4, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:52:30', NULL),
(122, '3.05.02.01.003', 'Kursi Besi/Metal', 'Winston Managerial Chairbia', '2013', 3, 'Buah', 'Milik Sendiri', 5, 'Baik', 'Kondisi Rusak', '2021-01-20 21:53:11', '2021-01-23 18:49:04'),
(123, '3.05.02.01.003', 'Kursi Besi/Metal', 'Wave Staff Chair Black Low', '2013', 7, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:54:28', NULL),
(124, '3.05.02.01.003', 'Kursi Besi/Metal', 'Kursi Kepala Seksi', '2020', 4, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:55:08', NULL),
(125, '3.05.02.01.003', 'Kursi Besi/Metal', 'Kursi Peserta Rapat', '2020', 30, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:59:00', NULL),
(126, '3.05.02.01.005', 'Sice', 'Sofa kursi panjang tanpa me', '2013', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 21:59:45', NULL),
(127, '3.05.02.01.009', 'Meja Komputer', 'OLIVER', '1997', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 22:00:32', NULL),
(128, '3.05.02.01.009', 'Meja Komputer', 'LT Computer Table MC32312B', '2013', 6, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 22:01:25', NULL),
(129, '3.05.02.04.004', 'A.C. Split', 'SHARP 12 MYS', '2014', 2, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-20 22:03:43', NULL),
(130, '3.05.02.06.017', 'Unit Power Supply', 'Eaton NV 600H', '2011', 3, 'Buah', 'Milik Sendiri', 5, 'Baik', 'Asset', '2021-01-20 22:04:48', '2021-01-23 18:55:17'),
(131, '3.10.01.02.001', 'P.C Unit', 'PC.Unit Tipe A Dell/optiplek', '2008', 2, 'Buah', 'Milik Sendiri', 5, 'Baik', 'lengkap dengan', '2021-01-20 22:05:50', '2021-01-23 18:56:00'),
(132, '3.10.01.02.001', 'P.C Unit', 'Lenovo/Think Centre', '2011', 7, 'Buah', 'Milik Sendiri', 5, 'Baik', 'Asset', '2021-01-20 22:06:39', '2021-01-23 18:54:25'),
(133, '3.05.01.04.002', 'Lemari Kayu', 'Lemari Trophy kaca', '2020', 1, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:17:25', NULL),
(134, '3.05.01.05.010', 'White Board', '-', '2003', 1, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:18:19', NULL),
(135, '3.05.02.01.003', 'Kursi Besi/Metal', 'Nora folding chair BlackNC9', '2013', 11, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:19:06', NULL),
(136, '3.05.02.01.003', 'Kursi Besi/Metal', 'Kursi Pimpinan Rapat', '2020', 7, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:19:44', NULL),
(137, '3.05.02.01.008', 'Meja Rapat', 'Meja Panjang(panjang =140)', '2013', 3, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:20:55', NULL),
(138, '3.05.02.01.008', 'Meja Rapat', 'Meja Pimpinan Rapat', '2020', 1, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:21:41', NULL),
(139, '3.05.02.01.008', 'Meja Rapat', 'Meja Peserta Rapat', '2020', 10, 'Buah', 'Milik Sendiri', 7, 'Baik', 'Meja Rapat', '2021-01-20 22:24:24', NULL),
(140, '3.05.02.04.004', 'A.C. Split', 'LG NEOPLASMA S09LP', '2005', 1, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:25:21', '2021-01-22 15:21:20'),
(141, '3.05.02.04.004', 'A.C. Split', 'sharp ac split ap 12psy', '2014', 1, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:26:48', NULL),
(142, '3.05.02.06.008', 'Sound System', 'YAMAHA POWER P5000', '2016', 1, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:27:28', NULL),
(143, '3.05.02.06.037', 'Mimbar/Podium', '-', '2017', 1, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-20 22:28:24', NULL),
(144, '3.03.03.01.072', 'Global Positioning System', 'Garmin/Monterra', '2015', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:29:27', NULL),
(145, '3.05.01.04.001', 'Lemari Besi/Metal', 'ELITE', '1997', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:30:05', NULL),
(146, '3.05.01.04.003', 'Rak Besi', 'NRAX/19"', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:30:41', NULL),
(147, '3.05.01.04.005', 'Filing Cabinet Besi', 'CELICA', '1990', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:31:40', NULL),
(148, '3.05.01.05.048', 'LCD Projector/Infocus', 'EPSON/EB-X 7', '2011', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:32:41', NULL),
(149, '3.05.02.01.002', 'Meja Kerja Kayu', 'Executive Table SM 16B Ebon', '2013', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:34:20', NULL),
(150, '3.05.02.01.003', 'Kursi Besi/Metal', 'Winston Managerial Chairbia', '2013', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:35:43', NULL),
(151, '3.05.02.01.003', 'Kursi Besi/Metal', 'Wave Staff Chair Black Low', '2013', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:36:52', NULL),
(152, '3.05.02.01.003', 'Kursi Besi/Metal', 'Nora folding chair BlackNC9', '2013', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:45:44', NULL),
(153, '3.05.02.01.003', 'Kursi Besi/Metal', 'Wolfburg Visitor Chair bla', '2013', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:47:39', NULL),
(154, '3.05.02.01.003', 'Kursi Besi/Metal', 'Kursi Kepala Seksi', '2020', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:49:46', NULL),
(155, '3.05.02.01.009', 'Meja Komputer', 'Meja Komputer Grace 68+', '2008', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', 'lengkap dengan', '2021-01-20 22:50:34', '2021-01-23 18:22:01'),
(156, '3.05.02.01.009', 'Meja Komputer', 'HS-1403*140 Computer table', '2013', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', 'lengkap dengan', '2021-01-20 22:53:03', '2021-01-23 18:22:46'),
(157, '3.05.02.01.009', 'Meja Komputer', 'Meja Komputer', '2013', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:53:41', NULL),
(158, '3.05.02.04.004', 'A.C. Split', 'AC SHARP 1 PK', '2014', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:54:46', NULL),
(159, '3.05.02.04.004', 'A.C. Split', 'DAIKIN KAPASITAS 1,5 PK', '2016', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 22:55:46', NULL),
(160, '3.05.02.06.017', 'Unit Power Supply', 'UPS Elipse max 850 VA', '2008', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', 'lengkap dengan', '2021-01-20 22:57:04', NULL),
(161, '3.05.02.06.017', 'Unit Power Supply', 'EATON/EX-1000 RT2U', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'TRANSFER', '2021-01-20 22:58:31', NULL),
(162, '3.05.02.06.017', 'Unit Power Supply', 'EATON NV 600H', '2011', 4, 'Buah', 'Milik Sendiri', 3, 'Baik', 'Asset', '2021-01-20 23:02:34', NULL),
(163, '3.05.02.06.017', 'Unit Power Supply', 'UPS Server ', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:06:06', NULL),
(164, '3.05.02.06.017', 'Unit Power Supply', 'EATON ELLIPS MAX 850 VA', '2010', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:06:41', NULL),
(165, '3.06.01.01.048', 'Uninterruptible Power Supply (UPS)', 'Vektor Ablerex', '2015', 3, 'Buah', 'Milik Sendiri', 3, 'Baik', '02520.0955/BAST/X/2', '2021-01-20 23:08:36', NULL),
(166, '3.06.01.01.048', 'Uninterruptible Power Supply (UPS)', 'APC EasyUPS[BV10001-MS]', '2018', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'BPS Kota Malang', '2021-01-20 23:10:12', NULL),
(167, '3.06.01.01.048', 'Uninterruptible Power Supply (UPS)', 'APC BX650LI-MS', '2019', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'Kota Malang', '2021-01-20 23:13:36', NULL),
(168, '3.10.01.01.007', 'PC Workstation', 'Dell Precision Rack 7910 CTO Base + Monitor Dell P', '2015', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '02520.0955/BAST/X/2', '2021-01-20 23:14:32', NULL),
(169, '3.10.01.02.001', 'P.C Unit', 'Lenovo/Think Centre', '2011', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'Asset', '2021-01-20 23:15:15', NULL),
(170, '3.10.01.02.001', 'P.C Unit', 'Dell OptiPlex 3020 Micro + Monitor Dell E2214H', '2015', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', '02520.0955/BAST/X/2', '2021-01-20 23:15:58', NULL),
(171, '3.10.01.02.001', 'P.C Unit', 'Dell/Optiplex3010DT', '2013', 3, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:17:06', NULL),
(172, '3.10.01.02.001', 'P.C Unit', 'Lenovo Think Station P320', '2018', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'BPS Kota Malang', '2021-01-20 23:18:15', NULL),
(173, '3.10.01.02.001', 'P.C Unit', 'Think Centre M720t', '2019', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'BPS Kota Malang', '2021-01-20 23:19:23', NULL),
(174, '3.10.01.02.002', 'Lap Top', 'TOSHIBA', '2006', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:19:57', NULL),
(175, '3.10.01.02.002', 'Lap Top', 'LENOVO/THINKPAD L412', '2010', 5, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:21:59', '2021-01-23 18:26:22'),
(176, '3.10.01.02.002', 'Lap Top', 'Fujitsu/Life book T580', '2011', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'asset', '2021-01-20 23:23:17', '2021-01-23 18:28:01'),
(177, '3.10.01.02.002', 'Lap Top', 'LENOVO YOGA 3 PRO 17 WIN 8', '2014', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:24:08', NULL),
(178, '3.10.01.02.003', 'Note Book', 'Fujitsu/SH782', '2013', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:26:38', NULL),
(179, '3.10.01.02.003', 'Note Book', 'Fujitsu/SH782', '2013', 1, 'Buah', 'Milik Sendiri', 3, 'Rusak Berat', 'Kondisi Rusak', '2021-01-20 23:27:22', NULL),
(180, '3.10.02.01.001', 'Card Reader (Peralatan Mainframe)', 'Fujitsu', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:27:56', NULL),
(181, '3.10.02.02.015', 'Auto Switch/Data Switch', 'EDGE/CorE ES4528V', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:28:32', NULL),
(182, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'Fuji Xerox Docuprint C3055', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-20 23:29:00', NULL),
(183, '3.05.02.04.004', 'A.C. Split', 'AC SHARP 1 PK', '2014', 1, 'Buah', 'Milik Sendiri', 7, 'Baik', '', '2021-01-22 15:25:57', NULL),
(184, '3.10.01.02.001', 'P.C Unit', 'PC LENOVO H5SOS I5LINUX', '2014', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-23 19:06:49', '2021-01-23 19:07:15'),
(185, '3.10.01.02.001', 'P.C Unit', 'Dell/Optiplex 780', '2010', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-23 19:14:09', NULL),
(186, '3.10.01.02.008', 'Ultra Mobile P.C', 'Fujitsu M532', '2013', 3, 'Buah', '-', 5, 'Baik', '', '2021-01-23 19:15:49', NULL),
(187, '3.10.02.02.004', 'Storage Modul Disk (Peralatan Mini Komputer)', 'D/LINK', '2005', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-23 19:29:05', NULL),
(188, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'HP Laserjet P2055D', '2011', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', 'Asset', '2021-01-23 19:30:13', NULL),
(189, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'Canon G2010 Pixma', '2018', 2, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-23 19:31:18', NULL),
(190, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'EPSON L120', '2018', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-23 19:32:28', NULL),
(191, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'Laserjet Enterprise M507dn', '2019', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', 'BPS Kota Malang', '2021-01-23 19:33:37', NULL),
(192, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'Epson L 6160', '2020', 1, 'Buah', 'Milik Sendiri', 5, 'Baik', '', '2021-01-23 19:34:28', NULL),
(193, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'Printer xEROX PHASER 3438', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:09:46', NULL),
(194, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'FUJI XEROX DPCM 215B', '2014', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:10:42', NULL),
(195, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'HP LaserJet Pro M201dw', '2015', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:11:23', NULL),
(196, '3.10.02.03.003', 'Printer (Peralatan Personal Komputer)', 'Epson Printer InkJet L1455', '2018', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'Epson Printer InkJet', '2021-01-24 14:13:24', NULL),
(197, '3.10.02.03.004', 'Scanner(Peralatan Personal Komputer)', 'Fujitsu Image Scanner fi07260', '2015', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:14:13', NULL),
(198, '3.10.02.03.007', 'External', 'External Hardisk Buffalo/HD.HS.500-U2', '2008', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'Lengkap dengan', '2021-01-24 14:14:58', NULL),
(199, '3.10.02.03.007', 'External', 'Samsung/Slim External DVD Writer', '2011', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'Asset', '2021-01-24 14:21:43', NULL),
(200, '3.10.02.03.007', 'External', 'Buffalo/HD PXT1TU2', '2011', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', 'Asset', '2021-01-24 14:22:34', NULL),
(201, '3.10.02.03.007', 'External', 'Seagate 2T', '2014', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:34:50', NULL),
(202, '3.10.02.03.013', 'Capture Card', 'Dazzle Fusion', '2014', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:37:22', NULL),
(203, '3.10.02.04.001', 'Server', 'FUJITSU/PRIMERGY RX300S5 ', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:39:28', NULL),
(204, '3.10.02.04.003', 'Hub', 'ACSYS/8PORT', '2001', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:40:22', NULL),
(205, '3.10.02.04.015', 'Firewall', 'Dell SonicWALL TZ 300 Wireless', '2015', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:41:50', NULL),
(206, '3.10.02.04.024', 'Switch', 'Dell Networking X1018', '2015', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:42:37', NULL),
(207, '8.01.01.01.001', 'Software Komputer', 'kofax capture', '2013', 3, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:43:20', NULL),
(208, '8.01.01.01.001', 'Software Komputer', 'App DEvice', '2013', 3, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:44:28', NULL),
(209, '8.01.01.01.001', 'Software Komputer', 'anti virus/scendpoint', '2013', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:45:10', NULL),
(210, '8.01.01.01.001', 'Software Komputer', 'APLIKASI PERKANTORAN', '2013', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:45:51', NULL),
(211, '8.01.01.01.001', 'Software Komputer', 'APLIKASI PENDUKUNG', '2013', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:46:32', NULL),
(212, '8.01.01.01.001', 'Software Komputer', 'windows server', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:47:16', NULL),
(213, '8.01.01.01.001', 'Software Komputer', 'Sql/SERVER', '2010', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:48:09', NULL),
(214, '8.01.01.01.001', 'Software Komputer', 'AXWAY/SECURE', '2012', 1, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:48:49', NULL),
(215, '8.01.01.01.001', 'Software Komputer', '-', '2013', 6, 'Buah', 'Milik Sendiri', 3, 'Baik', '', '2021-01-24 14:50:28', NULL),
(216, '8.01.01.01.001', 'Software Komputer', 'TRENDMICRO Smart Protection', '2018', 4, 'Buah', 'Milik Sendiri', 3, 'Baik', 'BPS Kota Malang', '2021-01-24 14:51:06', '2021-01-24 14:52:25'),
(217, '8.01.01.01.001', 'Software Komputer', 'Microsoft Officeproplus 2019 OLP NL GOV', '2019', 2, 'Buah', 'Milik Sendiri', 3, 'Baik', 'BPS Kota Malang', '2021-01-24 14:51:48', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kendaraan`
--

CREATE TABLE `tb_kendaraan` (
  `id_kendaraan` int(11) NOT NULL,
  `kode_kendaraan` varchar(20) NOT NULL,
  `merk_kendaraan` varchar(50) NOT NULL,
  `tipe_kendaraan` varchar(50) NOT NULL,
  `kategori_kendaraan` varchar(15) NOT NULL,
  `nopol` varchar(20) NOT NULL,
  `pj_kendaraan` varchar(50) NOT NULL,
  `no_bpkb` varchar(25) NOT NULL,
  `tanggal_peroleh` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kendaraan`
--

INSERT INTO `tb_kendaraan` (`id_kendaraan`, `kode_kendaraan`, `merk_kendaraan`, `tipe_kendaraan`, `kategori_kendaraan`, `nopol`, `pj_kendaraan`, `no_bpkb`, `tanggal_peroleh`, `foto`, `keterangan`, `created`, `modified`) VALUES
(8, '3.02.01.02.003', 'Toyota All New Kijang', 'Kijang Inova 2017', 'Bus', 'N 38 AP', 'Kepala BPS Kota Malang', 'N-03462299', '2017-08-15', 'INOVA1.jpg', 'Termasuk Perlengkapan P3K dan TOOLKIT', '2021-01-21 17:02:45', '2021-01-21 17:27:37'),
(9, '3.02.01.04.001', 'Honda Mega Pro Spoke', 'Mega Pro Spoke 156,7 cc 2010', 'Motor', 'N 3225 AP', 'Kendaraan Operasional', 'H-01567546', '2010-04-20', 'HONDAMEGA.jpg', 'Termasuk Helm', '2021-01-21 17:09:18', '2021-01-21 17:28:28'),
(10, '3.02.01.04.001', 'Honda Mega Pro Spoke', 'Mega Pro Spoke 156,7 cc 2010', 'Motor', 'N 3224 AP', 'Heru Prasetyo,SE', 'H-01567545', '2010-04-20', 'HONDAMEGA1.jpg', 'Termasuk Helm dan lain-lain', '2021-01-21 17:13:41', '2021-01-21 17:29:30'),
(11, '3.02.01.04.001', 'Honda', 'Supra X 125 Spoke 2010', 'Motor', 'N 3226 AP', 'Hery Suyanto,SE', 'H-01567547', '2010-04-20', 'HONDASUPRAX.jpg', 'Termasuk Helm dan lain-lain', '2021-01-21 17:16:27', '2021-01-21 17:30:22'),
(12, '3.02.01.04.001', 'Honda', 'Supra X 125 Spoke 2010', 'Motor', 'N 3227 AP', 'Ir. Ernawaty, MM', 'H-01567548J', '2010-04-20', 'HONDASUPRAX1.jpg', 'Termasuk Helm dan lain-lain', '2021-01-21 17:18:08', '2021-01-21 17:31:11'),
(13, '3.02.01.04.001', 'Honda/Revo Fit', 'NF11B2DI 2011', 'Motor', 'N 2485 BP', 'Henry S. Handoko, SST', 'I-03503042', '2011-09-16', 'HONDAREVO.jpg', '-', '2021-01-21 17:21:25', '2021-01-21 17:31:59'),
(14, '3.02.01.04.001', 'Honda/Revo Fit', 'NF11B2DI 2011', 'Motor', 'N 2484 BP', 'Ir. Dwi H. Prasetyawati, M.AP', 'I-03503041', '2011-09-16', 'HONDAREVO1.jpg', '-', '2021-01-21 17:35:11', NULL),
(15, '3.02.01.04.001', 'Honda Supra X 125 TR', 'NF 1245TR 2014', 'Motor', 'N 3771 AP', 'Yusuf Fatoni,SE', 'K-11319236', '2013-12-09', 'HONDASUPRAX125.jpg', 'Helm', '2021-01-21 17:39:40', NULL),
(16, '3.02.01.04.001', 'Honda Supra X 125 TR', 'NF 125 TR 2014', 'Motor', 'N 3762 AP', 'Wahyu Hery Supriyanto', 'K-11319237', '2013-12-09', 'HONDASUPRAX1251.jpg', 'Helm', '2021-01-21 17:41:38', NULL),
(17, '3.02.01.04.001', 'Honda Supra X 125 TR', 'NF 125 TR 2014', 'Motor', 'N 3772 AP', 'Saruni Gincahyo,SE', 'K-11319238', '2013-12-09', 'HONDASUPRAX1252.jpg', 'Helm', '2021-01-21 17:43:56', NULL),
(18, '3.02.01.04.001', 'Honda Supra X 125 TR', 'NF 125 TR 2014', 'Motor', 'N 3753 AP', 'Rendra Anandhika, A.Md', 'K-11319239', '2013-12-09', 'HONDASUPRAX1253.jpg', 'Helm', '2021-01-21 17:45:45', NULL),
(19, '3.02.01.04.001', 'Yamaha Jupiter MX', '55S(TI35SEC) 2015', 'Motor', 'N 3526 BP', 'Rony Mugiartono', 'M-00903285', '2015-07-10', 'YAMAHA.jpg', 'Helm', '2021-01-21 17:49:09', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ruang`
--

CREATE TABLE `tb_ruang` (
  `id_ruang` int(11) NOT NULL,
  `kode_ruang` varchar(11) NOT NULL,
  `uraian_ruang` varchar(20) NOT NULL,
  `lantai` int(11) NOT NULL,
  `pj_ruang` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_ruang`
--

INSERT INTO `tb_ruang` (`id_ruang`, `kode_ruang`, `uraian_ruang`, `lantai`, `pj_ruang`, `nip`, `no_tlp`, `alamat`, `created`, `modified`) VALUES
(1, '010106', 'Ruang Lobby', 1, 'Rachmad Widi W', '19770404 200604 1 016', '-', '-', '2021-01-14 18:06:36', '2021-01-19 18:25:38'),
(2, '010107', 'Ruang Perpustakaan', 1, 'Heru Prasetyo, SE', '196312041990031001', '-', '-', '2021-01-14 18:06:36', '2021-01-19 18:39:58'),
(3, '010104', 'Ruang IPDS', 1, 'Heru Prasetyo, SE', '196312041990031001', '-', '-', '2021-01-14 18:06:36', '2021-01-19 18:38:01'),
(4, '010102', 'Ruang TU', 1, 'Rony Mugiartono', '196510051988031002', '-', '-', '2021-01-14 18:06:36', '2021-01-19 18:27:57'),
(5, '010103', 'Ruang Tehnis', 1, 'Ir. Dwi Handayani Prasetyawati, M.AP', '196810281994012001', '-', '-', '2021-01-14 18:06:36', '2021-01-19 18:36:27'),
(6, '010101', 'Ruang Kepala', 2, 'Drs. Sunaryo, M. Si', '196310041991021001', '-', '-', '2021-01-14 18:06:36', '2021-01-19 18:31:33'),
(7, '010108', 'Ruang Rapat', 2, 'Ir. Ernawaty', '196701091993032001', '-', '-', '2021-01-14 18:06:36', '2021-01-19 18:42:06'),
(8, '010109', 'Ruang KSK', 2, 'Saruni Gincahyo, SE', '196802281989031003', '-', '-', '2021-01-14 18:06:36', '2021-01-19 18:32:54'),
(9, '010105', 'Ruang Gudang', 1, 'Rachmad Widi W', '197704042006041016', '-', '-', '2021-01-14 18:06:36', '2021-01-19 18:40:57'),
(10, '0101010', 'Gardu Genset', 1, 'Rony Mugiartono', '196510051988031002', '-', '-', '2021-01-19 17:30:07', '2021-01-19 18:44:20'),
(11, '0101011', 'Halaman', 1, 'Rony Mugiartono', '196510051988031002', '-', '-', '2021-01-19 17:36:12', '2021-01-19 18:44:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto_admin` varchar(100) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `nip`, `username`, `password`, `foto_admin`, `role_id`) VALUES
(1, 'Hunulan', '18773671819200', 'admin', 'admin123', 'IMG_20210113_135852_216.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_ruang` (`id_ruang`);

--
-- Indexes for table `tb_kendaraan`
--
ALTER TABLE `tb_kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `tb_ruang`
--
ALTER TABLE `tb_ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT for table `tb_kendaraan`
--
ALTER TABLE `tb_kendaraan`
  MODIFY `id_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `id_ruang` FOREIGN KEY (`id_ruang`) REFERENCES `tb_ruang` (`id_ruang`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
