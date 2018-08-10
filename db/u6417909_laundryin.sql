-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2018 at 06:44 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6417909_laundryin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `hash` varchar(250) DEFAULT NULL,
  `telp` varchar(250) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `aktif` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 = aktif ; 2 = non-aktif',
  `reset_password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `hash`, `telp`, `alamat`, `aktif`, `reset_password`) VALUES
(1, 'administrator', 'admin@laundry-in.com', '$2y$10$4WP6KWQ2uwdkDNAi4x.kxON6iL9f1PT8BqkQFRCDUn9UjSk/D1bAO', NULL, '085747436804', 'Jl. Kabupaten No.110, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291', 1, ''),
(2, 'Gome_dev', 'lab.gomein@gmail.com', '$2y$10$2HPaGWt33GHnB0pwu3CtJ.xtXxrK6k53yYVpadwZnSNl1rnRNQSS6', NULL, '1', 'yogya', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `hash` varchar(250) DEFAULT NULL,
  `telp` varchar(250) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `aktif` int(1) UNSIGNED NOT NULL DEFAULT '2' COMMENT '1 = aktif ; 2 = non-aktif',
  `reset_password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`id`, `nama`, `email`, `password`, `hash`, `telp`, `alamat`, `aktif`, `reset_password`) VALUES
(1, 'Webpakar.com', '1', 'c4ca4238a0b923820dcc509a6f75849b', 'e8529400b26a4d28bfc6f1f46dcf772e', '085747436804', 'Jl. Kabupaten No.110, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291', 2, ''),
(48, 'reki andre putra', 'rekiandre67@gmail.com', '$2y$10$c42SqeTBItxjqgoAN75NKuyhkKo05XDg20a5RpzPfXKHHDUIHAw.e', NULL, '081281299624', 'jl abdul wahab s yahrani gang 555 gunung Kelua Samarinda ulu\n\n\n\n\n\n\n', 1, NULL),
(49, 't', 't', '$2y$10$RLNdhj73KUV.iP7ywiqqPe5UOENI49Q3tJJwn4w7qF5VcwF26R1/G', NULL, 't', 't', 2, NULL),
(50, 'goten', 'goten', '$2y$10$C1TcXcMVk02JFFfS9B6l/e76mukTM1yetI6OSXyZWpqcuWPgbIp4C', NULL, '10283747', 'goten', 2, NULL),
(51, 'pan', 'pan', '$2y$10$XuFua5l3j5zHcGiEjWceBOceC3m7fYgiqfZszqVFmazQ33A7QeILW', NULL, '1228384', 'bumi', 2, NULL),
(52, 'teskurir', 'teskurir@gmail.com', '$2y$10$yCCqW17Qj80JeqVDxR.NmOFhrvNN5.kn9RfTjeHLfeFariWgBmCHa', NULL, '0759746333', 'Jogja', 2, NULL),
(53, 'gome', 'lab.gomein@gmail.com', '$2y$10$2HPaGWt33GHnB0pwu3CtJ.xtXxrK6k53yYVpadwZnSNl1rnRNQSS6', NULL, '1', 'a', 2, NULL),
(54, 'Goku', 'goku', '$2y$10$Z0pxGL9dAiEVQd8B3o48qe3DHc7kexpFMQkIUfC/p3RCcb2rH1vQG', NULL, '19293773', 'namek', 1, NULL),
(55, 'satria', 'satria211@yahoo.com', '$2y$10$aTOhd5QE6hq.iUUrGhBafO9r25/wdJLv7M.Yhw9XadRlnIBFLHjei', NULL, '085642110811', 'Samarinda', 1, NULL),
(56, 'bendol', 'jamputkuda@bendol.id', '$2y$10$k2oG3NgFw6sCSlprCaD79eiOPWcA/wFAm25fDe9APuTPpWxL1AzsK', NULL, '085725308319', 'Surabaya', 2, NULL),
(57, 'a', 'a', '$2y$10$VmI0vc0dECLcRXLohV3.WOsmcqSGj8pZKaSV8BN/0nxKUiRk4LS9u', NULL, 'a', 'a', 2, NULL),
(58, '3', '3', '$2y$10$1gc7By65mtvk5u/ZELi2Cu/QYEP2auI3cILkjn86n0ChfdiF6BCju', NULL, '3', '3', 2, NULL),
(59, 'mbendol', 'mendoljaya@laundry-in.com', '$2y$10$ws3rNxO7Q8wcwfj5Ibj.CODYTiCwxIczjQrLGwJqOnPpcO1UbqYxW', NULL, '085725308319', 'janti plh klaten', 1, NULL),
(60, 'Hera Budi Satria', 'Herabsatria@gmail.com', '$2y$10$SvsdUEfY5Mo1ZLYn5.Uvk.8VPYwSIrrH1VI2x8bw7J8muODVrZxIK', NULL, '085728654661', 'bololor,  rt 04 / rw 02, taji,  juwiring,  klaten', 1, NULL),
(61, 'Alfan Rasyidi', 'pelgemgempel@gmail.com', '$2y$10$6R1hcqNEODXRt3zvkyA55eFIHpC7G9hevLxfXh0Zj0Hx4K5MFhzfq', NULL, '085868190333', 'Janti, Polanharjo, Klaten', 1, NULL),
(62, 'zilong', 'zilong@laundry-in.com', '$2y$10$6axXC.hchOZe8x1fWHrpdO2/uJRlncujGKnA94pvbGGQTaCb0aHJa', NULL, '08837363628', 'turrent atas', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `tanggal_order` datetime DEFAULT NULL,
  `penjemputan_lokasi` text COMMENT 'json ; {"long":"isi", "lat":"isi", "nama:"isi"}',
  `penjemputan_note` text,
  `penjemputan_tanggal` date DEFAULT NULL,
  `penjemputan_waktu` time DEFAULT NULL,
  `pengerjaan_jenis` int(1) DEFAULT NULL COMMENT '1 = cuci ; 2 = setrika ; 3 = cuci + setrika ; ; hanya untuk data paket hemat',
  `pengerjaan_jam` int(10) UNSIGNED DEFAULT NULL COMMENT 'dalam menit  ; hanya untuk data paket hemat',
  `pengerjaan_harga` int(10) UNSIGNED DEFAULT NULL COMMENT 'dalam kilo  ; hanya untuk data paket hemat',
  `paket_hemat` int(10) UNSIGNED DEFAULT NULL COMMENT 'berat dalam gram ; hanya untuk data paket hemat',
  `premium` text COMMENT 'json ; hanya untuk data premium { "order" : [{"id":"", "nama":"","harga":"", "qty":""}], "total":""}',
  `premium_total` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'tambahan 2018-2-27  hanya dipakai untuk premium',
  `pembayaran` int(10) UNSIGNED DEFAULT NULL COMMENT 'null =belum ada pembayaran ; not null = sudah ada pembayaran ; perubahan 2018-2-27 lenght dirubah ke 10',
  `status` int(1) UNSIGNED DEFAULT NULL COMMENT '1 = menunggu penjemputan ; 2 = sudah di jemput ; 3 = diproses ; 4 = Pengantaran; 5 = Diterima dst',
  `status_user` int(1) UNSIGNED DEFAULT NULL COMMENT 'null = belum slesei ; 1 = slesei konfirmasi dari customer',
  `kurir_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `tanggal_order`, `penjemputan_lokasi`, `penjemputan_note`, `penjemputan_tanggal`, `penjemputan_waktu`, `pengerjaan_jenis`, `pengerjaan_jam`, `pengerjaan_harga`, `paket_hemat`, `premium`, `premium_total`, `pembayaran`, `status`, `status_user`, `kurir_id`) VALUES
(555, 526, '2018-08-02 16:25:14', '{\"alamat\":\"Jl. Melati 7, Klemburan, Baturan, Colomadu, Kabupaten Karanganyar, Jawa Tengah 57171, Indonesia\",\"lat\":\"-7.545342499999998\",\"long\":\"110.78855078125\",\"nama\":\"7°32\\u002743.2\\\"S 110°47\\u002718.8\\\"E\"}', 'Depan rumah tingkat tiga yang tulisanya dijual, atas nama mbak endang', '2018-08-02', '19:00:00', 0, 4320, 0, 0, '{\"order\":[{\"harga\":\"20000\",\"id\":\"1\",\"nama\":\"Bed Cover Besar\",\"qty\":\"1\"},{\"harga\":\"15000\",\"id\":\"7\",\"nama\":\"Bed Cover Kecil\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"8\",\"nama\":\"Seprei Besar\",\"qty\":\"1\"},{\"harga\":\"8000\",\"id\":\"9\",\"nama\":\"Seprei Kecil\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"10\",\"nama\":\"Selimut\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"11\",\"nama\":\"Taplak Meja\",\"qty\":\"0\"},{\"harga\":\"8000\",\"id\":\"12\",\"nama\":\"Taplak Kecil\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"15\",\"nama\":\"Tas Kain\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"16\",\"nama\":\"Boneka Besar\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"17\",\"nama\":\"Boneka Kecil\",\"qty\":\"0\"},{\"harga\":\"20000\",\"id\":\"20\",\"nama\":\"Tas Besar\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"21\",\"nama\":\"Tas Kecil\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"22\",\"nama\":\"Helm Biasa\",\"qty\":\"0\"},{\"harga\":\"20000\",\"id\":\"23\",\"nama\":\"Helm Fullface\",\"qty\":\"0\"},{\"harga\":\"25000\",\"id\":\"24\",\"nama\":\"Sepatu Sneakers\",\"qty\":\"0\"},{\"harga\":\"30000\",\"id\":\"25\",\"nama\":\"Sepatu Kulit\",\"qty\":\"0\"}],\"total\":30000}', 0, 0, 5, NULL, 60),
(556, 541, '2018-08-03 13:20:22', '{\"alamat\":\"Jl. Kahuripan No.25, Sumber, Banjarsari, Kota Surakarta, Jawa Tengah 57138, Indonesia\",\"lat\":\"-7.5481274999999854\",\"long\":\"110.80188671874996\",\"nama\":\"7°32\\u002753.3\\\"S 110°48\\u002706.8\\\"E\"}', 'griya NN63', '2018-08-03', '14:00:00', 0, 4320, 0, 0, '{\"order\":[{\"harga\":\"20000\",\"id\":\"1\",\"nama\":\"Bed Cover Besar\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"7\",\"nama\":\"Bed Cover Kecil\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"8\",\"nama\":\"Seprei Besar\",\"qty\":\"0\"},{\"harga\":\"8000\",\"id\":\"9\",\"nama\":\"Seprei Kecil\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"10\",\"nama\":\"Selimut\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"11\",\"nama\":\"Taplak Meja\",\"qty\":\"0\"},{\"harga\":\"8000\",\"id\":\"12\",\"nama\":\"Taplak Kecil\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"15\",\"nama\":\"Tas Kain\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"16\",\"nama\":\"Boneka Besar\",\"qty\":\"1\"},{\"harga\":\"10000\",\"id\":\"17\",\"nama\":\"Boneka Kecil\",\"qty\":\"0\"},{\"harga\":\"20000\",\"id\":\"20\",\"nama\":\"Tas Besar\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"21\",\"nama\":\"Tas Kecil\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"22\",\"nama\":\"Helm Biasa\",\"qty\":\"0\"},{\"harga\":\"20000\",\"id\":\"23\",\"nama\":\"Helm Fullface\",\"qty\":\"0\"},{\"harga\":\"25000\",\"id\":\"24\",\"nama\":\"Sepatu Sneakers\",\"qty\":\"0\"},{\"harga\":\"30000\",\"id\":\"25\",\"nama\":\"Sepatu Kulit\",\"qty\":\"0\"}],\"total\":15000}', 0, 0, 5, NULL, 60),
(558, 526, '2018-08-03 18:44:47', '{\"alamat\":\"Jl. Kapulogo Griyan Raya, Pajang, Laweyan, Kota Surakarta, Jawa Tengah 57146, Indonesia\",\"lat\":\"-7.562297500000008\",\"long\":\"110.79058984374998\",\"nama\":\"7°33\\u002744.3\\\"S 110°47\\u002726.1\\\"E\"}', 'belakang sma batik 1 gerbang rumahnyabwarna putih', '2018-08-03', '19:00:00', 3, 1440, 95480, 8680, '', 0, 0, 5, NULL, 60),
(559, 544, '2018-08-03 19:37:57', '{\"alamat\":\"Jl. Kademangan 2 No.24, Cemani, Grogol, Kabupaten Sukoharjo, Jawa Tengah 57552, Indonesia\",\"lat\":\"-7.583187499999987\",\"long\":\"110.80269140625003\",\"nama\":\"7°34\\u002759.5\\\"S 110°48\\u002709.7\\\"E\"}', 'Sebelag Sekar Asih. ada mobil atoz biru di garasi', '2018-08-03', '19:00:00', 0, 4320, 0, 0, '{\"order\":[{\"harga\":\"20000\",\"id\":\"1\",\"nama\":\"Bed Cover Besar\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"7\",\"nama\":\"Bed Cover Kecil\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"8\",\"nama\":\"Seprei Besar\",\"qty\":\"0\"},{\"harga\":\"8000\",\"id\":\"9\",\"nama\":\"Seprei Kecil\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"10\",\"nama\":\"Selimut\",\"qty\":\"1\"},{\"harga\":\"10000\",\"id\":\"11\",\"nama\":\"Taplak Meja\",\"qty\":\"0\"},{\"harga\":\"8000\",\"id\":\"12\",\"nama\":\"Taplak Kecil\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"15\",\"nama\":\"Tas Kain\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"16\",\"nama\":\"Boneka Besar\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"17\",\"nama\":\"Boneka Kecil\",\"qty\":\"1\"},{\"harga\":\"20000\",\"id\":\"20\",\"nama\":\"Tas Besar\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"21\",\"nama\":\"Tas Kecil\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"22\",\"nama\":\"Helm Biasa\",\"qty\":\"0\"},{\"harga\":\"20000\",\"id\":\"23\",\"nama\":\"Helm Fullface\",\"qty\":\"0\"},{\"harga\":\"25000\",\"id\":\"24\",\"nama\":\"Sepatu Sneakers\",\"qty\":\"0\"},{\"harga\":\"30000\",\"id\":\"25\",\"nama\":\"Sepatu Kulit\",\"qty\":\"0\"}],\"total\":25000}', 0, 0, 5, NULL, 60),
(561, 515, '2018-08-05 11:49:35', '{\"alamat\":\"Jl. Raya Baturan, Klemburan, Baturan, Colomadu, Kabupaten Karanganyar, Jawa Tengah 57171, Indonesia\",\"lat\":\"-7.5447419\",\"long\":\"110.78966679999999\",\"nama\":\"Soto Ayam Pak No Semarang Asli\"}', 'sepatu kulit gone prodol kncone cokrik', '2018-08-05', '14:00:00', 0, 4320, 0, 0, '{\"order\":[{\"harga\":\"20000\",\"id\":\"1\",\"nama\":\"Bed Cover Besar\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"7\",\"nama\":\"Bed Cover Kecil\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"8\",\"nama\":\"Seprei Besar\",\"qty\":\"0\"},{\"harga\":\"8000\",\"id\":\"9\",\"nama\":\"Seprei Kecil\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"10\",\"nama\":\"Selimut\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"11\",\"nama\":\"Taplak Meja\",\"qty\":\"0\"},{\"harga\":\"8000\",\"id\":\"12\",\"nama\":\"Taplak Kecil\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"15\",\"nama\":\"Tas Kain\",\"qty\":\"0\"},{\"harga\":\"25000\",\"id\":\"16\",\"nama\":\"Boneka Besar\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"17\",\"nama\":\"Boneka Kecil\",\"qty\":\"0\"},{\"harga\":\"20000\",\"id\":\"20\",\"nama\":\"Tas Besar\",\"qty\":\"0\"},{\"harga\":\"10000\",\"id\":\"21\",\"nama\":\"Tas Kecil\",\"qty\":\"0\"},{\"harga\":\"15000\",\"id\":\"22\",\"nama\":\"Helm Biasa\",\"qty\":\"0\"},{\"harga\":\"20000\",\"id\":\"23\",\"nama\":\"Helm Fullface\",\"qty\":\"0\"},{\"harga\":\"25000\",\"id\":\"24\",\"nama\":\"Sepatu Sneakers\",\"qty\":\"0\"},{\"harga\":\"30000\",\"id\":\"25\",\"nama\":\"Sepatu Kulit\",\"qty\":\"1\"}],\"total\":30000}', 0, 0, 5, NULL, 60),
(565, 548, '2018-08-05 16:45:33', '{\"alamat\":\"Jl. Griyan Baru I, Puspan, Blulukan, Colomadu, Kabupaten Karanganyar, Jawa Tengah, Indonesia\",\"lat\":\"-7.545561399999998\",\"long\":\"110.7822569\",\"nama\":\"Jalan Griyan Baru I\"}', '', '2018-08-05', '19:00:00', 3, 1440, 19965, 1815, '', 0, 0, 5, NULL, 60),
(581, 548, '2018-08-08 16:30:33', '{\"alamat\":\"Jl. Griyan Baru I, Puspan, Blulukan, Colomadu, Kabupaten Karanganyar, Jawa Tengah, Indonesia\",\"lat\":\"-7.545561399999998\",\"long\":\"110.7822569\",\"nama\":\"Jalan Griyan Baru I\"}', 'PERUM DOSEN UNS, GRIYAN BARU I, GANG: I, RMH PERTAMA, NO: 153, BATURAN', '2018-08-08', '19:00:00', 3, 1440, 14000, 1400, '', 0, 0, 5, NULL, 60),
(583, 548, '2018-08-10 13:18:13', '{\"alamat\":\"Jl. Griyan Baru I, Puspan, Blulukan, Colomadu, Kabupaten Karanganyar, Jawa Tengah, Indonesia\",\"lat\":\"-7.545561399999998\",\"long\":\"110.7822569\",\"nama\":\"Jalan Griyan Baru I\"}', '', '2018-08-10', '14:00:00', 3, 1440, 11800, 1180, '', 0, 0, 3, NULL, 60);

-- --------------------------------------------------------

--
-- Table structure for table `paket_hemat`
--

CREATE TABLE `paket_hemat` (
  `id` int(10) UNSIGNED NOT NULL,
  `jam` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'menit',
  `harga` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'per kilo ; cuci kering',
  `harga2` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'perkilo ; setrika',
  `harga3` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'per kilo ; cuci kering + setrika'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `paket_hemat`
--

INSERT INTO `paket_hemat` (`id`, `jam`, `harga`, `harga2`, `harga3`) VALUES
(1, 1440, 13000, 10000, 15000),
(2, 2880, 9000, 8000, 12000),
(3, 4320, 6000, 5000, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `penjemputan`
--

CREATE TABLE `penjemputan` (
  `id` int(10) UNSIGNED NOT NULL,
  `jam` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `penjemputan`
--

INSERT INTO `penjemputan` (`id`, `jam`) VALUES
(1, '16:00:00'),
(2, '14:00:00'),
(6, '10:00:00'),
(7, '12:00:00'),
(8, '08:00:00'),
(9, '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE `premium` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `gambar` varchar(250) DEFAULT NULL,
  `harga` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'per item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`id`, `nama`, `gambar`, `harga`) VALUES
(1, 'Bed Cover Besar', 'a.png', 50000),
(7, 'Bed Cover Kecil', 'b.png', 45000),
(8, 'Jas', 'c.png', 50000),
(9, 'Setelan Jas', 'd.png', 70000),
(10, 'Selimut', 'e.png', 15000),
(11, 'Taplak Meja', 'f.png', 10000),
(12, 'Sarung Bantal Per Pasang', 'g.png', 5000),
(13, 'Sajadah', 'h.png', 8000),
(14, 'Mukena Setelan', 'i.png', 8000),
(15, 'Tas Kain', 'j.png', 9000),
(16, 'Boneka Besar', 'k.png', 50000),
(17, 'Boneka Kecil', 'l.png', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `premium_solo`
--

CREATE TABLE `premium_solo` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `gambar` varchar(250) DEFAULT NULL,
  `harga` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'per item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `premium_solo`
--

INSERT INTO `premium_solo` (`id`, `nama`, `gambar`, `harga`) VALUES
(1, 'Bed Cover Besar', 'a.png', 20000),
(7, 'Bed Cover Kecil', 'b.png', 15000),
(8, 'Seprei Besar', 'm.png', 10000),
(9, 'Seprei Kecil', 'n.png', 8000),
(10, 'Selimut', 'e.png', 15000),
(11, 'Taplak Meja', 'f.png', 10000),
(12, 'Taplak Kecil', 'o.png', 8000),
(15, 'Tas Kain', 'j.png', 10000),
(16, 'Boneka Besar', 'k.png', 25000),
(17, 'Boneka Kecil', 'l.png', 15000),
(20, 'Tas Besar', 'p.png', 20000),
(21, 'Tas Kecil', 'q.png', 10000),
(22, 'Helm Biasa', 'r.png', 25000),
(23, 'Helm Fullface', 's.png', 30000),
(24, 'Sepatu Sneakers', 't.png', 25000),
(25, 'Sepatu Kulit', 'u.png', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) UNSIGNED NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `gambar`, `judul`, `deskripsi`) VALUES
(1, '1.jpg', 'Judul', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente dicta fugit fugiat hic aliquam itaque facere, soluta. Totam id dolores, sint aperiam sequi pariatur praesentium animi perspiciatis molestias iure, ducimus!');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` text,
  `note` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `value`, `note`) VALUES
