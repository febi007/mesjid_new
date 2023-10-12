-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 02:46 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_masjid`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE IF NOT EXISTS `assets` (
  `id_assets` int(11) NOT NULL,
  `id_kel_assets` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `nama_assets` varchar(255) NOT NULL,
  `tgl_beli_assets` date NOT NULL,
  `qty_assets` varchar(64) NOT NULL,
  `harga_assets` varchar(64) NOT NULL,
  `total_assets` varchar(64) NOT NULL,
  `umur_assets` date NOT NULL,
  `supplier` varchar(64) NOT NULL,
  `foto_assets` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id_assets`, `id_kel_assets`, `id_masjid`, `id_pengurus`, `nama_assets`, `tgl_beli_assets`, `qty_assets`, `harga_assets`, `total_assets`, `umur_assets`, `supplier`, `foto_assets`) VALUES
(39, 15, 18, 20, 'SoundSystem', '2010-12-12', '1', '5000000', '5000000', '2020-12-12', 'CHANGHONG', 'Assets_SoundSystem_19-03-17.jpg'),
(40, 16, 18, 20, 'Karpet', '2019-03-17', '1', '1000000', '1000000', '2024-03-17', 'http://mitrakarpet.com', 'Assets_Karpet_19-03-17.jpg'),
(41, 15, 18, 20, 'Mimbar', '2019-03-17', '1', '5000000', '5000000', '2030-06-11', 'Kayu Jepara', 'Assets_Mimbar_19-03-17.jpg'),
(42, 17, 25, 4, 'Karpet', '2019-12-12', '2', '1000000', '2000000', '2020-12-12', 'ANASHRUL YSUUF', 'Assets_Karpet_19-07-21.jpg'),
(43, 17, 25, 4, 'Mimbar', '1212-12-12', '1', '4500000', '4500000', '1212-12-12', 'ANNASHRUL YSUUF', 'Assets_Mimbar_19-07-21.jpg'),
(44, 17, 25, 4, 'Microphone', '2019-12-09', '3', '250000', '750000', '2025-01-01', 'ANNASHRUL YUSUF', 'Assets_Microphone_19-07-24.png');

-- --------------------------------------------------------

--
-- Table structure for table `formulir_pemesanan`
--

CREATE TABLE IF NOT EXISTS `formulir_pemesanan` (
  `id_masjid` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `kd_pemesan` varchar(15) DEFAULT NULL,
  `nama_pemesan` varchar(255) NOT NULL,
  `alamat_pemesan` text NOT NULL,
  `jumlah_uang` varchar(32) NOT NULL,
  `jumlah_infaq` varchar(32) NOT NULL,
  `catatan_khusus` text,
  `tgl_pemesanan` date NOT NULL,
  `id_formulir_pemesanan` int(11) NOT NULL,
  `no_pemesanan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `id_kegiatan` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `kd_jadwal` varchar(15) DEFAULT NULL,
  `uang_transport` varchar(20) NOT NULL,
  `nama_imam` varchar(32) NOT NULL,
  `waktu` date NOT NULL,
  `tgl_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_masjid`, `id_kegiatan`, `id_pengurus`, `kd_jadwal`, `uang_transport`, `nama_imam`, `waktu`, `tgl_insert`) VALUES
(50, 18, 10, 47, 'J190800001', '300000', 'Aceng Qudsi', '2019-08-13', '2019-08-05 17:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `jamaah`
--

CREATE TABLE IF NOT EXISTS `jamaah` (
  `id_jamaah` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `no_jamaah` varchar(11) NOT NULL,
  `status_jamaah` varchar(32) NOT NULL,
  `nama_jamaah` varchar(64) NOT NULL,
  `alamat_jamaah` text NOT NULL,
  `pendidikan_jamaah` varchar(32) NOT NULL,
  `tgl_lahir_jamaah` date NOT NULL,
  `jenis_kelamin_jamaah` varchar(20) NOT NULL,
  `pekerjaan_jamaah` varchar(20) NOT NULL,
  `no_telepon_jamaah` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jamaah`
--

INSERT INTO `jamaah` (`id_jamaah`, `id_masjid`, `no_jamaah`, `status_jamaah`, `nama_jamaah`, `alamat_jamaah`, `pendidikan_jamaah`, `tgl_lahir_jamaah`, `jenis_kelamin_jamaah`, `pekerjaan_jamaah`, `no_telepon_jamaah`) VALUES
(155, 0, '', '', 'acuy', 'kbm', '', '0000-00-00', '', '', ''),
(156, 0, '', '', 'acuy', 'kbm', '', '0000-00-00', '', '', ''),
(159, 19, 'NOKK2-0001', 'Kepala-Keluarga', 'Asep Burhan', 'jln kebon manggu', 'SMA / SMK', '1978-09-09', 'Laki-Laki', 'wirausaha', '0895656919'),
(160, 19, 'NOKK2-0001', 'Istri', 'Ririn Rianti', 'jln kebon manggu', 'SMA / SMK', '1980-01-02', 'Perempuan', 'IRT', '085324544191'),
(161, 19, 'NOKK2-0001', 'Anak', 'Sidiq Permana', 'jln kebon manggu', 'SMA / SMK', '2005-10-12', 'Laki-Laki', 'Masih Sekolah', ''),
(174, 18, 'NOKK10002', 'Kepala-Keluarga', 'asd', 'asdad', 'Belum-Sekolah', '1212-12-12', 'Laki-Laki', 'adasd', '12123132');

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE IF NOT EXISTS `kas` (
  `id_kas` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `kd_kas` varchar(20) NOT NULL,
  `jenis_kas` varchar(64) NOT NULL,
  `kas_in` varchar(32) NOT NULL,
  `kas_out` varchar(32) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` date NOT NULL,
  `saldo` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kas`
--

INSERT INTO `kas` (`id_kas`, `id_masjid`, `id_pengurus`, `kd_kas`, `jenis_kas`, `kas_in`, `kas_out`, `keterangan`, `tanggal`, `saldo`) VALUES
(63, 18, 49, 'Z190800003', 'Kas-Masuk', '20000', '0', 'shodaqoh dari Andara', '2019-08-05', '9295000'),
(64, 18, 47, 'Z190800004', 'Kas-Masuk', '50000', '0', 'shodaqoh dari acuy', '2019-08-05', '9300000'),
(70, 18, 47, 'P190800001', 'Kas-Keluar', '0', '1000000', 'Project Pembangunan Pagar Depan', '2019-08-05', '0'),
(71, 18, 47, 'P190800003', 'Kas-Keluar', '0', '2000000', 'Project Tempat Wudhu dan Kamar Mandi', '2019-08-05', '0'),
(72, 18, 47, 'KKM190800001', 'Kas-Masuk', '2000000', '0', 'Kencleng Jumatan', '2019-08-02', ''),
(73, 18, 47, 'J190800001', 'Kas-Keluar', '0', '300000', 'biaya transport ustad/ustadzah Aceng Qudsi', '2019-08-06', '0'),
(74, 18, 47, 'KKM190800001', 'Kas-Masuk', '2000000', '0', 'Sumbangan Dari Pak Dewan', '2019-08-06', ''),
(75, 18, 47, 'Z190800007', 'Kas-Masuk', '100000', '0', 'shodaqoh dari Gunawan', '2019-08-06', '-7130000'),
(76, 18, 47, 'Z190800008', 'Kas-Masuk', '10000', '0', 'shodaqoh dari Dadang', '2019-08-06', '880000'),
(77, 18, 47, 'K200500001-1', 'Kas-Masuk', '100000', '0', '-', '2020-05-08', ''),
(78, 18, 47, 'Z200500001-1', 'Kas-Masuk', '10000', '0', 'shodaqoh dari acuy', '2020-05-08', '');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE IF NOT EXISTS `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `nama_kegiatan` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `id_masjid`, `nama_kegiatan`) VALUES
(4, 18, 'Idul Fitri'),
(10, 18, 'Idul Adha'),
(11, 18, 'Jumatan'),
(12, 18, 'Pengajian Jumat'),
(13, 18, 'Lain');

-- --------------------------------------------------------

--
-- Table structure for table `kel_assets`
--

CREATE TABLE IF NOT EXISTS `kel_assets` (
  `id_kel_assets` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `nama_kel_assets` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_kel_assets` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kel_assets`
--

INSERT INTO `kel_assets` (`id_kel_assets`, `id_masjid`, `id_pengurus`, `nama_kel_assets`, `keterangan`, `tgl_kel_assets`) VALUES
(13, 0, 0, 'Elektronik', 'khusus barang barang elektornik', '2019-02-07 18:27:08'),
(14, 0, 0, 'elektronik', 'khusus bahan elektronik', '2019-02-07 19:00:11'),
(15, 18, 47, 'BARANG ELEKTRONIK', 'KHUSUS UNTUK BARANG - BARANG ELEKTRONIK', '2019-08-05 18:23:36'),
(16, 18, 47, 'Lainnya', 'LAINNYA', '2019-08-05 18:23:30'),
(17, 25, 4, 'Assets Mati', 'Lainnya', '2019-07-21 16:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id_log` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `keterangan` text NOT NULL,
  `data` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `id_masjid`, `id_pengurus`, `aksi`, `keterangan`, `data`, `tanggal`) VALUES
(1, 18, 47, 'add', 'kas', '{"kas":[{"id_masjid":"18","id_pengurus":"47","kd_kas":"K200500001-1","jenis_kas":"Kas-Masuk","kas_in":"100000","kas_out":"0","tanggal":"2020-05-08","keterangan":"-"}]}', '2020-05-08 16:42:18'),
(2, 18, 47, 'add', 'zakat,kas', '{"zakat":[{"id_masjid":"18","id_pengurus":"47","kd_zakat":"Z200500001-1","nama":"acuy","alamat":"kbm","jumlah_jiwa":"5","bentuk_zakat":"Uang","jenis_zakat":"Fitrah","total_zakat":"187500","shodaqoh":"10000"}],"kas":[{"id_masjid":"18","id_pengurus":"47","kd_kas":"Z200500001-1","jenis_kas":"Kas-Masuk","kas_in":"10000","kas_out":0,"keterangan":"shodaqoh dari acuy","tanggal":"2020-05-08"}]}', '2020-05-08 16:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `masjid`
--

CREATE TABLE IF NOT EXISTS `masjid` (
  `id_masjid` int(11) NOT NULL,
  `no_masjid` varchar(20) NOT NULL,
  `nama_masjid` varchar(255) NOT NULL,
  `alamat_masjid` text NOT NULL,
  `thn_berdiri` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masjid`
--

INSERT INTO `masjid` (`id_masjid`, `no_masjid`, `nama_masjid`, `alamat_masjid`, `thn_berdiri`) VALUES
(18, '1', 'GRIYA BANDUNG INDAH', 'Komplek Griya Bandung Indah', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE IF NOT EXISTS `pengurus` (
  `id_pengurus` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `nama_pengurus` varchar(64) NOT NULL,
  `jk_pengurus` varchar(20) NOT NULL,
  `tgl_lahir_pengurus` date NOT NULL,
  `pendidikan_pengurus` varchar(32) NOT NULL,
  `no_hp_pengurus` varchar(20) NOT NULL,
  `photo_pengurus` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id_pengurus`, `id_masjid`, `nama_pengurus`, `jk_pengurus`, `tgl_lahir_pengurus`, `pendidikan_pengurus`, `no_hp_pengurus`, `photo_pengurus`) VALUES
(47, 18, 'Andri Sani Awaludin', 'Laki-Laki', '1987-04-01', 'S3', '081234845789', 'assets/upload/pengurus/FB_IMG_14565214991373715.jpg'),
(49, 18, 'Annashrul Yusuf', 'Laki-Laki', '1997-04-06', 'SD', '089646849271', 'assets/upload/pengurus/FB_IMG_145652152506820471.jpg'),
(50, 18, 'Eva Retnawati', 'Perempuan', '1992-03-16', 'S3', '085324544191', 'assets/upload/pengurus/04f498a2f6a591c59f3adffc9f201dec0bbfdfc7.jpg'),
(51, 18, 'Okta Febri Pangestu', 'Laki-Laki', '1996-10-21', 'S1', '089487458673', 'assets/upload/pengurus/no_image.png'),
(53, 18, 'asd', 'Laki-Laki', '2020-05-08', 'SD', '345', 'assets/upload/pengurus/sapi-kambing1.png');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id_project` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `kd_project` varchar(15) DEFAULT NULL,
  `nama_project` varchar(255) NOT NULL,
  `keterangan_project` text NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `status_project` varchar(32) NOT NULL,
  `kas` varchar(32) NOT NULL,
  `donatur` varchar(32) NOT NULL,
  `sumbangan` varchar(32) NOT NULL,
  `biaya_anggaran` varchar(32) NOT NULL,
  `total_realisasi` varchar(32) NOT NULL,
  `total_sumber_dana` varchar(32) NOT NULL,
  `total_biaya_project` varchar(32) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tgl_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id_project`, `id_pengurus`, `id_masjid`, `kd_project`, `nama_project`, `keterangan_project`, `tgl_mulai`, `tgl_akhir`, `status_project`, `kas`, `donatur`, `sumbangan`, `biaya_anggaran`, `total_realisasi`, `total_sumber_dana`, `total_biaya_project`, `foto`, `tgl_insert`) VALUES
(19, 47, 18, 'P190800001', 'Pembangunan Pagar Depan', 'pembangunan pagar depan masjid dIselenggarakan pada tanggal 5 agustus 2019 atas kesepakatan bersama', '2019-08-05', '2019-12-01', 'Perencanaan', '1000000', '5000000', '4000000', '10000000', '10000000', '10000000', '0', 'assets/upload/project/ProjectPembangunan_Pagar_Depan_19-08-05.jpg', '2019-08-05 16:12:08'),
(20, 47, 18, 'P190800002', 'Pembuatan Jet Pump ', 'pembuatan jet pump di depan halaman masjid akan dimulai pada tanggal 1 november 2019 dengan kesepakatan bersama', '2019-11-01', '2019-12-31', 'Perencanaan', '0', '8000000', '7000000', '15000000', '15000000', '15000000', '0', 'assets/upload/project/ProjectPembuatan_Jet_Pump__19-08-05.jpg', '2019-08-05 18:07:38'),
(21, 47, 18, 'P190800003', 'Tempat Wudhu dan Kamar Mandi', 'Pembangunan Tempat Wudhu dan Kamar Mandi akan diselenggarakan pada tanggal 1 oktober 2019 dan perkiraan selesai pada tanggal 1 januari 2020', '2019-10-01', '2020-01-31', 'Perencanaan', '2000000', '25000000', '18000000', '45000000', '45000000', '45000000', '0', 'assets/upload/project/ProjectPembangunan_Tempat_Wudhu_dan_Kamar_Mandi_19-08-05.jpg', '2019-08-05 18:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `undangan`
--

CREATE TABLE IF NOT EXISTS `undangan` (
  `id_undangan` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undangan`
--

INSERT INTO `undangan` (`id_undangan`, `id_masjid`, `no_hp`, `pesan`, `tanggal`) VALUES
(11, 18, '085324544191', 'test', '2018-12-10 19:36:02'),
(12, 18, '081234567891', 'test', '2018-12-10 19:36:02'),
(13, 18, '081234567891', 'test', '2018-12-10 19:37:21'),
(14, 18, '085324544191', 'Ini Sms Ke Dedi Rahmat', '2018-12-10 20:16:28'),
(15, 18, '089646849271', '', '2019-01-18 21:42:21'),
(16, 18, '085324544191', '', '2019-01-18 21:42:36'),
(17, 18, '081234567891', '', '2019-01-18 21:42:36'),
(18, 18, '089646849271', 'asdasdasd', '2019-03-07 12:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_akun`
--

CREATE TABLE IF NOT EXISTS `user_akun` (
  `id_user_akun` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `hak_akses` varchar(32) NOT NULL,
  `akses` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_akun`
--

INSERT INTO `user_akun` (`id_user_akun`, `id_masjid`, `id_pengurus`, `username`, `password`, `hak_akses`, `akses`) VALUES
(43, 18, 0, 'griyabandungindah', 'griyabandungindah', 'super', ''),
(44, 18, 47, 'andrisaniawaludin', 'andrisaniawaludin', 'ketua', ''),
(46, 18, 49, 'annashrulyusuf', 'annashrulyusuf', 'sekretaris', ''),
(47, 18, 50, 'evaretnawati', 'evaretnawati', 'bendahara', ''),
(48, 18, 51, 'oktafebripangestu', 'oktafebripangestu', 'anggota', ''),
(49, 18, 53, 'asd', 'asd', 'ketua', '1111111111111111111111111111111111111111');

-- --------------------------------------------------------

--
-- Table structure for table `user_lvl`
--

CREATE TABLE IF NOT EXISTS `user_lvl` (
  `id_level` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zakat`
--

CREATE TABLE IF NOT EXISTS `zakat` (
  `id_zakat` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `kd_zakat` varchar(20) NOT NULL,
  `jenis_zakat` varchar(20) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `jumlah_jiwa` varchar(20) NOT NULL,
  `bentuk_zakat` varchar(20) NOT NULL,
  `shodaqoh` varchar(20) NOT NULL,
  `total_zakat` varchar(20) NOT NULL,
  `tgl_bayar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zakat`
--

INSERT INTO `zakat` (`id_zakat`, `id_masjid`, `id_pengurus`, `kd_zakat`, `jenis_zakat`, `nama`, `alamat`, `jumlah_jiwa`, `bentuk_zakat`, `shodaqoh`, `total_zakat`, `tgl_bayar`) VALUES
(66, 18, 49, 'Z190800003', 'Fitrah', 'Andara', 'griya bandung indah', '2', 'Uang', '20000', '75000', '2019-08-05 05:16:20'),
(67, 18, 47, 'Z190800004', 'Fitrah', 'acuy', 'jln kebon manggu', '5', 'Beras', '50000', '12.5', '2019-08-05 15:51:18'),
(69, 18, 47, 'Z190800005', 'Mall', 'Dedi', 'jln kebon manggu', '1', 'Uang', '0', '1000000', '2019-08-05 10:26:22'),
(70, 18, 47, 'Z190800006', 'Fidyah', 'Maman', 'jln kebon manggu', '1', 'Uang', '0', '75000', '2019-08-05 10:38:14'),
(71, 18, 47, 'Z190800007', 'Mall', 'Gunawan', 'jln kebon manggu', '1', 'Uang', '100000', '10000000', '2019-08-05 17:29:20'),
(72, 18, 47, 'Z190800008', 'Fitrah', 'Dadang', 'jln kebon manggu', '5', 'Uang', '10000', '162500', '2019-08-06 14:24:45'),
(73, 18, 47, 'Z200500001-1', 'Fitrah', 'acuy', 'kbm', '5', 'Uang', '10000', '187500', '2020-05-08 16:43:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id_assets`);

--
-- Indexes for table `formulir_pemesanan`
--
ALTER TABLE `formulir_pemesanan`
  ADD PRIMARY KEY (`id_formulir_pemesanan`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jamaah`
--
ALTER TABLE `jamaah`
  ADD PRIMARY KEY (`id_jamaah`);

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id_kas`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `kel_assets`
--
ALTER TABLE `kel_assets`
  ADD PRIMARY KEY (`id_kel_assets`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `masjid`
--
ALTER TABLE `masjid`
  ADD PRIMARY KEY (`id_masjid`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id_pengurus`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indexes for table `undangan`
--
ALTER TABLE `undangan`
  ADD PRIMARY KEY (`id_undangan`);

--
-- Indexes for table `user_akun`
--
ALTER TABLE `user_akun`
  ADD PRIMARY KEY (`id_user_akun`);

--
-- Indexes for table `user_lvl`
--
ALTER TABLE `user_lvl`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `zakat`
--
ALTER TABLE `zakat`
  ADD PRIMARY KEY (`id_zakat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id_assets` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `formulir_pemesanan`
--
ALTER TABLE `formulir_pemesanan`
  MODIFY `id_formulir_pemesanan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `jamaah`
--
ALTER TABLE `jamaah`
  MODIFY `id_jamaah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `id_kas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `kel_assets`
--
ALTER TABLE `kel_assets`
  MODIFY `id_kel_assets` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `masjid`
--
ALTER TABLE `masjid`
  MODIFY `id_masjid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id_pengurus` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `undangan`
--
ALTER TABLE `undangan`
  MODIFY `id_undangan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_akun`
--
ALTER TABLE `user_akun`
  MODIFY `id_user_akun` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `user_lvl`
--
ALTER TABLE `user_lvl`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zakat`
--
ALTER TABLE `zakat`
  MODIFY `id_zakat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