(1, 'admin', 'Username'),
(2, '21232f297a57a5a743894a0e4a801fc3', 'Passw');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `gambar` varchar(250) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `tipe` int(1) UNSIGNED DEFAULT NULL COMMENT '1 = login ; 2 = home ; 3 = service'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `gambar`, `tanggal`, `tipe`) VALUES
(10, 'background1.jpg', '2018-03-03 00:00:00', 1),
(11, 'background2.jpg', '2018-03-03 00:00:00', 1),
(12, 'background4.jpg', '2018-03-03 00:00:00', 1),
(13, 'slider1.jpg', '2018-03-03 00:00:00', 2),
(14, 'slider2.jpg', '2018-03-03 00:00:00', 2),
(15, 'slider3.jpg', '2018-03-03 00:00:00', 2),
(16, 'slider4.jpg', '2018-03-03 00:00:00', 2),
(17, 'service1.jpeg', '2018-03-03 00:00:00', 3),
(18, 'service2.jpeg', '2018-03-03 00:00:00', 3),
(19, 'service3.jpeg', '2018-03-03 00:00:00', 3),
(20, 'service4.jpeg', '2018-03-03 00:00:00', 3),
(21, 'service5.jpeg', '2018-03-03 00:00:00', 3),
(22, 'service6.jpeg', '2018-03-03 00:00:00', 3),
(23, 'slider5.jpg', '2018-07-31 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `hash` varchar(250) DEFAULT NULL,
  `telp` varchar(250) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `aktif` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 = aktif ; 2 = non-aktif',
  `reset_password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `hash`, `telp`, `alamat`, `aktif`, `reset_password`) VALUES
(33, 'Deri', 'driexyz@gmail.com', '$2y$10$FtsE..1/T4zQQv7LiUef/OcquL5heWwM4PR5DO7F45qazjDiRkDby', NULL, '085691220706', 'Bandung', 1, NULL),
(43, 'Alfan Rasyidi', 'alfan.rasyidi3@gmail.com', '$2y$10$p9LQ5KBBtfPx0VEc9ZOTy.SSgMKnkABj72m0vyU3ymdsuOvnnN736', NULL, '085868190333', 'MangunSuparnan Rt10/Rw 05, Janti, Polanharjo, Klaten', 1, NULL),
(83, 'andre', 'rekiandre67@gmail.com', '$2y$10$IL7K6BoVlYs.yUXOVZCVZOswdGVNxQjcKofbKgp.K/xuamhwxYHiW', NULL, '081281299624', 'jl aw Syahrani gang 555  gunung Kelud Samarinda ulu\n\n', 1, NULL),
(84, 'Jajang', 'jajang@gmail.com', '$2y$10$iHgl3Sx4nCG6n.lsqNr19uqUQkFa/ooRoX6fYqSQujLdxIUYsI.cO', NULL, '089786753423', 'garut', 1, NULL),
(87, 'hendri', 'rizka82@gmail.com', 'ddcababa4a3fdc251029e1cac85eda4a', '86c7a9c3455cef83b7dfb42c495fa8da', '082152290590', NULL, 1, NULL),
(88, 'kartika yuli prasojo', 'kartikayuliprasojo@yahoo.com', '1f5a363600f087a0de5b135ef1076837', 'a1a1c95586d376219c61771b47487e85', '081281877766', NULL, 1, NULL),
(89, 'tity safitri', '-', '$2y$10$CMR.Khu6oUGaQlAfribUKefyrYgUKS01NteWNrL/XM.LIIGXe2IwS', NULL, '082284645678', 'jl. p. m. noor perum bumi sempaja city\n', 1, NULL),
(90, 'astie puspita', 'astie.ps@gmail.com', '991f1ab5ee8c0d88024d334f7ddff354', 'dc5f415c7f270287a796d4824bd9af5f', '082153449890', NULL, 1, NULL),
(91, '', 'rezkyzarkasih@gmail.com', 'beb9fb4aa4fbb632a8e029ca1c63e6af', 'bdb2d6ed1b4a54bc7f40d5de616c1c26', '', '', 1, 'd0c63637726f990e68150aa62e82741d'),
(92, 'Alfan', 'Rasyidi', '$2y$10$3Jculy3mqA4djSvB2ZByMeR6HsgG44YtbEbuynMRrn4lAWd/z6WwG', NULL, '085868190333', 'Mangun Suparnan, Janti, Polanharjo, Klaten', 1, NULL),
(94, 'abahong', 'eastborneo54@gmail.com', '$2y$10$5K.tvMz0effNWGkrpwaUReiVM9QqpIwFFHLdYxZVAm1/JXhnjtgvO', NULL, '085247333448', 'jl.cendana', 1, NULL),
(99, 'Rezza Martadinata R ', 'rezza.martadinata@gmail.com', '$2y$10$qXgHj00dnDT.HZvJcYNM.efjldYaAEq.vjuesubG0/w3DbDBss.3K', NULL, '082312201988 ', 'Perum Pondok Pakulonan Blok H 15 no 08 RT 01 RW 04 Serpong Utara Tangerang Selatan kodepos 15325 ', 1, NULL),
(100, 'habib', 'thepantjing@gmail.com', '$2y$10$quTwEsUZDFy8r0qbUlKUnOzNSk12HtTMHzkfjcZZuQQNdmJ3jKxXu', NULL, '08817066081', 'jl. satsuitubun I/27 malang', 1, NULL),
(102, 'Steffina Paramitha Maharani ', 'vna.abel@gmail.com', '$2y$10$rkTh32NW9nExNVa5SiMNNOtO1mtQ0o59TYSjKURBoIlOjpjpEDHWe', NULL, '085246104521 ', 'Jl. Sentosa dalam no 32 ', 1, NULL),
(103, 'deti suherti', 'detisuherti13@gmail.com', '$2y$10$Od8TxkcPeO896PV3.nrCaOm06.X3hHtsavqtLzfgkumHlCpIrRwla', NULL, '081343236292', 'Jln M. Said Gang 4 Blok D', 1, NULL),
(104, 'eko jayanti', 'ekojayanti10@gmail.com', '$2y$10$VFtvDcH67qVhpyoy9dPGcutNvkX/t5UiYTbgLbpUp5I1aPpmPYeMG', NULL, '085246371711', 'Jl. P. Suryanata Perum Bukit Pinang Blok A4-A5 No. 23 RT 12 Kel. Bukit Pinang', 1, NULL),
(105, 'Adi', 'gadi.2ibujarigroup@gmail.com', '$2y$10$xi4bik4UlfdA95WObRJSPO7bjPs0urOGTAUi3qw7kcmC.TFqoqLqO', NULL, '+6281330330802', 'Surabaya', 1, NULL),
(107, 'Anatasha Octariama', 'anatasha40@gmail.com', '$2y$10$bu42OkFLT7R1kR6mjbAp7O9L07BwBiQr7VQjpugPja1sJj4jfMS1S', NULL, '082117167428', 'Jln. Kaliurang KM 5,6 Gang Pandega Widya No 2 RT 18/RW 01', 1, NULL),
(108, 'fariz', 'ihsanbinovan', '$2y$10$qEq2IB5raWGLZJotfcF40..kUGQUfwkeC7MOaqGbf3fqAn8Qbl92m', NULL, '123', '123', 1, NULL),
(109, 'helis', 'helis.santi@yahoo.com', '$2y$10$JlgNA.RDodtZVAJdNIcX6eo.Fax1UMlIQk6x.CLf4.Mhn15K7PkrS', NULL, '085348868789', 'simpang 4 air putih jln juanda no.7 samarinda\n', 1, NULL),
(110, 'Elis Sintha', 'elissintha17@gmail.com', '$2y$10$A8vd0AZno6Xe76ddi4WGQuExk3zO8VyCZDnzJ.a9dnGgFWZTm7S9C', NULL, '082250727750', 'Jl. Pramuka 19, kost putri Jamrud', 1, NULL),
(111, 'Muhammad Ridho Habibi', 'habibi.ridho@yahoo.com', '$2y$10$Suc/WbzJOhJCo50w6w93wu3GDS97MDhyGj4/F2FJap3TzWK/lH7mi', NULL, '085754279297', 'Jalan Pangeran Antasari 2 Gang. 1 No. 56 RT. 31', 1, NULL),
(112, 'dian tjahyo santoso', 'tifsians2000@gmail.com', '$2y$10$10w5ZlX6Jepg8JMK4BSP2eCfxtn9nTryKjbpevGTaLX6j6F2beDWa', NULL, '081217211271', 'jl gatot subroto no 18 b samarinda', 1, NULL),
(113, 'haris', 'tombo88haus@gmail.com', '$2y$10$EjkrNYE78hNrmekfo8laj.0I3Sg8pZ1EkU9M3f/QhQYQjtQY597SO', NULL, '085249121239', 'jl arjuna gg 2 no 41 rt 13 kelurahan bugis ', 1, NULL),
(114, 'Rizal', 'rizal160240@gmail.com', '$2y$10$y.Ieej3DMYZnlHO16ayY4.OPenUHaUwQbrDfXBeVLhdhBbBUuRfAy', NULL, '081345111711 ', 'Jl Pangeran Antasari Gang Nusa Indah No 6 RT. 22', 1, NULL),
(116, 'adhe ferdha', 'adheferdha@gmail.com', '$2y$10$w.7HSpQjkBGrjBCLO06R4egYJbEPb4e7naMIVCbLgVEaUFLCru0Km', NULL, '08115500022', 'Samarinda komplek vorvo\n', 1, NULL),
(117, 'aditya', '0000adit@gmail.com', '$2y$10$ZRgPL1od3Qy8AbOdyIof/.oStHX3J6jjpwo7cIIRtZ0v4X5vs53Wa', NULL, '081258008502', 'perum sambutan permai', 1, NULL),
(118, 'bekti estu', 'bekti95dayadi@gmail.com', '$2y$10$rssO96g3XihwXfVKb8h8XeGb/r.5y5lLIi5YJIgFbuf8rwqtR/IqG', NULL, '085766728188', 'jl. Perjuangan Gg. Sukses No. 37 Rt. 38 Kec. sungaipinang Kel. Mugirejo  samarinda. kode pos 75117', 1, NULL),
(120, 'stepanus', 'step_rb@yahoo.com', '$2y$10$GzcKizZC9dQ55gU3Wp20Z.uVoQRiFaE8vdQD/uv2oN3CzZdiW8/CO', NULL, '08134766689', 'Perum Bumi Sambutan Asri Blok H2 No 19 Rt 26 Samarinda\n', 1, NULL),
(121, 'evans', 'evans.me91@gmail.com', '$2y$10$u6aOhah5og9xw960U/jEtuuvDM2ZFUThRb7FDtMchrJM5hpdUi5cC', NULL, '', '', 1, NULL),
(122, 'nurdin', '085299124792', '$2y$10$KypUocdcHtYYiN95VlZuO.FOWoBonV7KbTbH89imyw14zZ6sUS3vK', NULL, '082292050059', '', 1, NULL),
(123, 'sadly el udwany', 'Yayasan.Pmi29@gmail.com', '$2y$10$R6I9KZDxMXWkxTpmGkypRubvSpWZGLWwMLzTHmvpwfACNppWEVV6S', NULL, '081285787729', 'jl kh tsani karim L3 blok C', 1, NULL),
(124, 'din warta', 'nurdinsappo', '$2y$10$dqAQoosxREUf22spHhXNpeC/XFIxYGGuqsowR3fyTjU0hxitMQdya', NULL, '082292050059', '', 1, NULL),
(127, 'tony Indrawan', 'indrawantony@yahoo.co.id', '$2y$10$Gz3BfKMLnIjOtk9FTU0tsuVMrqehaqK5LoWjh9ljNYNYsF.orDoQW', NULL, '081251575867', 'jl.pangeran antasari gang mawar no 29 B kel.air putih kota samarinda\n\n', 1, NULL),
(128, 'Triyoga', 'triyoga77ok@gmail.com', '$2y$10$mpj.qltO6YlRm7uedjiFS.fEBTUYqMlwjYX4/hS2KuMzr4fehGPlG', NULL, '08115405479', '', 1, NULL),
(129, 'yana', 'joefizzy46@gmail.com', '$2y$10$cG8RK770iKHSiYaztC/Pq.LgWXzANpLb4JLhRsodzO2yPAqcdBhvC', NULL, '085347111633', 'jl.bengkuring raya  blok A\nno.420 sempaja timur samarinda utara\n', 1, NULL),
(130, 'andre', 'andreandro93@gmail.com', '$2y$10$jaN9NDkzHy59qkGGBjQGGOtzg.66rZIn7aDJWmt/RtR22us/csQTi', NULL, '081250185819', '', 1, NULL),
(131, 'Asep Supriyanto', 'snangasep@gmail.com', '$2y$10$KZG8QVhG1QPyHGaM.Tvu2u7p5HLV/F9WtIzs5WBCaaDKrawNjXNxG', NULL, '081221235557', 'Gg Srikaya 2 Air hitam Samarinda', 1, NULL),
(132, 'Ronald', 'rodahasi@gmail.com', '$2y$10$34q8swxalRiAp7i/ef5Area4AXbT5uJuxA4jpJ4/A1G3RnnAn35fi', NULL, '08115544123', 'jl. perjuangan 7 blok utama no.90 samarinda', 1, NULL),
(133, 'ipeh', 'm.gathan05@gmail.com', '$2y$10$eyqWBvSwbAmbJFuh5QbK0uOREt.LWXV7CdS70GWVZcljG2XObAwX6', NULL, '081347700068', 'jl. juanda 4 gg.  cempaka no 4 ', 1, NULL),
(135, 'Martinus', 'lalaugath.lg@gmail.com', '$2y$10$s3bJJZfl5reZk3Sb0I3JqOJ9xrajiPaHEMRSjmqFQMQJRVLUgDryG', NULL, '081349504931', 'Jl. Milono Gg 1 rt. 12 no. 38\nSamarinda kaltim \n\n\n\n\n\n\n\n\n\n\n\n\n', 1, NULL),
(136, 'ksatria', 'ksatriapinandhita@gmail.com', '$2y$10$9e7xGsPBrL8ATzDt7j2.P.5bdkY5zF0UiOdpGP82B31aq/kT2atLe', NULL, '082227163005', '', 1, NULL),
(137, 'Jusuf', 'kemal_male@yahoo.com', '$2y$10$LooCfmrxLW9MEGoZY9efDOTkBQWDzylHaRr4vIHX3x7nrGsGeCCaa', NULL, '081358467799', 'Perum TVRI GRHA ASRI C31 SEMPAJA SAMARINDA ', 1, NULL),
(138, 'Chevind', 'doang606@gmail.com', '$2y$10$vnO/PVWENnuxUzCxDgOwgOcoTxcM6tK2fbXLxcjW3sjG1.0OgVACq', NULL, '085398999952', 'jln. Siradj salman.\nPT. GRANITE JAYA ABADI. NO 6 Depan Bengkel Cakra Surya Motor', 1, NULL),
(142, 'Hidayat Fathurrahman', 'hidayat.hfr@gmail.com', '$2y$10$pSrUtGDFrfw5L6ka3WGnIe0VZeo/hfGtmJsDVvrGKfNSjXhrMaqvi', NULL, '081341553367', 'jl. Antasari no.1', 1, NULL),
(143, 'rdima', 'ruhyatidalima@gmail.com', '$2y$10$UGaRsrQ7fPBlinDymzHlVu9dNTqlQDLIauHWDAa/K1pwEUFJxstdq', NULL, '085246928395', 'rajawali dalam 3 samarinda\n', 1, NULL),
(144, 'Muhammad Sulaiman', 'muhammadsulaimanedo@gmail.com', '$2y$10$uTVNKVzVMIXNqvu7FJzIY.8.4kJDwZmyT0McFGCvGduHuYIP5KbTW', NULL, '08125822951', 'jln.kebun agung perum talangsari regency \nclaster anggrek blok J no 14\nlempake samarinda', 1, NULL),
(146, 'Amelia Dwi A', 'amelbpn59@gmail.com', '6271d99e8bd3e7b1b08478f5ac83be40', '365e4bb6a8e0c514805e37eecc9085e2', '081351823884', 'Jl. DI Pandjaitan\nNo.51\nAsrama Putri SMA Islam Bunga Bangsa', 1, NULL),
(147, 'eka ferda setyawan', 'ferda3435@gmail.com', '$2y$10$W3kcIchH0u9wzDZeglqKo.giKrVfPJWZf54YbGdmBzACy/SI13Km6', NULL, '085234959888', 'jl. kh. damanhuri gg 3A Rt. 27', 1, NULL),
(149, 'nadhif', 'nusaperdanatravel@yahoo.com', '$2y$10$CQbJ/ILUVwJB0J7uXvrrzO46hAcgrQQQeBwSQz2se4t/x76f9HQ06', NULL, '082251869450', 'wiraguna gg perjuangan samarinda\n', 1, NULL),
(150, 'suhartina ahmad', 'Antisuhartina@gmail.com', '65f2a94c8c2d56d5b43a1a3d9d811102', 'a9c979cdcd1f91e5ce60332a8273aa77', '085349492425', NULL, 1, NULL),
(151, 'Mita Pranata Munthe', 'mitapranatamunthe@yahoo.com', '$2y$10$IL4KDEgImP8PZc0vQauwb.OHDoFKrjZ1ptLSeoZ2dMVlSiK0y0/MW', NULL, '085391193218', 'Jl. Perjuangan gang alam segar 4 Kos syafira Rt.03 no.08', 1, NULL),
(152, 'Labu', 'Labugrana@gmail.com', '$2y$10$N3FawZKpP8UPf10LxiyYHOJ9IfNclJBbJk9ZPrH8pKqVCryiKgfUG', NULL, '081234001895', 'Jl Meranti 1 Rt 17 No 45 Kel Karang Anyar Kec Sungai Kunjang Samarinda Kaltim 75127', 1, NULL),
(153, 'yuni', 'yunisulistyawati2736@gmail.com', '$2y$10$WthVkvH0akHDOeSO39CmTuuQadDHBlsjAgS6gJ.lh/kPHmWlOGvN6', NULL, '082214329444', 'jalan p Suryanata gang 7 nmr 122 kelurahan air putih ', 1, NULL),
(154, 'pimpin', 'pimpin.kabrayat@gmail.com', '$2y$10$L6qPrfPcg61Ofnl1R2YPsObZwicsGH3XsJsvAIeHcu2c9wU2XD89m', NULL, '085246890653', 'kost wisma indah jl. Juanda 6', 1, NULL),
(155, 'Hariansyah ', 'syahpunya@gmail.com', '$2y$10$L6posqet7WdAoICQLy0./ebXfrAYUL9WzDkjOU6I6ExJvK1HpZ2s6', NULL, '085246290621 ', 'Jl. AW. Syahranie 4', 1, NULL),
(156, 'Wildan Fauzan Adzima', 'anaklelaki689@gmail.com', '$2y$10$.GqNYp19FJCKKng2tqYHZenpTvTBQ6niplHAjdfAxWsVdNd8B1VuG', NULL, '08124887881 ', 'Jalan lambung mangkurat gang andika no 53', 1, NULL),
(158, 'Muhammad Ricco Affandi', 'ricco.affandi@gmail.com', '$2y$10$zA5W0NazZF78a9eKiLeZQuJ1lULhW0PEvPsFCkgwRyBBakxEkOS4q', NULL, '089690224202', 'Jl. Imam Bonjol GG dharma no 04 Samarinda\n', 1, NULL),
(159, 'Ely', 'ely.lesmana99@gmail.com', '$2y$10$pX3959WmeZTVzgYn8Llof.dWe3LmwPnfO5hwQGMkNhN16RydDixRm', NULL, '085247479005', 'CitraLand City', 1, NULL),
(160, 'Deddy', 'Deddymilwardani@gmail.com', '$2y$10$xkYei3hh.wUoeJKRYJ21nufRDFoGrWz7YbXd0UndO0bhWgwtjaJW.', NULL, '082350777748', 'Jln sentosa', 1, NULL),
(161, 'yuda kusuma anggana', 'yuda.kusuma.anggana@gmail.com', '$2y$10$tGRxABzaSvinYdp7Z6IesOmKnrm8Nw2MBi8P42V8nNQedDb4K1dde', NULL, '08115844017', 'Perum Sempaja Indah Permai, Blok Ramania 27, Batu cermin, Samarinda\n', 1, NULL),
(162, 'Azyumardi', 'azhie.88123@gmail.com', '$2y$10$yYYTme0ljxIU2X7V1gEmLONmsUvHt4v1rnThd7T3FdIJ8/.JMasv2', NULL, '085252003740', 'Jl. PM. Noor Perum. Tepian 9 No. 17 Kel. Sempaja Samarinda', 1, NULL),
(163, 'eka fatmawati', 'eka.fatma88@gmail.com', '$2y$10$QjzVF4C2HbIMnhgXQkPaMOfx18fAPQfvuBnmwETipITnT61FVR5Xe', NULL, '087812423962', 'jl. labu hijau 5 no.240 samarinda', 1, NULL),
(164, 'khalid assegaf', 'khalidasgaf@gmail.com', '$2y$10$WQe0DlBDSC.20UGRnKfDA.Sp4hc6ZR7OScjI3awSpaCtBxORvBEM.', NULL, '082337226833', 'jalan kelapa gading perumahan kelapa gading', 1, NULL),
(165, 'gokuss3', 'gokuss3', '$2y$10$w7WKxpeRySPdscipv.2pL.fbXbH5WbLMMyHYfOdCAx6E8rD9A6Ahi', NULL, '08291929383', 'earth', 1, NULL),
(166, 'Dodi Sholihin', 'sholihin_dodi1981@yahoo.com', '$2y$10$aB58ujnAHZpVlPmgoH0MNudliXPHOv8v7/Im3/FQDoLZQwbQj5Oby', NULL, '081253667771', 'Jl . Kesehatan samarinda', 1, NULL),
(167, '1', '1', 'c4ca4238a0b923820dcc509a6f75849b', '4ac0871422da140235d54cbc14212db6', '1', '1', 1, ''),
(169, 'madi', 'madypaccul02@gmail.com', '$2y$10$YmV2ari.0uEB//WtSR7Ns.THoUkfFUdTJwD4snxO1gsSOs7ACYrXG', NULL, '082251189357', '\n', 1, NULL),
(174, 'Efraimo', 'imoefraimo@gmail.com', '$2y$10$GcBqyI1.SLF6J6vLt5UNAuDQhyzCV1PC3n9toG1U/ez2XUovjfzb.', NULL, '082273388807', 'jalan antene VII no.13', 1, NULL),
(175, '', '', '$2y$10$f7UY/jnFv98sFVdBDmeTDuDMW1kdtl9U2k5JlUmeytWYNlSKJ20KC', NULL, '', '', 1, NULL),
(178, 'shinta', 'joshintaclara45@gmail.com', '$2y$10$3qYpbsggZaGQsM6QvaB8kuQc72egCp7NqdxrXls3.1MPF2qsfb6nS', NULL, '082276304966', 'jln. jamin ginting gg.maju. no.18', 1, NULL),
(179, 'Ambo Lala', 'lalaleha@gmail.com', '$2y$10$Kkmmi/Jt2yFaxhcg1OQ2M.5AU3G0CGkT.1OTPAwUYTTp3Ju7Cybvy', NULL, '081349376828', 'Kamp. Sekolaq Joleq RT. 05 Kec. Sekolaq Darat Kab. Kutai Barat', 1, NULL),
(180, 'deri prasetio', 'deriprasetio6@gmail.com', '$2y$10$2nGepUebB6CZyo9GCwBuauP65LhFNqcCql0sUMwZAEGeZjKnMrtQq', NULL, '081347841165', 'jl. kemangi gg rejeki', 1, NULL),
(182, 'Nicholas Putra Prima', 'nicoborneo86@gmail.com', '$2y$10$oS.880DVmZkUbM0fKs33KeyjA6V39vu2cPinpv9bCIF5cnaasVVD.', NULL, '085250712886', 'Jl. Bukit Barisan RT.33 No.3 Kelurahan Jawa', 1, NULL),
(183, 'muhammad nur fajar', 'mail.mnfajar@gmail.com', 'd66413019be0ddd0200603e511695c94', '51fc1009cd9ffe8b4d6e59f3371e659a', '081226902346', NULL, 1, ''),
(184, 'eeniwatie', 'erniwatiemanolang@gmail.com', '$2y$10$iwBai0fjL7x.Aiitca3HjufKAkUiuvwYRq.v9Qg.AQXBj3xb5F15G', NULL, '081350793335', 'jl aw Syahrani 4 blok j no 32 Samarinda', 1, NULL),
(193, 'Atina Alfadela', 'atinaalfadela86@gmail.com', '$2y$10$2UJAh38cL8gbnaP.RejIoetbl/YKFNwBOY4fNu8xXsfvN3Q9zHB2i', NULL, '082138181419', 'Jl. Mayor Kusmanto no.10, Gergunung, Klaten Utara', 1, NULL),
(196, 'mei', 'meisyaroh@siaga.rspkt.com', '$2y$10$/qVuuEYHb0fdDVsZs1DqFepcBtQ4ygV.OChbiph1joPnzFog6kkpS', NULL, '08115588691', 'jl.letjen suprapto gg.h.sabran1 rt 009 no24\n\n\n\n', 1, NULL),
(198, 'Mita', 'adityacell789@gmail.com', '$2y$10$ReMeP6uLmg7xI4XEXJpEIe2YNIAXO4Ezii6h9GaAgLVIp9opzaLgW', NULL, '085349997110', '', 1, NULL),
(199, 'mifta', 'miftachul.jannah2110@gmail.com', '$2y$10$LoNR5BwtKvdRLTGtWJY22uWzLvRixH/0tbREhdbEbwKwq8gGbp18W', NULL, '081254439222', 'jl. pm noor perum tepian blok tepian 9, no 17', 1, NULL),
(200, 'Hengki', 'hengkikurniawan94@ymail.com', '$2y$10$8epr0jJYKJDeSE.p3.91euNRAhwrCzZ2R4YPlhxZzuRzhbqM9DhHW', NULL, '081256505508', 'Jl ulin ', 1, NULL),
(201, 'zaky arjuna', 'zakyarjuna@gmail.com', '$2y$10$8uAnBQYSEIeLd9t9lBTCV.VhBCTJe3gZNqUycqDk.Hg6IEyE3O8Ua', NULL, '081347841165', 'jl. kemangi gg rejeki', 1, NULL),
(202, 'novianti', 'novi.syam79@gmail.com', '$2y$10$cXAyeKdpXSM/qGwI/w.DlugdVgv2s.obLn.lhMdIHgg8nAaBzN1Ke', NULL, '082255334179', 'jl merdeka.', 1, NULL),
(203, 'any', 'nurlianirabibah@yahoo.com', '$2y$10$kbzJcUDmGJ30e0d5hJTJj.dgPGo4ETVRdgO1gFKlF4dpICLupSdeu', NULL, '081254148865', 'jln.pangeran bendahara  gang karya amal kelurahan mesjid\n', 1, NULL),
(204, 'roniansyah', 'ronnyansyah34@gmail.com', '$2y$10$IiymPZHhqFT1AsSbabaPs.O5ft.9BGpHBw9sp6nqRNNiAO4Qyro8q', NULL, '085250751043', 'jl Wolter Monginsidi gg hidayah no 33 RT 17, Samarinda ulu, samarinda', 1, NULL),
(205, 'Anna', 'mariana_adjah@ymail.com', '$2y$10$ORC8saHHDWHfy5WMK0JBCOYMQYvPkaSaaupdLaZms6JN3VSGoMK12', NULL, '082298499490', 'jl.mugirejo gg.srikaya no.04\n\n\n\n\n\n\n\n\n\n\n', 1, NULL),
(206, 'aqil', 'shaquilleaqilputrao@gmail.com', '$2y$10$ES7ZO2jtXZ87XOUcHcLQueK5WjVTNwve5Rgah8gaiBxA5eI1.1/Fe', NULL, '08125368272', 'dicitrakan block A1 no10', 1, NULL),
(207, 'muhammad al wawang', 'wawan.toyota.kaltim@gmail.com', '$2y$10$BF.ofeAHK1oX5AOcu2Ro9.Ex.rtO4CZSxmE0O2z5nlTco29SEbh6e', NULL, '082290301407', 'jln antasari gg 9 no 19\n', 1, NULL),
(208, 'edy saputra ', 'edypunyaemail@gmail.com', '$2y$10$HEg/8d3IWvxJyKIpG2y9wevod0Ypf/gbyAoSu24/3B5IUAB5y84Hq', NULL, '081250337597', '', 1, NULL),
(209, 'yovi iliandra', 'yoviiliandra3430@gmail.com', '$2y$10$aeVLESBsPM1mKaxTJw1A2eNJai8iypmQ3XWrPL3MXrJx83zd4JslK', NULL, '08115558155', 'jl cendana gg 15 rt 34 no 47', 1, NULL),
(210, 'Dedi Rahman Nur', 'd.blues84@gmail.com', '$2y$10$uHMUI2MYCM6uVSPuqPwZR.U38dG.ttp80QwP2WzwXudLsVCcpvS5W', NULL, '081254035678', 'Merdeka 3 No 44/63 Rt88\n', 1, NULL),
(211, 'diman', 'www.diman_caster@yahoo.com', '$2y$10$6qRZg5CwM3hb1mSU3MCYdu4.WsYG4lOM6NEHdPcS0dDcnbc0uVIru', NULL, '081255596648', '\n\n', 1, NULL),
(213, 'cici fitriani', 'chichifitriyan1@gmail.com', '$2y$10$BIENYDUQMwrLklwDvGwsjOWIevCzk6PHB46u25PKSCsZuf9ZzXVU6', NULL, '08115588881', 'jl bungtomo perumahan keledang mas baru blok bm nmr 4 smd seberang', 1, NULL),
(214, 'Rizky', 'rizkyaditya.ff@gmail.com', '$2y$10$wRtYY/.ZOAl2CnPeNeQaUOjBSxNKqDEkTmYy0stGVZaZfBAmkftcK', NULL, '089518113130', 'yogya', 1, NULL),
(215, 'siswanto', 'joshuamiger@gmail.com', '$2y$10$G/udEt5ygnV3nfCvUgfOh.L7KRmyF14zimYGB1lgwk4QTIscUABgy', NULL, '0811556723 ', '', 1, NULL),
(216, 'Allysia', 'allysiaamanda19@gmail.com', '$2y$10$a.r/FZQE4bZliK4o.Lio6.fUIjMF2JlmFiHhrJDz2UfxowyV0OH4u', NULL, '081241562383', 'jl. pulomas barat VI no. 81', 1, NULL),
(217, 'haspar junior', 'hasparindo.junior@gmail', '$2y$10$X.yDWJmrPr9e20EstEHY/eDhEAi2ycQl0w.K/7UwiTzzvxYzz09xu', NULL, '081257', '', 1, NULL),
(220, 'rizal', 'rizalfaqih1004@gmail.com', '$2y$10$q9xN7Mf9VJOVodqT4Tez/eZSsN.9Ghm8si92.ByGW4Dv1/0AYWoZO', NULL, '081347675677', 'komplek ruko mall Lembuswana blok f/5 jln s parman', 1, NULL),
(221, 'rizal', 'rizalsatriadi79@gmail.com', '$2y$10$GyBqW6qfFzYtA02SNcWMVeIt8Ah1bHsv2Kt8YxtU/p2olgB/PHMd.', NULL, '082158075071', 'jln cipto mangunkusumo sengkotek\n', 1, NULL),
(222, 'yuyun ', 'yuyun22@gmail.com', '$2y$10$mCcxTpmYjkTkP5eqlBoBoefW4eE4l4gMDA9d15fTKgeGubtH4/wl.', NULL, '081254660200', 'jln. anggrek bulan 1 no. 14 BAP juanda', 1, NULL),
(223, 'muhamad saidin', 'saidinmuhamad@gmail.com', '$2y$10$f0WRhPufjip7SE8160bnFugXR0hc5TLKplDIWZcCIF9PfH4Ezf6Hi', NULL, 'trustco2', 'jalan A.W syahrani 6 pondok dono sari 2 bangsal 5c', 1, NULL),
(224, 'ayen', 'ayen.wati74@yahoo.com', '$2y$10$XXsNyzXgH9zbiH3alpuxd.bAGQyv4WoLh7aIZC.Q9RHK45NffoY0y', NULL, '081387142299', 'jln adam malik perumahan bukit indah permai blok r 16\nsamarinda\n', 1, NULL),
(225, 'erni andini', 'sedyandariash93@gmail.com', '$2y$10$mMKEPzs/B.PW9OlY6owKye2K1vyde9iswIWL6zo6OXsrnyLNZv3aK', NULL, '082357436000', 'jl. gotong royong, gg. dahlia, rt. 15\n palaran, samarinda seberang, kalimantan timur ', 1, NULL),
(226, 'fachrurrahman', 'fachrurrahman1305@gmail.com', '$2y$10$cULmTmxavcO4xw/7xD/RIe5nvm4llFaIjF/Dj5ANpUO1bC.Xn/mAO', NULL, '085287652098', 'jl.pangeran Antasari GG.pasar ijabah samping Mandiri mitra usaha', 1, NULL),
(227, 'amel', 'amel724@gmail.com', '$2y$10$6o7mJnfakRfMH1ivOCP0QuDXXv0dPXLHz0ONMbZbdxd5EpVOV02ta', NULL, '082251429062', 'jl. Sutra murni gg. Hm. Senang', 1, NULL),
(228, 'Totok', 'akancil16@gmail.com ', '$2y$10$/0TQHx7eiSXHBnegeV2zU.nNUkQdmYAit0hKVn2rH59kQDlAKfM9S', NULL, '081250678455', 'harapan baru', 1, NULL),
(229, 'luthfia ', 'luthfiapw@outlook.co.id', '$2y$10$95L.Fmidpg8z3l2yzzMWuu.8S0tLbuceSscgPeKNb7Xgw7HaV6h/a', NULL, '081255199290', 'jln. anggrek panda 2 no. 30a', 1, NULL),
(230, 'Mila', 'jamilah.azis21@gmail.com', '$2y$10$HOygbdjH800phZxsnAofv.a5uY3Sou2S3cq10VQwxnZMD/9k1SfFG', NULL, '085652137481', 'Agus Salim ', 1, NULL),
(231, 'steffi', 'fyerror@gmail.com', '$2y$10$SfWOKs25N4dAbafEGaEz9eWE/fdbu5giQtXfsqnBC.o4zujt9VSCC', NULL, '085779152208', 'jln kamboja no 22', 1, NULL),
(232, 'fhi\'i', 'ffhii84@gmail.com', '$2y$10$OrdCIU565ufSOBhULAMCeOzcqXw8zLPxd4zm6twK3E5cIs4umQ71S', NULL, '08111524966', '', 1, NULL),
(233, 'teni', 'tenilestari@gmail.com', '$2y$10$/xJa3B4c2Gzl0QWYswPz7Ow36IbAXuzyqypQrXmbfOdYC1/IDB4YO', NULL, '0895335569650', 'haurpanggung', 1, NULL),
(234, 'excell', 'excellentcia@gmail.com', '$2y$10$TiGszJzVRFlW6OgBaRdsvOerdLIKYxvufF2vy8iVulqFH8MgnUG8y', NULL, '', '', 1, NULL),
(235, 'Deki Hermawan', 'dekiankwira@gmail.com', '$2y$10$lUqRYWor/6CUOhHp4/4jwuRtZKpqXhzQXoapgYBC8VxBv4fw3RDPq', NULL, '081245572010', 'Jl.P.Antasari Pondok Wira 3', 1, NULL),
(236, 'irwan', 'irbongek@gmail.com', '$2y$10$uvoj8i7x3liEuyCHfOZ0zuxLmEKwkuqKxOzNErI/jvGNFIlPgUSLm', NULL, '085754915394', '', 1, NULL),
(256, 'rahmat w', 'rahmatsoftware@gmail.com', '$2y$10$FotkTKOk7I0NEZfV/OrHG.f649VQM1nW5z6WtJkr3K.96EO.3Z7.G', NULL, '081349527688', 'jl. gatot subroto gg 10 no 18', 1, NULL),
(257, 'Alan Maulana ', '5jamsaja@gmail.com', '$2y$10$9mtxn1auAccPien8QA4wVukOLzvaSOhmRySXSUh4htCEkfunbDZmq', NULL, '085793193785 ', 'Medan ', 1, NULL),
(260, 'abc', 'abdsd', '$2y$10$2T42vfRHiT6TVCunbHgNruTU31YbconwUuVRHA83tZVkO9Pze/7Ey', NULL, '089654472880', 'jl. mangga busu', 1, NULL),
(261, 'Prima', 'nugrahapwid@gmail.com', '$2y$10$uphh5l.bLuhMVb6xdPMTZ.Fbt.axVQWToRKw7s33YK.jVNMvPEs1u', NULL, 'tes', 'bantul', 1, NULL),
(262, 'amira', 'amirakemy@gmail.com', '$2y$10$txsnRFWHXO2rNrrgLVyMIeh7gAjgU40vI1twPLr6IVHcJQzd6zrFO', NULL, '0818126857', 'Jl. Villa Indah VII/ blok E 17, Villa Pondok Indah, RT/RW 01/09, Kebayoran Lama Selatan, Kebayoran Lama, Jakarta Selatan 12240', 1, NULL),
(263, 'milla amelia', 'milaamelia2605@gmail.com', '$2y$10$hYDJfiowZfdKUhBo6FkVJeILgQqyIlxDwTh9/tjBILwGNJ/g0rOIa', NULL, '081314928906', '', 1, NULL),
(264, 'irwan', 'irwansahna@yahoo.co.id', '$2y$10$VpXQyywS2ZgrsUQ1sVnnseBKpIUdSzjCJ2qtBKwlOC6bBUpoty.xa', NULL, '081220050063', 'Bandung ', 1, NULL),
(265, 'fitri', 'fitri.sitanggang@gmail.com', '$2y$10$w5aiM5sEtG2ajdmEJaTD3ezPk3JFtbdXiUdkYtSV3E9LrTlO40Z4i', NULL, '081323414297', 'jalan duren tiga raya no.42', 1, NULL),
(266, 'Ayu Purwa Shanjika ', 'ayupurwashanjika005@gmail.com', '$2y$10$yLYGeCWvjJLzJc5XnFk6leb.dlDbMp310/8YLMmTiLYzVqDMszvp2', NULL, '+6289634060647', 'Jl marga no 1b kemiling bandar lampung ', 1, NULL),
(267, 'Amin', 'amien.khand@gmail.com', '$2y$10$QjPrJrGaI0WnmZJpvOLYAeTJkdzHLcr6dKk55x2MKJgo.T5iXVS0q', NULL, '081326737275', 'cipinang cempedak', 1, NULL),
(268, 'Novia', 'oppyannisa2@gmail.com', '$2y$10$jjfCchPAhcHt.hVyVcvo.ecwqqvyzL90F.5xuMaNAmJ.VVP/mvAMe', NULL, '085292372454', 'Jl. Tawakal IV no.  22a Grogol - Jakarta Barat', 1, NULL),
(270, 'dizah', 'hadijaprmana555yaho.com', '$2y$10$nuuNOV/UqIdpsGZSi90Yi.oz5PEW5Ij4k3rXdaOczKwrTvVNilsTi', NULL, '081253850476', 'samarinda', 1, NULL),
(274, 'Morin', '3up.morin@gmail.com', '$2y$10$d6UStneTC1.4aQVMJZkseuht26rXyo50PoSZlGx5P9OcuonZMC4Na', NULL, '087766463999', 'Jalan Tiong No.33 , Kost Residen (masuk dr Jalan Satrio)', 1, NULL),
(275, 'Dina Ariana', 'dunaariana@gmail.com', '$2y$10$ktJAH9otXxAxu2dS5zMw5uevVFnm0yfl3YqHD2dS5VaQ6PpMY.Wja', NULL, '+6281254008727', 'Jl.Mugirejo Gg.Mulia', 1, NULL),
(276, 'Norman Yudhistira', 'Radioactivated96@gmail.com', '$2y$10$EWsj1lYIXsRbHUknBAODje.ahQUoATTh3zVmE5k4e.iAKXqOrVaf6', NULL, '081270917206', 'Jalan Karang Bolong Raya Blok C8 No.9 RT 06 RW 01 Komplek Harapan Kita, Kel. Bencongan Indah, Kec. Kelapa Dua, Kab. Tangerang, Banten -15810', 1, NULL),
(277, 'Matthew', 'matthewak26@gmail.com', '$2y$10$qqGKPcbo4Rv0jWIACf/Yw.zVXN9Gs9XWXb/lmqp6l4ngP46Ww17rq', NULL, '081280055188', 'jalan arwana IV no 33', 1, NULL),
(278, 'Dini Widyani', 'xixiahtic@gmail.com', '$2y$10$fGCsdfxf0Uff9sXN6NeFIOEnVQYDF1vjP.nJzNwGJ1RZQT5NUJ96u', NULL, '085720197601', 'gang aren no 9', 1, NULL),
(279, 'Sylviana', 't.sylvianad@gmail.com', '$2y$10$hCjPpRWtFKtqcKgTt3mpTOBzZXPoJYwrNr2xWw2zxvZC4dVVDBVT6', NULL, '085733060092', 'JL Kembang Raya No 43, Kwitang Senen', 1, NULL),
(280, 'putry ds', 'putryds@icloud.com', '6fa697df6a7c82787619ea2f70eb87b0', 'feff55fef75562b06647dce0cf10b520', '081247147523', NULL, 1, NULL),
(281, 'annisa', 'annisaratnasari.beky@gmail.com', '$2y$10$8Mp3AG2kUJi5MZjVYkTKsu4PoulAlpNC4T8rE7oldGdHBWNQTjWk2', NULL, '081290347929', 'apartemen aston rasuna', 1, NULL),
(282, 'Morendy Octora', 'rendppk@gmail.com', '$2y$10$zW0ry8Y6.EZZcWZ6cmy6uerUGtNAh/kQDySsxkI6FCOGEa5LdPkyC', NULL, '082112277828', 'jl. sawo kecik 7-8 No.12', 1, NULL),
(283, 'mbutut', 'mbutut70@gmail.com', '$2y$10$L9qfRKtNUJKmXia5XIjdKOI.4Tn.GGv0kxU5JuvRBzpazlh9Ea1va', NULL, '081234567987', 'bandung', 1, NULL),
(284, 'Donna', 'ydonna1989m@gmail.com', '$2y$10$NSJxB2zl6EUHRcJ/ohrKnuBSsDRNQ/icO4BtOWcXodhwlOBGOKg1u', NULL, '081932270969', 'Jl.Pulo Besar II no 5 Sunter Jaya, Tj. Priok, Jak-Ut Depan Mushala Baiturahman', 1, NULL),
(285, 'kania giwangkara', 'kgiwangkara@gmail.com', '$2y$10$9rnJeuK/71bdOSgT4eSOReGxhKp6khH0lAVY33A.jM/3ppL/pGIJK', NULL, '082240615997', 'Jl. Jatipadang Utara No.7B\nrt 013/02 kel. jatipadang, jakarta\n12540', 1, NULL),
(286, 'devina k ', 'devina.wardhani@siswa.sma.ibb.sch.id', '64fcd80998b558a68d1f0f925da44d12', '75f7061bfe00a481d1d99efb1fc85800', '085845504405', NULL, 1, NULL),
(287, 'Evelyn diani', 'Laurensiaevelyn5@gmail.com', '$2y$10$cyatqwKHtVkZdJZiF/p0LOPDKZxthcmv5fc0XacWMVUZabxzMtMnu', NULL, '082197779779', 'Jl. dr sutomo, sidodadi, samarinda ulu kota samarinda, kalimantan timur\napartemen konongo samping hotel amaris. ', 1, NULL),
(291, 'Gugun', 'wawangunawangugun@yahoo.com', '$2y$10$YDko/XQFfIeVF6FNRBjUIO1a2nralHwrPaa6gHp7CqGG/E2hIQef2', NULL, '082111222251', 'jl.h kamang no43 pondok labu jakarta selatan', 1, NULL),
(292, 'novitaLaundry', 'novitalaundry93@gmail.com', '$2y$10$/tiKJ2VLuga2yxHuqamBZeglIrtOUjqzLvaxDa3SOuo6kjByVSX3a', NULL, '085692971016', 'karawang', 1, NULL),
(293, 'Fanuel Feto', 'fanuelfeto@gmail.com', '$2y$10$mwWuDksMUVtnKWjUl1VFNumG0eJJfKq3LuN7nefYlMa7Wv0OTIJfy', NULL, '083151507281', 'Jalan nusa indah 7\nBlok D 20 No 19-20', 1, NULL),
(294, 'sheila', 'sheila.an94@gmail.com', '$2y$10$pk/SJwvRZzrcGvvXzkp.BO4bzEX8nR3l2ugxDY23k6GJsp6A.mrRC', NULL, 'Kim232594.', 'jl. kebon jeruk raya no 43', 1, NULL),
(295, 'Mursid', 'mursidmu@gmail.com', '$2y$10$34BNN/eQJPhq9tc5dqljIuYJcmRoGVLXamgU7oJMgsRzPDaQQnDAC', NULL, '0811305142 ', 'Gresik', 1, NULL),
(296, 'linda nubi', 'abirizky230@gmail.com', '$2y$10$wpP6.djFr4NvvU7rLD.RWu1Hz1RD/5.flDtw1SB4Rvx2NMGD.Tdwq', NULL, '085709185303', 'jln.pangeran ratu jakabring palembang\n rt 24 rw 07', 1, NULL),
(298, 'abc def', 'eloquent777@gmail.com', '6600d6fe20b991864f7e2c38e47471d5', NULL, ' 966543187770', NULL, 1, NULL),
(299, 'nad', 'nfkwla@gmail.com', '$2y$10$s7DxlbFm4iiAWMog/7ZPAuZmgWzSki7U5XeiXbLYiUp0ihTuFALXO', NULL, '082259301828', 'jakarta selatan', 1, NULL),
(300, 'Dimas Wibowo', 'daemswibowo@gmail.com', '$2y$10$eTvuoQImcvl6PqbHIqKpEOYvMUXrFSsD65bWSw5.VWyxiY0p/jZ42', NULL, '08112030194', 'Jl. ', 1, NULL),
(302, 'vika', 'claravika7@gmail.com', '$2y$10$yYFWkWDcV2DTVVqMcvTPjOgxDx1IK7FA8XCKDj..oJWaj6gfExCbO', NULL, '081212010347', 'jl. J no. 67b, kebon jeruk', 1, NULL),
(303, 'Faiz Ramadhani', 'faizramadhani09@gmail.com', '$2y$10$d4ZhSDpa/goBO6JrjqcbEuVeCb3Sr5vbl6v/7shZVqdNPpQCUwi9m', NULL, '081333363595', 'Jl. Raya Palmerah Barat 49 Jakarta Barat', 1, NULL),
(304, 'agny', 'agny.kathelina@gmail.com', '$2y$10$qrZuHDKVyYgLPv/F39cc3OR4PaC.ww7FAQYhqpXV2ZK4nOs1n/FXS', NULL, '081388968881', 'jalan roket no.5 kimoleks kidam sumur batu kemayoran jakarta pusat', 1, NULL),
(305, 'alfa', 'alvi3.mitra.net@gmail.com', '$2y$10$hwcZe3ZMwdVjbIL/395oruIREykNf0aK4Yj.MZq5qpVGE7N5kpHf2', NULL, '0811557573', 'jl pelita 4 sambutan', 1, NULL),
(306, 'Shanti Armada ', 'shanti.usmayani@af.co.id', '$2y$10$c7jY2gaqnk.WJCGE/55kmeBFw5XWfAack19ulmZiF2X6.c.ajVhSC', NULL, '081395308800 ', 'Pangkal pinang ', 1, NULL),
(308, 'Deby Sigit Pratama', 'deby.sigit@gmail.com', '$2y$10$AQRqATPYzuUhJWy5Y51UQOoJwTjezPpCx/J/p4Y01R1O8EDadqrWm', NULL, '087888313869', 'Pamulang Indah jl. Bunga Teleng Blok D 12 No 12 RT005 RW011', 1, NULL),
(309, 'tuty', 'zazezi2011@gmail.com', '$2y$10$BAuHt5TEmFwk5esgpwgLX.lJ.1ysmqf1gV0iH2VDXWiQX/e6IMaFe', NULL, '08158242866', 'jl. pulo sirih timur 4 blok CB no.34, taman galaxi indah 1', 1, NULL),
(310, 'Sinulingga', 'rhena.sinulingga@yahoo.com', '$2y$10$zKHKFGILCd4.Jh0zYKJtrOc59B..ifPM2G1YHs3qZh0Jf7/SFx7ja', NULL, '0856-608-9914 , 08p+              517 ,', '\n\n', 1, NULL),
(311, 'Sita', 'susita1705@yahoo.com', '$2y$10$mpIaacvKjmNCAuoUMoh3QuvRT5RENamc2MiOLXWqOVjdBPYpKTLYi', NULL, '08979380377', 'Jl Salak No 22 Guntur', 1, NULL),
(312, 'Harinda', 'inda1986@gmail.com', '$2y$10$sByKnrBspXqJOJ5nEieFhu9svThnP1qbkQhMDto.14bmZDY1j4Nh6', NULL, '085743249009', 'Jl.Damai 52A Gg.Nakula RT.03 RW.21 Sariharjo Ngaglik Sleman Yogyakarta', 1, NULL),
(313, 'febri', 'jasminenursaufa@gmail.com', '$2y$10$eAk3S0mni/rj5raSrUbbU.s8sXpTephfywRqa16YcjmJpfkslT5I6', NULL, '081241262828', 'jln.A.P.Pettarani.no.11\n\n', 1, NULL),
(314, 'muhamad alvaro mulyana', 'alvaromulyana@yahoo.com', '$2y$10$2HVMFC4Jdo427GWdS5Mxae4d9LroXa0gA.4PaQucKCFlkDgFB.BLS', NULL, '0895344185385', '\n', 1, NULL),
(316, 'muhamad alvaro mulyana', 'muhamadalvaro@yahoo.com', '$2y$10$a6m1JSYitjSv4C7Cf/lxleXU4uYjdSrstjTlOIs/ux.va3dDKH0Xi', NULL, '0895344185385', '', 1, NULL),
(319, 'muhamad alvaro mulyana', 'muhamadalvaro@gmail.com', '$2y$10$pSsQ9iA2xUd7yzlG7EP0au4FrfCseztPUDEuYoaVABSWOEwwfgWvO', NULL, '0895344185385', '', 1, NULL),
(321, 'muhamad alvaro mulyana', 'alvaromulyana@gmail.com', '$2y$10$dEAhg7IqloFMtu8iitFWmu/VtdoP5/LbOBqiy/2lvySLIE78YH/dq', NULL, '0895344185385', '', 1, NULL),
(324, 'bayu putra onadio', 'bayuputra101@yahoo.co.id', '$2y$10$va5dQbzrVweIdPGK8ei2O.VYR1Zi00O1ZelfOnwLj6TLTHiFxvp6C', NULL, '0895344185385', '', 1, NULL),
(330, 'tunggo', 'tunggabhimadi2@gmail.com', '$2y$10$RiXZpLrLzIN5cWHLHGuzV.RTjBBIXPLr8mw7LLUYHwEBcKd1neRae', NULL, '085725308321', 'surabaya barat', 1, NULL),
(331, 'Primanita', 'nita.luv.puzz@gmail.com', '$2y$10$PnYzrWQjUZLzv8poXZdp7Op9/9fwMmNYLOrqxFTz5Q1FBSUMydZiO', NULL, '082139971865', 'Apartemen pancoran riverside', 1, NULL),
(332, 'samantha', 's222l@yahoo.com', '$2y$10$6hCqMsHQgdlrCSmQLWza3OoFHEC9.kf7cbbBWUbxUwt4HLZZeBKEC', NULL, '082111890481', 'mega kuningan', 1, NULL),
(333, 'satria', 'satriajingga55@gmail.com', '$2y$10$FWXMK92/Fb9DgI/ts0Vf9eraHvT5P3Ava3sgiYPcabcu3X6Skpgya', NULL, '085210533030', 'jl.pelopor RT.06 RW.011 no.16 blok N2 Kel.tegal alur kec.kalideres Jakbar 11820', 1, NULL),
(334, 'heidy haddad', 'heidyhaddad@gmail.com', '$2y$10$4NEHhU.J8mcqfTFeRbxP1.GGPuxZm5WDdyAnGnDw5dd.TRIl7Gu/S', NULL, '085773868844', 'jl. h. Soleh 1 no 10 KEL SUKABUMI SELATAN KEC KEBON JERUK KEBAYORAN LAMA', 1, NULL),
(336, 'Regina ', 'reginawahyu@live.com', '$2y$10$gwbBuMrXQDxx/tU4JHIeKOnsPjU6shFRNnvQBgHe2B3ATBu6q2Vri', NULL, '081808669004', 'Palem Ganda Asri 2', 1, NULL),
(337, 'Marisa', 'marisamay85@gmail.com', '$2y$10$xHUeIFS7PGRZhiaSbBLUJ.5ne3z0NjqcVh.nUAuqyEL99yQIKVwu6', NULL, '081318796120', 'kost no 78M belakang holland bakery hayam wuruk', 1, NULL),
(339, '', 'yanto', '$2y$10$QefGhdu38EIBSGiSjzw8i.lrFaRuQHMyS.jYbmgDKPNqigFSVs5hm', NULL, '0811998855', 'jalan sawo no 7B. ', 1, NULL),
(340, 'meisa', 'meisa.dertila@yahoo.com', '$2y$10$ngtC98fcTeykZCXXQ/t4d.wDB5Znps7KPEFiFfKnvHWc1grnvLw9y', NULL, '081294977749', 'perhubungan udara blok A no.7', 1, NULL),
(342, 'Syarifuddin Nursyamsu', 'nursyamsusyarifuddin@gmail.com', '$2y$10$9FOm0UvGFqo16hCfAg0cc.43HABTAxWbDt0ykvXKM2HkXr.NVaAMO', NULL, '085395156340 ', 'Jln. Andi tonro', 1, NULL),
(347, 'yanto', 'mardianto4free@gmail.com', '$2y$10$cvwQq7XfbDQWy1OUNe26vuEog4qhfm1aLcpNJHUCT7iQLCi68F.ry', NULL, '0811998855', 'jalan paseban raya no 3 A.  ', 1, NULL),
(348, 'nirwana', 'nirwanamuh.ali@gmail.com', '$2y$10$J7G3WWCVSnULJs2PxWJhB.kM./S/WY99BbsrZASHH2aAW2lslQbZC', NULL, '085255061443', 'hotel best western kemayoran\n', 1, NULL),
(349, 'dwina setianingrum', 'tyadwina@gmail.com', '$2y$10$JC28oR.pLd4tQlGOLmhXaOYzpdOBzwczFFiBlA9oOtf59oqOyzQDK', NULL, '081288476494', 'komp pln klender no 71', 1, NULL),
(356, 'ajeng Febriyanthy ', 'afebri2299@gmail.com', '$2y$10$.BIpjtyReoKyz8gRvkWmk.dOpZneHEKOvy7tTexXbAY2b70TjRDJe', NULL, '', '', 1, NULL),
(357, 'oji', 'ojixzzz@gmail.com', '$2y$10$SKKD0MsEON00VB2pRD0XG.wuNKaOV6jSrC2xAX5B5zmAhiLsm45ma', NULL, '99288299', 'jogja', 1, NULL),
(358, 'dadan', 'dadans1980@gmail.com', '$2y$10$oyaEp60EtfWxaoRpP1IG9O03eC.EFUC9PapNK5jBPiRM1JP5kRTR.', NULL, '085314115835', 'bekasi', 1, NULL),
(359, 'gita', 'gitaraffa10@gmail.com', '$2y$10$8mina7koT2O4sVVtMqFmaehZZR9RM.XRad3Jy/CVvHLXgWkvct0MO', NULL, '089643444769', 'jl. petamburan III', 1, NULL),
(360, 'Poppy', 'frpoppyw0777@yahoo.com', '$2y$10$9JAAdJbGnMM2b55.J/a9Nu2MZybutRnx5IkUY95QAQ3AtuTf3Z.vi', NULL, '081288886877', 'Apartemen kedoya elok tower utara\n unit 803\njl. panjang - kedoya\njakarta 11520', 1, NULL),
(364, 'ss', 'ss', '$2y$10$Zy7/qx01dZa.RgFDFQRl2ut7IyxtNiKO4pAG3YDPZf/.aj3TYT8aW', NULL, 'ss', 'zz', 1, NULL),
(365, 'nanda', 'ndananda93@gmail.com', '$2y$10$7xN2adQkqzlO8/D1I/ZEt.y13tLigBkBqhLH9yQNPKPeotvZt4bFK', NULL, '085215172189 ', 'Jl. Cilosari No. 19 Cikini ', 1, NULL),
(366, 'Hendrayani Kristianty', 'yannie_13_01@yahoo.com', '$2y$10$RQAcOF1owjcyy89QIp9rxeyHxUiU/aif/RKLfyw2uL.M7WPsR3edK', NULL, '08118115591', 'Jl. Haji Muhi No BJ 3, Pondok Pinang, Jakarta Selatan', 1, NULL),
(367, 'Jonathan', 'jonathanjojoganteng@gmail.com', '$2y$10$0sSSJ9SgxYUcstG9QCal/.b.uZaPqOFoYqWqAFEVXFGqDd05rHjz6', NULL, '087781435259', 'Jojo\n', 1, NULL),
(368, 'M Rizky', 'riskisairung1106@gmail.com', '$2y$10$iJ9xuALCdusXPFb5tA/ovePoFJJOPeput7rP3gThLnlXE9ySJY/X6', NULL, '085710158490', 'JL. CIPUTAT RAYA ', 1, NULL),
(369, 'athiya', 'athiyamahdi@gmail.com', '$2y$10$IyrTO.aYxICk278zdnHAGuWfAmUjrHDY8eeTTA4hc002ywMnzsuau', NULL, '083807050899', '', 1, NULL),
(370, 'ririn puspasari', 'puspasariririn.rp@gmail.com', '$2y$10$3ChnXV3hL3P5hwt44rIARO7Ed2S.pROFUTXvqgN9D8vTvbe.IbDQ2', NULL, '085695385093', 'gg.pertanian I tanah baru beji depok rt.04 rw.03 no. 26 ', 1, NULL),
(372, 'Rangga Permana', 'ranggaprmana@gmail.com', '$2y$10$W5gTFwV8Jbq/DH14LhXdSOpb4AAioFDfqH9.pyYcmqqsarN9MQqWy', NULL, '081290197577', 'Setiabudi Timur No. 29', 1, NULL),
(373, 'erica', 'ericasukendro@yahoo.com', '$2y$10$7k1DU4r.cGwAjsFwti5.WurCTXhZNEi.gD6Q2uDC4FLsAypCaqBbu', NULL, '085773000913', 'walet indah 3/22A  pik ', 1, NULL),
(374, 'Siska', 'fransiska.vs@gmail.com', '$2y$10$xGzMTKTkHn/RAQbmEEVfCu7K9262t6GeaX1mKVxOzE6kcfHpkrbfq', NULL, '085773854444', 'Dharmahusada Indah Barat', 1, NULL),
(375, 'julio', 'juliolie280720@gmail.com', '$2y$10$ZBRIGBaTpCRgcwEjDTTSwuWaGJkz/CJEVa6hHhrdesfB0zj0gF0si', NULL, '085200620006', 'bandengan selatan komplek 58 56k\n', 1, NULL),
(388, 'taufik', 'tokliks@gmail.com', '$2y$10$ce9w6IwbslDXnKv5oGFY/uIzroVQ5CWryKafTfXc4JILXulVvXudG', NULL, '081398776827', 'raden inten II/14', 1, NULL),
(389, 'benyamin R pakabu', 'Ben77719@yahoo.com', '$2y$10$bTOrE.nz7xExL9OaNk7qBuZYY.NjXpQTBwUVK7VYjNtLIDKQGQ4mG', NULL, '087810673110', 'jl duren tiga barat V no 35 jakarta selatan', 1, NULL),
(390, 'elklks,', 'wSasZ', '$2y$10$4XRlE6/1/ataYVWCzxdxT.037FWY9xDDSa/sftRUQ9MozSn56rjEm', NULL, '', '', 1, NULL),
(391, 'sszdy#A', 'kiu6xw1_          c', '$2y$10$lhhu9ACc1eJ8hXVKZr./e.96yguacGPZ8nWAWFBjhOdfsVU8aoeZm', NULL, '', '\n\nm', 1, NULL),
(392, 'tanti', 'tanti.wdhk@gmail.com', '$2y$10$xz4Oxyg/wfLg.RnCxqzcJ.oIK9URzHY9ml2vfae8niPHMK9NIGIVq', NULL, '085776868986', 'Komplek PU Jl Suhodo I no.1\npasar Jumat\n', 1, NULL),
(394, 'Theresia Marpaung', 'theresia.marpaungg@gamil.com', '$2y$10$9hfpb9FZ8rYy9N0SL8m83uZ9dz2gTRaJ.fjSVMarytmOiRQyg7Rdq', NULL, '082168495805', 'Bunggur 19 no 13.gunung sahari. kemayoran. jakarta pusat', 1, NULL),
(395, 'Listianing Widiastuti', 'listianingw@gmail.com', '$2y$10$amnNlHJHvyJc89jtBp5JbuvPru31POuadfazo7kg/JTSWi4HV8KQC', NULL, '081802456881', 'jalan rosmala no 38, tomang, jakarta barat', 1, NULL),
(396, 'Detie', 'detienajelita@gmail.com', '$2y$10$AuJLy5RdWNTZAfcoS9JgbeM6vsdHxWWRw0nh/N0jvLTcXR8lduRci', NULL, '081311138396 ', 'Jl. M. Saidi Raya ', 1, NULL),
(397, 'yoga', 'yogakusuma32@gmail.com', '$2y$10$C8vZPmmYrPmgILwaZFBtiuZouMZZ0gjNpo7u.0HW3xAYABISF9UiS', NULL, '082135793066', 'jakarta', 1, NULL),
(398, 'cici liana', 'nonaciliana94@gmail.com', '$2y$10$qZjGNxZhZXhAaMQQ6EVJpe67R5QNdqE0bQrRSU5qGNlLoLDVB7cyC', NULL, '082358901352', 'jln.M.yamin, gang 1, samarinda', 1, NULL),
(399, 'Ayu Rahayu Muji Lestari', 'ayuartawijaya@gmail.com', '$2y$10$7/xuMsB1WEozbinqgQ3L5uNFnfQkNVSmAoc4EJJ4xI1c2U9qVu/92', NULL, '08561671004', 'Jl.Kapuk Kamal No.80 Rt005/012 ( Samping Kanan TB.Sinar Kapuk,Sebrang Jalan Masjid Baitul Karim)', 1, NULL),
(400, 'Mia', 'miea.islamiah@gmail.com', '$2y$10$biw7Vk/nt221RKNDeKpOtetBASnlOtfosgYiiY5TCoUcnYIxXZnJK', NULL, '085719430087', 'Jl. Madrasah No. 13, Pondok Cina - Beji,  Depok', 1, NULL),
(401, 'guruh', 'guruhagustinus@ymail.com', '$2y$10$hjW73geRyQFeGv3gDgelx.0XtpF1Uoid/8wudSAMeI4g.BIYgrgr2', NULL, '085759787234', 'Kuningan Jawa Barat\n', 1, NULL),
(402, 'berkah', 'berkah.laundry08@gmail.com', '$2y$10$CsF502NZP.RJPQ8b85xFw.LrZ.IQnJCmcQAheVtceu1Il50KzQYs.', NULL, '08572549331', 'jl sunan Gripit.depan masjid Attaqwa Gayam', 1, NULL),
(403, 'Mochammad Arif Budiono ', 'mochammadarifbudiono@gmail.com', '$2y$10$fp1vwUpAJP.axiPa/0QbJezDYT1B9x8WvRn3Vpe49KgXUNBPX7BAm', NULL, '082261687272 ', 'Jl. Pangeran Moh Noor (Perum Tepian Blok Tepian 6 No F5A) Sempaja Selatan, Samarinda Utara, Kota Samarinda-Kalimantan Timur ', 1, NULL),
(404, 'Geby', 'gebyagnesthasia@gmail.com', '$2y$10$evMbqpnzIwLZg5VZgZfHdOeFUtQvbKvXGYtA.a8H1SYM9rB83NQmi', NULL, '08979175461', 'Gang SMP Darma Bakti no 16 rt 08/003', 1, NULL),
(405, 'syarijal', 'rizalsaputra999@gmail.com', '$2y$10$AWA237ZB2i9Z3rdsXGbXK.Smz08/FIocHPMr19sJcWjNCokabhxLW', NULL, '085206507303', 'telajung, bekasi', 1, NULL),
(406, 'Akbar Darmawan', 'akbar.droid@gmail.com', '$2y$10$tm6SH8biJ9j.Qmpv.f7iD.sD14E2y..U3RHceKomONVVrzcqD8DX2', NULL, '085713131345', 'Jl.Pakis Hijau 7 No. D329 Bengkuring', 1, NULL),
(407, 'Widya Latief', 'latief@gmail.com', '$2y$10$n8cnlDFcNct1FgiezsDqUOqDLPYAt5o3EO1NzqjJKrtlJHN9iL8Mq', NULL, '0818731511', '', 1, NULL),
(408, 'Suherman ', 'siaplaksanakan@ymail.com', '$2y$10$w3SkAwOcmr5fNHTeS5mcbePMdBgwlkG9mZOqF/OBNu.njqH1LDlNi', NULL, '085210935624 ', 'Rspp Jakarta Selatan ', 1, NULL),
(409, 'fera widartati', 'fwidartati@yahoo.com', '$2y$10$Xy7PLvowxMYMb4cpR0cXL.S7kQXXdd0tvJiVmYMwIBwuEOu5RvPcO', NULL, '082378056666', 'jakarta selatan', 1, NULL),
(410, 'farras', 'frrmw@yahoo.com', '8869f9e3329e93d295b64ee3bfd8b152', '4f9738a14cd8977aafe18504e1dc0eaf', '087889239485', NULL, 1, NULL),
(414, 'leni adinda febriyanti', 'lenyadf07@gmail.com', '$2y$10$R1pVegspztVTR5FxtxJaxeLABT97zSI5gK.dSs3rL0oGzlcNhcsNq', NULL, '083112537333', 'jl. perumahan mahkota indah', 1, NULL),
(418, 'yosevine', 'yosevines@yahoo.com', '$2y$10$srUfDNqC0MPyeQmbTSiWEeMWrRdyqzluy2EstF.w4weNqWYheWjlG', NULL, '087815655710', 'Apartemen Educity tower H Pakuwon City Surabaya', 1, NULL),
(419, 'Azizah ', 'azizahtiya0@gmail.com', '$2y$10$LoevQPFoY8gVpYttTgoN..N.Ui65flV/6xB4Kg4Q8y1DHkmLL2hmu', NULL, '085600146334 ', 'Salatiga ', 1, NULL),
(420, 'aini nur', 'aininur1464@gmail.com', '$2y$10$iNPujIYAlI7zIhIvwMPec.ZS0YNpQSm3l7RwDVTPe4ccyieRFTBMi', NULL, '085725308319', 'SBY ', 1, NULL),
(423, 'anwar', 'muhammad.anwar.safei@gmail.com', '$2y$10$A1TywEv21ROXu5mvXL4Bo.NcEJHw9KhwPAo/jdbydMFuFFVKLeZOS', NULL, '085728657822', 'Jogja', 1, NULL),
(424, 'Triyana', 'triyanaanggunsari@yahoo.com', '$2y$10$joTTLFul0bQAP.Iq1WK3SeB.d8Tugd7kgj9D5khmrn72V2CiV7x5K', NULL, '085349492077', 'jl. jakarta Blok BF no 21 loa bakung samarinda\n', 1, NULL),
(425, 'ana', 'anarahma918@gmail.com', '$2y$10$tPiLl.1CgAG49BYr72wmR.d0qlXjv7gq3hc3/EMEE1vumPjulNtxa', NULL, '082247369193', '', 1, NULL),
(426, 'catur krisna avrenso', 'caturkrisnaavrenso@gmail.com', '$2y$10$IdEB1MiaaTd7s36hmTzin.fLajeuIQmjmngiS0p7whpdtcXBK3b7y', NULL, '081311156014', 'shakti hotel harmoni jakpus duta merlin', 1, NULL),
(427, 'isfy', '085790355352', '$2y$10$FSAm9YyKX.bso5LU5DJ59.DR5PweSuHsqOLaMCBXB9.veT2G8cFKa', NULL, '085790355352', 'jl.ir sutami sungai kunjang\n', 1, NULL),
(428, 'Bastian ', 'tinacollection886@gmail.com', '$2y$10$TRptH74Y2zp/cPfanv/dXO3/qft7iA7Bt5yL5E4zk6xi2Y3qbebla', NULL, '081289306833', 'perum Palem Ganda Asri 2 cluster BB blik E no.8 \nkarang tengah - karang mulya (patokan sebrang Ace hardware raden Saleh )\n', 1, NULL),
(429, '1', '1@1.1', '$2y$10$FZ3Wy5JlUmu7H.cUrkpYAuo4JArG9TZf/2a.mGqN1sDYp4qYH0BI.', NULL, '1', '1', 1, NULL),
(432, 'nando', 'nnirvas0@gmail.com', '$2y$10$rR6CZY71bvjUvW4M6QLz5eP377Choep9JpsEK3QxpgLo5WKyW.NNG', NULL, '086282927793', 'Surabaya', 1, NULL),
(433, '2', '2', 'c81e728d9d4c2f636f067f89cc14862c', 'a12fcae18753132735bf13129268bcd2', '2', NULL, 1, NULL),
(435, 'yudi', 'deniandre40@gmail.com', '$2y$10$NdHv4qxZVjnxZc.bGo53D.TghoPr6nGUD0puR/ZxpBgflIekukZ/W', NULL, '08129625770', '', 1, NULL),
(436, 'monika', 'momonmonik96@gmail.com', '$2y$10$Y.UOe2n6ddT4hZhbR5L/9.bcWiTUsCX1FowzH.ZECj3EaPb1gku22', NULL, '085782873958', 'Jalan Kramat Raya nomor 14B,  Kos putri Ippon, Kelurahan Kwitang, Kecamatan Senen, Jakarta Pusat', 1, NULL),
(437, 'Cipto wiyono', 'ciptokarya@gmail', '$2y$10$btBpY4yeYjaCHeeVf0kQ7ePCCuTrFyFUEhvYStlvt7CqxsLPLdGNO', NULL, '081326895974', 'Surabaya', 1, NULL),
(438, 'agus', 'agussuci5@gmail.com', '$2y$10$jYNzjhl40zzWzqKd8IGAEeGEBbKY9epfMlTe2ivVBYTPYX.WuojHK', NULL, '081234304459', 'jl.nginden 6E no 29', 1, NULL),
(439, 'agus', 'agusucipto5@gmail.com', '$2y$10$zgifwCF2Ra6/Yp5am6wKKu7gdC109e900Q35L5I5E6AQqIvP2UvCe', NULL, '081234304459', 'jl.nginden 6E no.29', 1, NULL),
(442, 'athiyah lailani', 'athiyah_lailani@yahoo.com', '$2y$10$pnGvoVGlexXd9mEz8AmQe.eUg3KjL5FPOSaiwDO95PJgEcpAD9f5G', NULL, '082165599401', 'jl karya kasih\n\n\n\n\n\n\n\n', 1, NULL),
(443, 'Wendy Gunawan ', 'wegusu@gmail.com', '$2y$10$5FNKVU249hx.XDrwciIIFeZGw5D1nrc2ePodPKzdVGl4lcbS6CWsm', NULL, '081288885292', '19avenue apartemen\n', 1, NULL),
(444, 'ganteng poda', 'pisang1x@gmail.com', '$2y$10$hrAiqckPlMKSvbyiXf.AeOSm3x4AUbcG3sApwhcTnFIyZDHBxFIZC', NULL, '085333056888', 'jl jl jaga ayam', 1, NULL),
(445, 'dayana', 'dayanhartamu@gmail.com', '$2y$10$iCFqYVDzoYDyN.GmihE6UeO8zZ02M497WwqTuS796GenMNV15piJW', NULL, '081293908460', 'jl. apus 1a no.5 jakarta barat\n', 1, NULL),
(446, '', 'arsyanisa80@gmail.com', '$2y$10$haw9OIRr3b3VSOto0lR3ueBXlPRt1oAiFWca9.wuyaVG/Nn5Kbphe', NULL, '', '', 1, NULL),
(452, 'nabila dara ninggar', 'mdaraninggar@gmail.com', '$2y$10$u.6uMMuGnrCB7ZsDrvAK1OHANoiHqaA1R3eObEy8ePfc.oCMOt9TG', NULL, '089653562397', 'harjatani heritage', 1, NULL),
(453, 'monalisa yoloan', 'kawaii_michee@yahoo.co.id', '$2y$10$8GjXYPklziMyDNESpGoS.e04hrpPYI1evTXvk8m9eKMNz3y5lkMdq', NULL, '081299225514', 'jl bendungan hilir gang 7 no 18', 1, NULL),
(454, 'ari', 'arihariyoto28@gmail.com', '$2y$10$pvIyegIkH64J/ybhI.BsY.U0ZtZ7tJnebOQgnsMb/dAwdFgNVXPMq', NULL, '081350102399', 'jln PM Noor perum bumi Sempaja blok GA 170 Samarinda\n\n', 1, NULL),
(455, 'marisa', 'marisanoviyanti17@gmail.com', '$2y$10$NP81cnsAjlbrCReltpGRUujybho2h9PIcR5bK0Jgj8RPUXY9bAvXy', NULL, '@bersama1', 'jln. Tangkuban perahu no.9 pepelegi indah waru sidoarjo', 1, NULL),
(456, 'badra', 'badra86aja@yahoo.co.id', '$2y$10$MBh9v3iMIRgurBNizmx5d.B4szD5Mv8N6GKgvh6Gxoa7Gn7ah8up2', NULL, '0816384890', 'palembang', 1, NULL),
(457, 'andy laeman ', 'andy.laeman@gmail.com', '$2y$10$qE9TdL6cIjPRhtI6cX7G8OApj.3zJSKFVAB/q5NQ3j05XTbgDbbMe', NULL, '0811889170', 'Apartement Bellagio unit 15 AF14 jalan mega kuningan barat ', 1, NULL),
(458, 'Hendri Fauzan', 'fauzan.hendri@gmail.com', '$2y$10$jRKCtGk0CMhSKxIAtpRte.TGXC.b4xmUZKDD6VMpV5eb09x36zJoK', NULL, '08116649474', 'Hotel Sentral', 1, NULL),
(459, 'aditya', 'ahaswandana@gmail.com', '$2y$10$9b//R.lBVdk2JWWKgXtAMuudFm6vIZOTHDNaMcSPMNcqUM20D8lci', NULL, '087822467202', 'Jl Benda Jaya 2 Blok X No 23 Durensawit', 1, NULL),
(461, 'tyas', 'tyas.alty@gmail.com', '$2y$10$kv7Fudfgc/iKUsHAKaT0Q.Xq7oE8HhK5v2eaHqqV.gB2X4kxdsmYu', NULL, '081932222991', 'cimone', 1, NULL),
(462, 'syahroni', 'roni.mamcunian@gmail.com', '$2y$10$L.YXH3o9ShlZUUROD4ebz.RNcMUEuu84KATqbuq9yhBD.4ePH.o0G', NULL, '081253122257', 'jl.p.m.noor perum griya Mukti sejahtera blok R no 16\n', 1, NULL),
(464, 'Anton Hartono', 'anasrirejeki92@gmail.com', '$2y$10$xIbDJs4yryOj21ic/Zu1yOTZ1E02h/EjzFe/Pr3eYk4opWmJ5aeiu', NULL, '', '', 1, NULL),
(465, 'Hadijah Nur', 'hadijahnur121@gmail.com', '$2y$10$FGYmP.w.seByEA3lfmqvAesK8tSbMsV.2ZrSqfoWooZKdh.3v7rX.', NULL, '081297226474', 'Perumahan taman banjar agung indah', 1, NULL),
(466, 'Novri', 'novrisima.eva@gmail.com', '$2y$10$F3OIBKmi83eKfSFp8UWlbOLje8GmTaTeCxaYiblnPp6hOg0fKRcCC', NULL, '082111720642', 'Jl. H. Usin 2, Perum Rumpun Indah no. 65 Sukmajaya Depok Jawa Barat', 1, NULL),
(467, 'nida fikriah', 'nidafikriyah81@gmail.com', '$2y$10$zQUHcjVFeFEYRoVxLPmF4.9ujLwY1gresg0qYpeB4QWTUZqkruUKa', NULL, '081212333315', 'trafindo 1', 1, NULL),
(468, 'Febrianto ', 'vbree07@yahoo.com', '$2y$10$XyldY.lUWimJwN8/VFI.GOZjmcdzyoQARujKCQzr6SpSucVEu3Sfa', NULL, '081284003222', 'Perumahan RS Harapan Kita Jl Bakung 2 blok i4 no.19 Keluarahan Bencongan Indah Kecamatan Kelapa Dua Tangerang Banten', 1, NULL),
(469, 'ivon', 'christyivon77@gmail.com', '$2y$10$h0pRz2AcEXLxb2w140TvO.ctE0G8tHrhiNfCzbQkcwKmkaNNeEqWa', NULL, '', '081244491477\n', 1, NULL),
(470, 'aris', 'ariezzidane88@gmail.com', '$2y$10$uviiONi23ospcGGGX7tKW.v8DtWZH3Ds/ThsiGLTh/YfpSQZ4c7pq', NULL, '0895332600349', 'depok', 1, NULL),
(471, 'steven', 'steven_1310@ymail.com', '$2y$10$SND.wHWFaox2MLthwCtILOQNJlEbCgfC4Q6uM3lHM04VJy4mqueOa', NULL, '08121916180', 'Jalan sakti II no.10 petukangan selatan', 1, NULL),
(472, 'Viktoria', 'sieghage@gmail.com', '$2y$10$UAdUa/Vw3dLlsXRZgwbz6Of5hm.32gG1Qi3nI7Dsse7JTf3P3mX5S', NULL, '082116663214', 'Blossom Ville L2/7, The Green, BSD City, Tangerang Selatan', 1, NULL),
(473, 'berty', 'bertybian@yahoo.co.id', '$2y$10$bi5DM3IPo0/K69s3t9yIIOxQoq2BzkZElaAjg0QGzObgwE/SccOPC', NULL, '08156816664', 'bumijo kulon b.12 jetis yogyakarta\n', 1, NULL),
(474, 'maska', 'kangkasyif@gmail.com', '$2y$10$eiOhUE95HAKsb8qO0bu0Je9KVBGZPRwxT0CPCzp6urYjaLQ2.3uee', NULL, '085855696808', 'jakarta', 1, NULL),
(475, 'Marlina Setiani', 'marlinastn@yahoo.co.id', '$2y$10$lqSWn6f2VucBjQJINrdkyeK9GG5lKjn819XqRruiITa68LMZjQETu', NULL, '08778457840', 'rawadenok, jl. rapika rt 6 rw 12 no. 25', 1, NULL),
(476, 'vivi', 'rinavivi950@gmail.com', '$2y$10$xCqEY7EYAyyxajbTnR9gxu/IR3fkcoENI3aaMt8qGlB4.4EdlXt5a', NULL, '087786353228', 'jl kayu manis Gg hji yahya rt004/03 no.28 jakarta timur kel.balekambang kecamatan kramat jati kode pos 13250', 1, NULL),
(477, 'sitta', 'sitta.dewi@ymail.com', '$2y$10$j0ex/muBl7PAwPuB9Lz5quZlBhevMCoTPv.7HddLDFDjKPwmsHbBi', NULL, '08170060399', 'green permata residence. redwood no 1\n', 1, NULL),
(482, 'fitri apriyanti', 'fitriapri241@gmail.com', '$2y$10$T7FrUx7Omza8RcsRSQNw9uNvxfVu0rR1niPKq57Dr.STp8BRRJDOy', NULL, '081221447254', 'Gg.srigunting 1, maleber. bandung', 1, NULL),
(483, 'Muhammad Gravi Danutirto', 'danutirtogravi@gmail.com', '8cd2bf9b3f4a3bb3e91e83fe2a4bf42d', '6afd59e4b92789666071b201c5f10a43', '082137635497', NULL, 1, NULL),
(484, 'judith', 'judithclaranita@gmail.com', '$2y$10$M9IYS2lXHBS0bjxQD5jn5.ZNS59mOZiaMup2jnXTnKCiDi29s//6e', NULL, '085775747057', 'Kebayoran lama', 1, NULL),
(486, 'dizah', 'dizahscahya8974@gmail.com', '$2y$10$lEWx3YfptgoEafoPH779GOyGdX.POTWlY9oGbOnYQSSRp2rDVsmJ6', NULL, '0857-0508-4460', 'dizahscahya8974@gmail.com', 1, NULL),
(488, 'jonius oktapianus', 'jonius19@gmail.com', '$2y$10$4b68oqv7l9kn0KerEXD.a.AbbDxtjSzzxYtE53kqw4ews062wNLdS', NULL, '082220868444', '082220868444\n\n', 1, NULL),
(489, 'Andri Hasdian ', 'andri.hasdian@gmail.com', '$2y$10$001GLX7GTLkZjUXFbTtrCOknkV8r38gqBzlZKVOIpbvKvyhyQPQYy', NULL, '08112126340', 'Situgunting Bandung', 1, NULL),
(493, 'Maul', 'maul.nahyunlee@gmail.com', '$2y$10$cCq.CXgFTkuCFhTFSO76W.sB2/hyMYDonBZ5yfnb.ZdgHU4iqEI.G', NULL, '082350354006', 'Martapura', 1, NULL),
(494, 'Dhio Pradipta', 'dhiopradipta24@gmail.com', '$2y$10$4qnhW3u6SWStq55PLASt3uTZprRJPxaul9K1xwf/WVAatxCPN8w3y', NULL, '081368251983', 'Jalan Talib 1 no. 35 B RT 009/RW 07 Kelurahan Krukut Kecamatan Taman Sari, Jakarta Barat (belakang sekolah tri ratna) oriental kost, taman sari, Jakarta barat, DKI Jakarta 11140', 1, NULL),
(496, 'bred', 'breda @gmail.com', '$2y$10$UN1X8XWeUwhp4vqRsuQRuub8OcfqHJVwiQGwSVcOL4NPesPd4Hph.', NULL, '08179357754', 'kp melayu besar', 1, NULL),
(497, 'Lia Fitria', 'Liafitria1234@gmail.com', '$2y$10$FOQTpDNlBJCDxfGpRvkEsOz06JFgitdBU.POldhyrGHwJvP349W/G', NULL, '082211820198', 'jl. kembangan baru no 47, rt004/03 ', 1, NULL),
(499, '11111@1111..com', '11111@1111..com', '$2y$10$4zv4O06z86YaAyAzLUkQjuZ4YLPU8llgrwMivY6sLkRCGsxEB0l7a', NULL, '11111@1111..com', '11111@1111..com', 1, NULL),
(502, 'coba', 'somesonvb@gmail.com', '$2y$10$246xPJPNJvZfK28N5irGrukvSj4K.S5gfO7Adk728OyonMi6uOB72', NULL, '085', 'nganu', 1, NULL),
(503, 'NoviiAgstine', 'Noviiagustiina@yahoo.com', '$2y$10$nmKNEy73NpScdkmLmdj2xeoRPzZezXyO9mjb2EoV1g2fSQunQ/EUW', NULL, '085962861446', 'Palangkaraya jln. Bandara utama 2', 1, NULL),
(504, 'Fahmi', 'khaerulf1123@gmail.com', '$2y$10$xX.bHXSw/3XgilkgP7pWAu2VjdbTn.LbIVyhr/uvEkw8SHcUCYyO.', NULL, '0895330801038', '', 1, NULL),
(505, 'Ita', 'ita.christine@yahoo.com', '$2y$10$yW43qO2e9B98pfHZeZ/TuuKsCWbVhlWuJ5V2QScLiasAYqp8nnyfG', NULL, '082111502390', 'H Residence', 1, NULL),
(506, 'sholeh', 'sholehhidayat1991@gmail.com', '$2y$10$hI0tQcRC8PXmKYjusyAUqOFGZPEXQxddIDBN//fNeDBGZxCSNEN1m', NULL, '082213103011', '', 1, NULL),
(507, 'Prayugo', 'quqhank@gmail.com', '$2y$10$ZBvUJ/DP7y5qtwdJ5WBCbOLp7orXeDw85NAUWiqRA7NQO5N2kX2Ru', NULL, '087814344254', 'jl. soeratno', 1, NULL),
(508, 'yulia yuningsih', 'leeyuningsih@gmail.com', '$2y$10$9hkYTaQK42a7rKyu79U0NexJd9rYo/QzkapKDMjq4IEfBK1bZukZa', NULL, '081313001345', 'jl. sindang palay katapang', 1, NULL),
(509, 'Okvi', 'okvinugroho3@gmail.com', '$2y$10$GKph4eXlk.lN0WdY/.l/nekdnekxd1vuIIORK96axyP2HF7KjOZLW', NULL, '082276343745 ', 'Jalan aman\n', 1, NULL),
(510, 'Aji Januar Syahputra', 'aji.milan14@gmail.com', '$2y$10$x14OkxqxJ2t2vMSmr8rMbePJr2TiKvoDHjNucfJ/WkUO0dZqz1iGS', NULL, '085959803534', 'Perumahan Duta Harapan, Jalan Duta Prima 5, Blok E9 No.11A, Bekasi Utara', 1, NULL),
(512, 'Keylacasey', 'ceasyptk@gmail.com', '$2y$10$v/0NNv7P8Z661X0Chpq1GuodQYenwEnMlAH1X2uaqhH4.Pe0C6j4S', NULL, '085821013883', 'Pontianak ', 1, NULL),
(513, 'Rizal Fanani Abdilah', 'affan10573@gmail.com', '$2y$10$HFY2TBVDnd8C8Jwiu7WqB.PCA1VhxaCSEaq9SzqnP715gj.VTCFNC', NULL, '085732510678', 'Jl. Seari gg Kayu Manis 1 no.93, Kelapa Dua, Kebon Jeruk, Jakarta Barat', 1, NULL),
(515, 'Yuliyanto', 'yuli29yanto@gmail.com', '$2y$10$xhSE1/ZKHK8/QupHN1xUsO1Jmt8V1fI489POoBUz/SA7cDtSY/v8e', NULL, '083865576987', 'Sukoharjo\n\n', 1, NULL),
(516, 'agus', 'kancil.fake@gmail.com', '$2y$10$HBK.9jqw/59x4qd9U.PSieGjEYxabu7CHcKMwFwnSYegIqW/Y0uxi', NULL, '', 'bandung', 1, NULL),
(517, 'mbendol', 'mbendoljaya@gmail.com', '$2y$10$e2XjpUAjB1Zxp2cspnvNaeolOPLw35wCGoHMGJhwcpXGlJCBT4Zi6', NULL, '085725308319', 'janti Polanharjo', 1, NULL),
(518, 'rido', 'mridhod@gmail.com', '$2y$10$q8.UH2PmQLb5G9SYHpa.4e7pfwMeoJGbrDJmMQbcRa/Z9Qub7g9Ve', NULL, '085347731924', 'jl jelawat', 1, NULL);
INSERT INTO `user` (`id`, `nama`, `email`, `password`, `hash`, `telp`, `alamat`, `aktif`, `reset_password`) VALUES
(519, 'Rizky Dwi Atmaji', 'rizky.atmaji99@gmail.com', '$2y$10$uaaMeeQPoFzsUPCfJ6lKmeHrNvq6u5JD1y.w8or5Tf/xpSi7/bmPS', NULL, '081548688636', 'ranggan kulon Rt 01 Rw 02 Wirogunan, Kartasura, Sukoharjo', 1, NULL),
(520, 'Deri Resdiana', 'driexyz@gmaill.com', '91f12e8320d6013db94cb1a3644a808d', '049c49d7f15477d1990f46fd21e39329', '085691220706', NULL, 1, NULL),
(521, 'muhammad nur fajar', 'mail.mnfajar@gmail.con', 'a677c159dc28d2a5dcadde8bc138e381', NULL, '081226902346', NULL, 1, NULL),
(525, 'Dona', 'dona@gmail.com', '$2y$10$P8oISwl9nM1I9TW6tW9FfegGk3N4zC39L/hfU3g56Cnc7g8DNim4m', NULL, '0876363688', 'pucang kartasura Surakarta', 1, NULL),
(526, 'Alfan Rasyidi', 'pelgemgempel@gmail.com', '$2y$10$RU3woksfCs6k0rBi4GCppuXC8GkuASKUb4vNeX0L9tLGVZe.8md/W', NULL, '085868190333', 'Janti, Oolanharjo, Klaten', 1, NULL),
(527, 'dilan', 'dilan1990@gmail.com', '$2y$10$1uGXB.TVYfPxD9slfq7M2OvPwp3KUHhPsfWfnG4z1rRF0yvuqeNwC', NULL, '085691220707', 'Monjali', 1, NULL),
(528, 'farid maruf', 'faridmarufmuhammad@gmail.com', '$2y$10$2k.4Q/r0RIYC9PdNv0NhEuLo7cFFNMVtdfv1IcflxJqsZQ3mANXHq', NULL, '089673212556', 'mangunsuparnan, janti,  polanharjo klaten', 1, NULL),
(529, 'Muhammad Solichin', 'prazt11@gmail.com', '$2y$10$fojyqkX3CIr3YNHxhifbMOasSbAFeV3.nWj1yRoEXvqac.bwC9GuS', NULL, '082242916012', 'bantul', 1, NULL),
(533, 'fajar budi setiawan', 'fajar.budi.st@gmail.com', '$2y$10$e5MVdIEUVe0qkg02B/NBYuJpALxfX.odu5ZqNQApt7jit/RXSprum', NULL, '085642109909', 'delanggu', 1, NULL),
(534, 'roni', 'kiansantanx@gmail.com', '$2y$10$6Nbw7CP5BPnXXWg9Kx4l2eEhB2fDt7ibZbFUX/GZxwXpqbUPR8Kg.', NULL, '082227883388', 'sidorejo,lumbungkerep,wonosari,klaten', 1, NULL),
(535, 'endang susana', 'endangsusana48@gmail.com', '$2y$10$N274fB7IGPnsf0dJpxS7Qu/fO5K4PZoOvCV7nHVcdItme2sHcYhdS', NULL, '082257973271', 'fajar indah, jl melati 7,b417', 1, NULL),
(536, 'Harta', 'harta_priliano@yahoo.com', '$2y$10$7OBngEkmOVTSiy5PpCT9gOY3GiijIDy/wP7G6beHol3P9mlnh3vUq', NULL, '089615030605', 'Perum.Permata2 Fajar Indah Blok C2 No. 25 Fajar Indah, Jajar, Laweyan, Surakarta', 1, NULL),
(537, 'sofie', 'sowerrenjes@gmail.com', '$2y$10$/HexsrbJzl1SHkftdavpp.3nRPMerZkqqmEewxDst9rGu5rAMMlZm', NULL, '085640058006', 'Baturan, Colomadu, Karanganyar, Jawatengah', 1, NULL),
(538, 'andri', 'andri2450@gmail.com', '$2y$10$AF9aHyUsOKHc0ONKX4DCuOwWi3sU5TzeJsMh8ZNCT4zoT52yUhx4q', NULL, '085803315363', 'jogja\n\n', 1, NULL),
(540, 'megarani ', 'megarani944@gmail.com', '$2y$10$59TqQII7tLIhx/1J4HKXmO5H3bDzKagnAbuscDaNN8YVat0YyYUte', NULL, '081319232488', 'perumahan fajar indah solo ', 1, NULL),
(541, 'feni genthala', 'genthalaf@gmail.com', '$2y$10$PFQ7xoLd2hZXu9/0iuM.0eHwEDOb8l3HWjv/PTX10QMuhmPXduHAG', NULL, '081390701045', '', 1, NULL),
(542, 'Anik', 'huaweicunl72@gmail.com', '$2y$10$g7GQl6F6Uvb35tN66I8VgOVeh.NRxgU9ZutyAHKZV262cpD/q8GM2', NULL, '085829656984', 'Baturan, Colomadu,Karanganyar', 1, NULL),
(543, 'hera', 'hera@gmail com', '$2y$10$LTKICF2MEJn7tGeoPX5kQudK09YdzRhKIwIQ7YPg2CBoHhjxUOCzC', NULL, '085728654661', 'solo', 1, NULL),
(544, 'Aviana', 'avianasundays@gmail.com', '$2y$10$NmK1YXL39VaGag5xPxyuHO9L1UF1mHZEYA.UOj3zLJJ41VSBHmAna', NULL, '082134846307', 'Jalan Kademangan 2, No 25. Cemani, Grogol, Sukoharjo. 57552', 1, NULL),
(545, 'Andi', 'alistiarso@gmail.com', '$2y$10$S./GRz89jJq.d8tRXwzJ5uGxWQONAjWdH1mhr1ci.zyDG5BUoaEx2', NULL, '081391545080', 'Fajar Indah  Jl Melati 2 blok c3 no 22 baturan colomadu karanganyar', 1, NULL),
(546, 'Restu bayu pradana', 'restubayu1994@gmail.com', '$2y$10$sp./HYxiqmG.shrcFmK34.f1ldCFUpmCXpzgPJpLCFUo2mGqEf2g2', NULL, '085642224789', 'Tunggulsari RT 05 / RW 16, Pajang, Laweyan, Surakarta', 1, NULL),
(547, 'hera', 'herabsatria@gmail.com', '$2y$10$TkiPpHwzIAcBam0ebRadF.o/94XlsBqb7w37W5eCmhdBRkQQk8CV.', NULL, '085728654661', 'solo', 1, NULL),
(548, 'Gugus Prihanggono', 'goes_pri@yahoo.com', '$2y$10$uPJMyRbbTMtxGEkAwVxr5.Y7ZqQiq6ags8wrFqOwKRAWHtf54EOsS', NULL, '081364998070', 'Perum dosen UNS Griyan Baru I, No: 153, Baturan, Colomadu-Solo', 1, NULL),
(549, 'yacubalami', 'yacubassafa@gmail.com', '$2y$10$O5ZgewCTI2E54/WcAjOoF.2TCnRnENPMwJmhq787Y32ghG0nUFXwi', NULL, '08163625607', 'dukuh rt 2 rw 5 wunut tulung klaten 57482\n', 1, NULL),
(550, 'Manda', 'mandamanda553@gmail.com', '$2y$10$QlPwwTlMPDRvsrsm4J1NtekCOIqjZUROlMFCXLNO037xUmSjClZzG', NULL, '082225237717', 'Bonangan no 23', 1, NULL),
(551, 'Danang', 'lemperr44@gmail.com', '$2y$10$x1jIR8KVX7rkZ3plUXdAV.lfxDgQoAOPMpChVoIx2Vbo6g2TKuwMq', NULL, '082221567444', 'Colomadu', 1, NULL),
(552, 'vathoro', 'vathoro13@gmail.com', '$2y$10$IWlHhcFGdXhoULxAFddnCuQOBWepn5chgf4wsg3LIRkZT5I0u4zau', NULL, '081398810244', 'jalan keahlian rt05/05 no 24 jaticempaka', 1, NULL),
(553, 'Rosi Lawazhim', 'r.lawazhim@yahoo.com', '$2y$10$6joww5uQiaj6szSQKoV2qOzvta0N2WubnHUl6LCRk.WZkOscWnOpq', NULL, '081285764954', 'Jalan Ambengan Batu 2 No.32 Surabaya', 1, NULL),
(554, 'marisa', 'marisajepang@gmail.com', '$2y$10$..rix7MerYE57SKinsUPZepWNk8swmnfJX0LSKShGdj/6N1UVGXLi', NULL, '081322905808', 'pineapple mansion jl nanas V no 6 jajar solo', 1, NULL),
(555, 'Dea', 'deafadillaanindita75@gmail.com', '$2y$10$n9dVnpAyjIICfcgUm7RKH.FIomMKm9F6zGU5DmEcJhKCBz4XuMdxu', NULL, '081370156188', 'Perumahan fajar indah permata 1 af 15\n', 1, NULL),
(556, 'FIRA NINDITA SARI', 'firaninditasari@gmail.com', '$2y$10$0qBYDoQdnugfUncRJqcCEOGKh3rAh1qrfOsqOEJ9qtxqiIayygNBO', NULL, '082225416660', 'Bolo lor 04/02 Taji Juwiring Klaten', 1, NULL),
(557, 'Enggar', 'enggar.koe@gmail.com', '$2y$10$c4gHAscDQi5HFd.yLIxJiOhsKPC7PYCYT7zg7N2GPfpg8vY2.6e3q', NULL, '081329176619', 'jl.ketupat no 7 griyan baturan', 1, NULL),
(558, 'Rahmad Aziz', 'rahmadaziz1998@gmail.com', '$2y$10$okTLG4v1Wd2CF2I3yN1vlePuG/zWXfu.vvuj9OtEwwn8y8VfVHj7.', NULL, '0816909174', 'Jl.Pandawa, Pucangan, Kartasura, Sukoharjo, 57169', 1, NULL),
(559, 'Bonni', 'sonjanibonni@gmail.com', '$2y$10$IrT9c.bAqVGj0Vc3ZMAUgeMMygF9CDiM3FAlc03gO/CUl/fmaA2gi', NULL, '081912344788', 'BPJS Ketenagakerjaan Cabang Surakarta Jl. Bhayangkata No 42', 1, NULL),
(560, 'Jessica', 'j.sitandi@yahoo.com', '$2y$10$HmM.CjXskxZULhtGk4KreuGjEiEN0kPdGIZ3R/K7rEBXueU6gIM6q', NULL, '082248863283', 'jl. lestari segar raya blok D4C no. 12', 1, NULL),
(561, 'dedytrinofiantoro', 'dedytrinofiantoro@gmail.com', '$2y$10$yrC8UsAANBYpifftpa1nne5fJtkXjEIWW8OBqkwRmNqvufLTlqxUa', NULL, '087838511011', 'nglengkeh pendoworejo girimulyo kulon progo', 1, NULL),
(562, 'azalia', 'arachmahani@ymail.com', '$2y$10$qX9v3cqzTk1P47ieE1.qz.Txe/0r0HjHCUju.SSPjy8Cf.5eGyzmS', NULL, '081216218586', 'gonilan', 1, NULL),
(563, 'Eka ', 'ekashopriyatun29@gmail.com', '$2y$10$li2Ws3Fy4QfyHER42PF5Le5blz/n.5qi2YkjM28eQkPc/N20Bq7gK', NULL, '081542291842', 'mendungan', 1, NULL),
(564, 'kelik mitsubishi', 'kelikjatmiko01@gmail.com', '$2y$10$B.0ZKZAityTkQ89Tj0I8qOqXUzIeRXnlyOhSgO0z/oWcrWByYkFS.', NULL, '081222228005', 'ampel boyolali\n\n', 1, NULL),
(565, 'erwan', 'ewankasmianto8@gmail.com', '$2y$10$o1qq.b5hNQbfKvLSVUMBCOFIXtMnZu32CgONojMwTv9O9Z33WlXoy', NULL, '082247410017', 'laundry', 1, NULL),
(568, 'hendra', 'hendra.akbar86@gmail.com', '$2y$10$tCIwy3YHxhb3mVeK.2fC0OEQZzUlhWsuVFOnc3l2fe7AM05eyS1Sq', NULL, '089637154760', 'jalan tebet barat 10a no 5', 1, NULL),
(569, 'bambang', 'b_murdiono@yahoo.co.id', '$2y$10$oCWQqLLWbK5132hgxklzr.2UBe6VbsZPEPhpLzBEbn3x5L1mfCqFi', NULL, '085292906767', 'samarinda', 1, NULL),
(570, 'dian', 'dian.megadini@yahoo.com', '$2y$10$gQJY0WOT8VXL0G8nuQjiN.xL9au/EhCoduSbZALYS0Ta6TcOGBad.', NULL, '081332034373', 'jl hang lekir III no 9 kebayoran baru jaksel', 1, NULL),
(571, 'wahyu dwi', 'dwikast@gmail.com', '$2y$10$SEkTe0QwC2.JWp.bu8AeOeS.kjtNOrI6tx/332VRkw7myBUze/U5i', NULL, '083866833737', 'fain', 1, NULL),
(572, 'Nirmala', 'nataliedoct27@gmail.com', '$2y$10$QUA1MraLk289tj5VUSVql.nGakm0zLtJ77cn3LYrOdNik4drAKv4K', NULL, '082225425037', '', 1, NULL),
(573, 'maya masyitah', 'mmasyitah@yahoo.com', '$2y$10$UkxofHmZM31Ak4kXUOBu2.Yy3WlEtC9LcYazUwCy1AzVLucZQjvrq', NULL, '081348077677', 'jl. jend.a.yani rt. 25 no 64 karang jati', 1, NULL),
(574, 'annas munib tantowi', 'annasmunib03gmail.com', '$2y$10$eyJKu4d9lLHX3B9sXBaOYuTUKdkZI5JiS3OE462v0sIPmbA4SFRJG', NULL, '082233229766', 'kendal', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `kurir_id` (`kurir_id`);

--
-- Indexes for table `paket_hemat`
--
ALTER TABLE `paket_hemat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjemputan`
--
ALTER TABLE `penjemputan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `premium`
--
ALTER TABLE `premium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `premium_solo`
--
ALTER TABLE `premium_solo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;

--
-- AUTO_INCREMENT for table `paket_hemat`
--
ALTER TABLE `paket_hemat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penjemputan`
--
ALTER TABLE `penjemputan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `premium`
--
ALTER TABLE `premium`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `premium_solo`
--
ALTER TABLE `premium_solo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`kurir_id`) REFERENCES `kurir` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
