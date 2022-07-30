-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 30, 2022 at 09:43 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mknn`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `status` varchar(1) NOT NULL COMMENT '1=sudah dilihan, 0=belum di lihat',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(11) DEFAULT NULL,
  `updated_by` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `id_user`, `subject`, `pesan`, `status`, `created`, `updated`, `created_by`, `updated_by`) VALUES
(1, 4, 'Tanya soal mobil', 'Permisi boleh dong spil saldonya', '1', '2021-11-10 22:08:49', '2021-11-29 00:09:50', '4', '7'),
(2, 7, 'hey hey hey', 'tes tes dicoba low satu dua', '1', '2021-11-16 06:36:18', '2021-11-22 21:12:16', '7', '7'),
(3, 13, 'Halo Admin', 'Asik asikk', '1', '2021-12-01 20:30:31', '2021-12-01 20:31:03', '13', '7'),
(4, 13, 'halo', 'halo admin', '1', '2021-12-01 20:41:31', '2021-12-20 08:02:06', '13', '7'),
(5, 13, 'Halo admin', 'tanya soal cancel', '1', '2021-12-01 20:41:50', '2021-12-01 21:29:23', '13', '7'),
(6, 13, 'Menyapa', 'Hai admin...', '0', '2021-12-23 19:24:17', NULL, '13', NULL),
(7, 13, 'Masalah pembayaran', 'pembayaran saya gagal berkali kali', '0', '2021-12-23 20:15:44', NULL, '13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_testing`
--

CREATE TABLE `data_testing` (
  `id_testing` int(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `tweet_kotor` text NOT NULL,
  `tweet_bersih` text NOT NULL,
  `polaritas_awal` varchar(25) NOT NULL,
  `polaritas_akhir_k3` varchar(25) NOT NULL,
  `polaritas_akhir_k5` varchar(25) NOT NULL,
  `polaritas_akhir_k7` varchar(25) NOT NULL,
  `polaritas_akhir_k9` varchar(25) NOT NULL,
  `polaritas_akhir_k11` varchar(25) NOT NULL,
  `polaritas_akhir_k13` varchar(25) NOT NULL,
  `polaritas_akhir_k15` varchar(25) NOT NULL,
  `polaritas_akhir_k17` varchar(25) NOT NULL,
  `polaritas_akhir_k19` varchar(25) NOT NULL,
  `polaritas_akhir_k21` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_testing`
--

INSERT INTO `data_testing` (`id_testing`, `username`, `tweet_kotor`, `tweet_bersih`, `polaritas_awal`, `polaritas_akhir_k3`, `polaritas_akhir_k5`, `polaritas_akhir_k7`, `polaritas_akhir_k9`, `polaritas_akhir_k11`, `polaritas_akhir_k13`, `polaritas_akhir_k15`, `polaritas_akhir_k17`, `polaritas_akhir_k19`, `polaritas_akhir_k21`) VALUES
(1, 'Megaleechers', 'Ableton Live 11.1 Ableton Live is an audio sequencer and digital audio workstation for Windows and Mac OS X. Ableton Live is designed to be an instrument for live performances as well as a tool for composing, recording,… #Windows #Software https://t.co/CAYzysevwM https://t.co/8fPmAZ7pjG', 'ableton live ableton live audio sequencer digital audio workstation mac o x ableton live designed instrument live performance well tool composing recording software', 'netral', '', '', '0', '', '', '', '', '', '', ''),
(2, 'L18______', 'Windows 11 much more secure then windows 10 #Windows #Windows11', 'much secure', 'positif', '', '', '0', '', '', '', '', '', '', ''),
(3, 'perspectvortex', 'Just got my first BSOD in like 2 decades', 'got first bsod like decade', 'netral', '', '', '0', '', '', '', '', '', '', ''),
(4, 'GenShakewell', '@forza_support Force Feedback in both FH4 and FH3 appears to no longer work on G920 after updating to Windows 11. Tried reinstalling ghub, repair and reset both games but still not working. Works fin FH5 and every other game.', 'force feedback fh fh appears longer work g updating tried reinstalling ghub repair reset game still working work fin fh every game', 'negatif', '', '', '0', '', '', '', '', '', '', ''),
(5, 'peterjmsimons', 'Microsoft to test new experimental #Windows11 features https://t.co/2KLfqNrLrY by #verge Still crappy OS.', 'test new experimental feature verge still crappy o', 'negatif', '', '', '0', '', '', '', '', '', '', ''),
(6, 'etguenni', 'Windows 11 may bricks MSSQL server instances; no longer executable https://t.co/j29GWcdexC #SQLServer #Windows11 Born\'s Tech and Windows World', 'may brick mssql server instance longer executable sqlserver born tech world', 'netral', '', '', '0', '', '', '', '', '', '', ''),
(7, 'TightOff', 'The only hiccup in all of this: Tried to sign and send back my offer letter at lunch. My fucking scanner at home won\'t work again. My assumption is that it\'s not Windows 11 friendly. My work computer won\'t connect to our printers, so I can\'t print/sign/scan, so that\'s cool too!', 'hiccup tried sign send back offer letter lunch fucking scanner home work assumption friendly work connect printer print sign scan cool', 'negatif', '', '', '0', '', '', '', '', '', '', ''),
(8, 'netman007', 'Being that I am a person who works in the IT field, Im slightly late to this party, but late than never', 'person work field slightly late party late never', 'negatif', '', '', '0', '', '', '', '', '', '', ''),
(9, 'MikeHalsey', 'If you have reason to want to upgrade your copy of Windows 11 from Home to Pro, perhaps to access special features for work or to use a local account, we\'ll take you through the steps involved https://t.co/S7Iva1CyQi #Windows11 #MVPBuzz https://t.co/g9zxn2P1th', 'reason want upgrade copy home pro perhaps access special feature work use local account take step involved mvpbuzz', 'negatif', '', '', '0', '', '', '', '', '', '', ''),
(10, 'Windows', '@JellyTotPixel We certainly do, Darren!', 'certainly darren', 'negatif', '', '', '0', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_training`
--

CREATE TABLE `data_training` (
  `id_training` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `tweet_kotor` text NOT NULL,
  `tweet_bersih` text NOT NULL,
  `polaritas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_training`
--

INSERT INTO `data_training` (`id_training`, `username`, `tweet_kotor`, `tweet_bersih`, `polaritas`) VALUES
(1, 'ashishmohta', 'If you don’t like the default desktop background, you can easily change it. Read more', 'like default desktop background easily change read', 'negatif'),
(2, 'chtsiuk', 'Ok, Ok.. Serious question what if your computers were down? It would be bad right? Read on for more https://t.co/bBRXG5BAMp #Windows #Windows10 #Windows11 #WindowsUpdates #ComputerSupport #ITSupport #Harrogate #Networking #ITServices #Tech https://t.co/PAiWwPj7y1', 'Ok, Ok.. Serious question what if your computers were down? It would be bad right? Read on for more https://t.co/bBRXG5BAMp #Windows #Windows10 #Windows11 #WindowsUpdates #ComputerSupport #ITSupport #Harrogate #Networking #ITServices #Tech https://t.co/PAiWwPj7y1', 'netral'),
(3, 'peterjmsimons', 'Google #Chrome vs. Microsoft #Edge: Which Is the Best #Windows11 Browser? https://t.co/1vzEyyNNzu by @MUO_official', 'v best', 'positif'),
(4, '_developr', 'Why windows 11 is cumbersome', 'cumbersome', 'negatif'),
(5, 'ramsez_codes', 'Installed Windows 11....everything is fine...except my vertical taskbar no longer exists!!! Found one on google, but don\'t want a random script. @microsoft fix this please! I need my vertical task bar! #windows11 #verticaltaskbarislife', 'Installed Windows 11....everything is fine...except my vertical taskbar no longer exists!!! Found one on google, but don\'t want a random script. @microsoft fix this please! I need my vertical task bar! #windows11 #verticaltaskbarislife', 'netral'),
(6, 'DavShanahan', 'onmsft: Playing Minecraft Java Edition? You’ll soon need a Microsoft account https://t.co/viojDUg6lA #Windows10 #Windows11 #Windows', 'onmsft playing minecraft java edition soon need account', 'positif'),
(7, 'OneilyGadget', 'Windows 11 to get stickers for wallpaper and more new features soon. #Microsoft #Windows11 https://t.co/JODZrPFvuL', 'get sticker wallpaper new feature soon', 'negatif'),
(8, 'FaelynWolff', 'I\'m not sure if this is because of #Windows11 or the recent #Radeon driver update, but what the hell is this: https://t.co/nQWllJfQVL', 'sure recent radeon driver update hell', 'netral'),
(9, 'ITCompany_Co', 'Did you know Wallpaper stickers are being added to the Windows 11 desktop? #microsoft #windows11 #stickers https://t.co/TsOfkTdSe4', 'know wallpaper sticker added desktop sticker', 'positif'),
(10, 'MicrosoftUAE', 'We designed #Windows11 to be the most secure Windows yet. Discover the built-in chip-to-cloud protection that supports a hybrid workplace: https://t.co/6u0UqNU1aW #HybridWork #MicrosoftSecurity https://t.co/kHv3aKH0sX', 'designed secure yet discover built chip cloud protection support hybrid workplace hybridwork microsoftsecurity', 'negatif');

-- --------------------------------------------------------

--
-- Table structure for table `fitur`
--

CREATE TABLE `fitur` (
  `id_fitur` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `hrg_supir` int(11) NOT NULL,
  `supir` int(1) NOT NULL,
  `ac` int(1) NOT NULL,
  `seat_belt` int(1) NOT NULL,
  `air` int(1) NOT NULL,
  `p3k` int(1) NOT NULL,
  `audio_input` int(1) NOT NULL,
  `mp3_player` int(1) NOT NULL,
  `bluetooth` int(1) NOT NULL,
  `vidio` int(1) NOT NULL,
  `central_lock` int(1) NOT NULL,
  `ban_serep` int(1) NOT NULL,
  `car_kit` int(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(11) DEFAULT NULL,
  `updated_by` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitur`
--

INSERT INTO `fitur` (`id_fitur`, `id_mobil`, `hrg_supir`, `supir`, `ac`, `seat_belt`, `air`, `p3k`, `audio_input`, `mp3_player`, `bluetooth`, `vidio`, `central_lock`, `ban_serep`, `car_kit`, `created`, `updated`, `created_by`, `updated_by`) VALUES
(1, 6, 300000, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, NULL, '2021-12-01 20:17:56', '0', '7'),
(2, 9, 300000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '0', '0'),
(3, 10, 300000, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, NULL, NULL, '0', '0'),
(4, 13, 300000, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, NULL, NULL, '0', '0'),
(5, 14, 300000, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, NULL, '2021-12-20 09:08:19', '0', '7'),
(6, 15, 300000, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '0', '0'),
(11, 18, 300000, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2021-11-29 00:25:51', NULL, '7', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `id_tipe` int(11) NOT NULL,
  `merek` varchar(120) NOT NULL,
  `no_plat` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `transmisi` varchar(20) DEFAULT NULL,
  `jmlh_kursi` varchar(20) DEFAULT NULL,
  `bagasi` varchar(20) DEFAULT NULL,
  `bbm` varchar(20) DEFAULT NULL,
  `tahun` int(11) NOT NULL,
  `km` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `detail` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(11) DEFAULT NULL,
  `updated_by` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `id_tipe`, `merek`, `no_plat`, `warna`, `transmisi`, `jmlh_kursi`, `bagasi`, `bbm`, `tahun`, `km`, `status`, `harga`, `denda`, `gambar`, `detail`, `created`, `updated`, `created_by`, `updated_by`) VALUES
(6, 10, 'Toyota Camry', 'B 1446 DAG', 'Hitam', 'Manual', '6 Dewasa', '3 Ransel', 'Pertalite', 2015, 21000, 1, 400000, 400000, 'toyota-camry.jpg', 'Harga mobil perhari merupakan harga penyewaan mobil dalam satu hari, sedangkan untuk denda mobil perhari merupakan harga denda perhari yang dibebankan kepada pihak penyewa mobil jika telat mengembalikan mobil sesuai tanggal jatuh tempo pengembalian mobil. Harga mobil akan dikalikan dengan total hari penyewaan mobil, begitu juga dengan denda mobil akan dikalikan dengan total hari telat pengembalian mobil. <br> Sedangakan untuk harga supir perhari merupakan harga yang dibayar untuk supir perharinya yang nantinya akan dikalikan sesuai berapa hari penyewaan supir. Untuk Mobil yang tidak memiiliki Fitur lepas kunci maka wajib menggunakan supir, sedangkan untuk mobil yang memiliki fitur lepas kunci maka bisa memilih menggunakan jasa supir atau tidak.', '2021-09-30 19:20:55', '2021-12-22 08:24:49', '0', '7'),
(9, 10, 'Honda City', 'B 1456 DAG', 'Hitam', 'Manual', '7 Dewasa', '3 Ransel', 'Pertamax', 2015, 11860, 1, 450000, 450000, 'honda-city.jpg', 'Harga mobil perhari merupakan harga penyewaan mobil dalam satu hari, sedangkan untuk denda mobil perhari merupakan harga denda perhari yang dibebankan kepada pihak penyewa mobil jika telat mengembalikan mobil sesuai tanggal jatuh tempo pengembalian mobil. Harga mobil akan dikalikan dengan total hari penyewaan mobil, begitu juga dengan denda mobil akan dikalikan dengan total hari telat pengembalian mobil. <br> Sedangakan untuk harga supir perhari merupakan harga yang dibayar untuk supir perharinya yang nantinya akan dikalikan sesuai berapa hari penyewaan supir. Untuk Mobil yang tidak memiiliki Fitur lepas kunci maka wajib menggunakan supir, sedangkan untuk mobil yang memiliki fitur lepas kunci maka bisa memilih menggunakan jasa supir atau tidak.', '2021-09-30 19:20:55', '2021-11-04 22:00:47', '0', 'Joko Santos'),
(10, 15, 'CRV', 'B 1234 csh', 'Silver', 'Matic', '7 Dewasa', '4 Ransel', 'Pertalite', 2019, 34000, 1, 400000, 400000, 'gallery_used-car-mobil123-honda-cr-v-2_4.jpg', 'Harga mobil perhari merupakan harga penyewaan mobil dalam satu hari, sedangkan untuk denda mobil perhari merupakan harga denda perhari yang dibebankan kepada pihak penyewa mobil jika telat mengembalikan mobil sesuai tanggal jatuh tempo pengembalian mobil. Harga mobil akan dikalikan dengan total hari penyewaan mobil, begitu juga dengan denda mobil akan dikalikan dengan total hari telat pengembalian mobil. <br> Sedangakan untuk harga supir perhari merupakan harga yang dibayar untuk supir perharinya yang nantinya akan dikalikan sesuai berapa hari penyewaan supir. Untuk Mobil yang tidak memiiliki Fitur lepas kunci maka wajib menggunakan supir, sedangkan untuk mobil yang memiliki fitur lepas kunci maka bisa memilih menggunakan jasa supir atau tidak.', '2021-09-30 19:20:55', '2021-12-20 08:04:51', '0', '7'),
(13, 15, 'Toyota Avanza', 'B 2245 DAM', 'Hitam', 'Manual', '7 Dewasa', '4 Ransel', 'Pertamax', 2015, 25640, 1, 350000, 350000, 'avanza-hitam.jpg', 'Harga mobil perhari merupakan harga penyewaan mobil dalam satu hari, sedangkan untuk denda mobil perhari merupakan harga denda perhari yang dibebankan kepada pihak penyewa mobil jika telat mengembalikan mobil sesuai tanggal jatuh tempo pengembalian mobil. Harga mobil akan dikalikan dengan total hari penyewaan mobil, begitu juga dengan denda mobil akan dikalikan dengan total hari telat pengembalian mobil. <br> Sedangakan untuk harga supir perhari merupakan harga yang dibayar untuk supir perharinya yang nantinya akan dikalikan sesuai berapa hari penyewaan supir. Untuk Mobil yang tidak memiiliki Fitur lepas kunci maka wajib menggunakan supir, sedangkan untuk mobil yang memiliki fitur lepas kunci maka bisa memilih menggunakan jasa supir atau tidak.', '2021-09-30 19:20:55', NULL, '0', '0'),
(14, 15, 'Toyota Avanza', 'B 1123 DUD', 'Putih', 'Matic', '7 Dewasa', '4 Ransel', 'Pertalite', 2016, 40020, 1, 350000, 350000, 'avanza-putih.jpg', 'Harga mobil perhari merupakan harga penyewaan mobil dalam satu hari, sedangkan untuk denda mobil perhari merupakan harga denda perhari yang dibebankan kepada pihak penyewa mobil jika telat mengembalikan mobil sesuai tanggal jatuh tempo pengembalian mobil. Harga mobil akan dikalikan dengan total hari penyewaan mobil, begitu juga dengan denda mobil akan dikalikan dengan total hari telat pengembalian mobil. <br> Sedangakan untuk harga supir perhari merupakan harga yang dibayar untuk supir perharinya yang nantinya akan dikalikan sesuai berapa hari penyewaan supir. Untuk Mobil yang tidak memiiliki Fitur lepas kunci maka wajib menggunakan supir, sedangkan untuk mobil yang memiliki fitur lepas kunci maka bisa memilih menggunakan jasa supir atau tidak.', '2021-09-30 19:20:55', '2021-12-20 09:08:19', '0', '7'),
(15, 18, 'Toyota Hiace', 'P 1234 UI', 'Silver', 'Manual', '10 Dewasa', '8 Koper', 'Solar', 2015, 19762, 1, 700000, 700000, 'car-300921-b3bd9ca18c.jpg', 'Harga mobil perhari merupakan harga penyewaan mobil dalam satu hari, sedangkan untuk denda mobil perhari merupakan harga denda perhari yang dibebankan kepada pihak penyewa mobil jika telat mengembalikan mobil sesuai tanggal jatuh tempo pengembalian mobil. Harga mobil akan dikalikan dengan total hari penyewaan mobil, begitu juga dengan denda mobil akan dikalikan dengan total hari telat pengembalian mobil. <br> Sedangakan untuk harga supir perhari merupakan harga yang dibayar untuk supir perharinya yang nantinya akan dikalikan sesuai berapa hari penyewaan supir. Untuk Mobil yang tidak memiiliki Fitur lepas kunci maka wajib menggunakan supir, sedangkan untuk mobil yang memiliki fitur lepas kunci maka bisa memilih menggunakan jasa supir atau tidak.', '2021-09-30 21:44:05', NULL, '0', '0'),
(18, 13, 'Balap Racing', 'B 9998 NMD', 'Merah', 'Manual', '2 Kursi', '2 Bagasi', 'Solar', 2021, 1200, 1, 300000, 300000, 'car-291121-74a695f2e7.jpg', 'Mobil balap asiq', '2021-11-29 00:25:51', NULL, '7', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `review` text NOT NULL,
  `star` int(2) NOT NULL,
  `status` varchar(1) NOT NULL COMMENT '1 = tampil, 0 = tidak tampil',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(11) DEFAULT NULL,
  `updated_by` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id_review`, `id_user`, `id_mobil`, `id_transaksi`, `review`, `star`, `status`, `created`, `updated`, `created_by`, `updated_by`) VALUES
(4, 4, 18, 34, 'mobilnya kenceng banget, supirnya asik', 5, '1', '2021-11-29 16:32:31', '2021-12-01 21:28:51', '4', '7'),
(5, 13, 6, 40, 'ksdjfksjdkj', 5, '1', '2021-12-07 10:11:56', '2021-12-09 10:40:04', '13', '7'),
(6, 13, 6, 42, 'mantab asiq', 5, '1', '2021-12-07 10:48:36', '2021-12-09 10:40:02', '13', '7'),
(7, 13, 9, 43, 'mantab joss', 5, '1', '2021-12-07 10:53:49', '2021-12-09 10:40:00', '13', '7'),
(11, 13, 10, 44, 'Supirnya ramah, mobilnya enak', 5, '0', '2021-12-23 20:34:17', NULL, '13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tipe`
--

CREATE TABLE `tipe` (
  `id_tipe` int(11) NOT NULL,
  `kode_tipe` varchar(120) NOT NULL,
  `nama_tipe` varchar(120) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(11) DEFAULT NULL,
  `updated_by` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe`
--

INSERT INTO `tipe` (`id_tipe`, `kode_tipe`, `nama_tipe`, `created`, `updated`, `created_by`, `updated_by`) VALUES
(10, 'CVT', 'Convertible', '2021-11-15 14:38:59', '2021-11-29 00:09:43', '7', '7'),
(11, 'PU', 'Pick Up', '2021-11-15 14:53:34', NULL, '7', NULL),
(12, 'SUV', 'Sport Utility Vehicle', '2021-11-15 14:54:07', NULL, '7', NULL),
(13, 'OR', 'Off Roader', '2021-11-15 14:54:24', NULL, '7', NULL),
(14, 'MPV', 'Multi Purposes Vehicle', '2021-11-15 14:55:09', NULL, '7', NULL),
(15, 'MB', 'Mini Bus / Van', '2021-11-15 14:56:05', NULL, '7', NULL),
(16, 'DC', 'Double Cabin', '2021-11-15 15:01:08', NULL, '7', NULL),
(18, 'ELF', 'Elef', '2021-11-15 16:39:44', NULL, '7', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_rental` varchar(11) NOT NULL,
  `waktu_penjemputan` varchar(11) NOT NULL,
  `tgl_kembali` varchar(11) NOT NULL,
  `alamat_penjemputan` text NOT NULL,
  `total_harga` int(11) NOT NULL,
  `pajak` int(11) NOT NULL COMMENT 'total harga * 0.02',
  `total_harga_supir` int(11) NOT NULL,
  `total_denda` int(11) NOT NULL,
  `total_akhir` int(11) NOT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `status_pengembalian` varchar(50) DEFAULT NULL,
  `status_rental` varchar(50) NOT NULL COMMENT 'Belum Selesai, Selesai, Gagal, Batal',
  `bukti_pembayaran` varchar(120) DEFAULT NULL,
  `status_pembayaran` int(11) NOT NULL,
  `confirm_by` varchar(50) DEFAULT NULL COMMENT 'orang yang mengkonfirmasi pembayaran',
  `tgl_cancel` varchar(11) DEFAULT NULL,
  `status_refund` varchar(120) NOT NULL COMMENT 'Selesai dan Belum Selesai',
  `bukti_refund` varchar(255) DEFAULT NULL,
  `total_refund` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(11) DEFAULT NULL,
  `updated_by` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_mobil`, `tgl_rental`, `waktu_penjemputan`, `tgl_kembali`, `alamat_penjemputan`, `total_harga`, `pajak`, `total_harga_supir`, `total_denda`, `total_akhir`, `tgl_pengembalian`, `status_pengembalian`, `status_rental`, `bukti_pembayaran`, `status_pembayaran`, `confirm_by`, `tgl_cancel`, `status_refund`, `bukti_refund`, `total_refund`, `created`, `updated`, `created_by`, `updated_by`) VALUES
(33, 4, 9, '2021/12/1', '7:00am', '2021/12/3', 'Kencono, Sragi, Songgon, Banyuwangi', 1350000, 27000, 0, 0, 1377000, NULL, 'Kembali', 'Gagal', NULL, 0, NULL, NULL, 'Belum Selesai', NULL, 0, '2021-11-29 11:43:56', '2021-12-01 20:10:27', '4', '4'),
(34, 4, 18, '2021/12/2', '1:00am', '2021/12/3', 'Kencono, Sragi, Songgon, Banyuwangi', 600000, 12000, 600000, 0, 1212000, '2021-12-03', 'Kembali', 'Selesai', 'Struk-291121-e3d305a825.jpg', 1, 'M. Irvan Alfi Hidayat', NULL, 'Belum Selesai', NULL, 0, '2021-11-30 11:49:56', NULL, '4', NULL),
(39, 13, 6, '2021/12/9', '1:00am', '2021/12/13', 'Jl. Tirto Utomo Gg.8 No.2 , Kec. Dau, Malang, Jawa Timur,', 2000000, 40000, 1500000, 0, 0, NULL, 'Belum Kembali', 'Batal', 'Struk-291121-e3d305a825.jpg', 1, 'Arif', '2021/12/05', 'Selesai', 'Refund-201221-c2f2541a56.png', 3540000, '2021-12-05 21:24:17', '2021-12-20 08:03:58', '13', '7'),
(40, 13, 6, '2021/12/03', '1:00am', '2021/12/06', 'Jl. Tirto Utomo Gg.8 No.2 , Kec. Dau, Malang, Jawa Timur,', 1200000, 24000, 900000, 400000, 2524000, '2021-12-07', 'Kembali', 'Selesai', 'Struk-291121-e3d305a825.jpg', 1, 'Arif', NULL, 'Belum Selesai', NULL, 0, '2021-12-05 22:56:01', '2021-12-07 10:00:42', '13', '11'),
(42, 13, 6, '2021/12/14', '1:00am', '2021/12/16', 'Jl. Tirto Utomo Gg.8 No.2 , Kec. Dau, Malang, Jawa Timur,', 1200000, 24000, 900000, 0, 2124000, '2021-12-07', 'Kembali', 'Selesai', 'Struk-071221-1f4a2a592c.jpeg', 1, 'Arif', NULL, 'Belum Selesai', NULL, 0, '2021-12-07 10:36:41', '2021-12-07 10:38:17', '13', '7'),
(43, 13, 9, '2021/12/16', '1:30am', '2021/12/17', 'Jl. Tirto Utomo Gg.8 No.2 , Kec. Dau, Malang, Jawa Timur,', 900000, 18000, 600000, 0, 1518000, '2021-12-07', 'Kembali', 'Selesai', 'Struk-071221-02f1a8d797.jpeg', 1, 'Arif', NULL, 'Belum Selesai', NULL, 0, '2021-12-07 10:51:05', '2021-12-07 10:52:22', '13', '7'),
(44, 13, 10, '2021/12/16', '12:30am', '2021/12/18', 'Jl. Tirto Utomo Gg.8 No.2 , Kec. Dau, Malang, Jawa Timur,', 1200000, 24000, 900000, 800000, 2924000, '2021-12-20', 'Kembali', 'Selesai', 'Struk-071221-6f66124ced.jpeg', 1, 'Arif', NULL, 'Belum Selesai', NULL, 0, '2021-12-07 10:55:53', '2021-12-20 08:04:51', '13', '7'),
(46, 13, 6, '2021/12/22', '8:00am', '2021/12/23', 'Jl. Tirto Utomo Gg.8 No.2 , Kec. Dau, Malang, Jawa Timur,', 600000, 12000, 300000, 0, 912000, '2021-12-22', 'Kembali', 'Batal', 'Struk-201221-e91f752f34.jpg', 1, 'Arif', '2021/12/22', 'Selesai', 'Refund-221221-bffb897f74.png', 504000, '2021-12-20 08:12:17', '2021-12-22 08:25:37', '13', '7'),
(47, 13, 6, '2021/12/28', '1:30am', '2021/12/30', 'Jl. Tirto Utomo Gg.8 No.2 , Kec. Dau, Malang, Jawa Timur,', 1200000, 24000, 900000, 0, 2124000, NULL, 'Belum Diambil', 'Belum Selesai', NULL, 0, NULL, NULL, 'Belum Selesai', NULL, 0, '2021-12-23 19:23:25', NULL, '13', NULL),
(48, 13, 13, '2021/12/25', '7:00am', '2021/12/27', 'Joyoraharjo N0 259 b Lowokwaru Malang', 1050000, 21000, 900000, 0, 1971000, NULL, 'Belum Diambil', 'Belum Selesai', 'Struk-231221-ea0fd6a0d7.jpg', 1, 'M. Irvan Alfi Hidayat', NULL, 'Belum Selesai', NULL, 0, '2021-12-23 20:25:13', NULL, '13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `foto_ktp` varchar(255) NOT NULL,
  `role` int(11) NOT NULL COMMENT '1 = Admin, 2 = Customer',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(11) DEFAULT NULL,
  `updated_by` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `alamat`, `gender`, `no_telepon`, `no_ktp`, `password`, `avatar`, `foto_ktp`, `role`, `created`, `updated`, `created_by`, `updated_by`) VALUES
(4, 'Joko Santosi', 'jokos', 'oktaviano.andy.suryadi@gmail.com', 'Jl. Satu Pekanbaru', 'L', '6285707745485', '215654532767', 'e5bc62b374076985e23e4f588466ae9c', 'avatar-301121-4549314299.jpg', 'ktp-301121-82fbfaeccf.jpg', 2, '2021-09-30 19:23:12', '2021-12-01 21:23:38', '4', '4'),
(7, 'Arif', 'admin', 'arif@gmail.com', 'Pekanbaru', 'L', '6282244922833', '1764578345', '21232f297a57a5a743894a0e4a801fc3', 'default.jpg', 'ktp-221121-0f58150553.jpg', 1, '2021-09-30 19:23:12', '2021-11-29 00:06:56', '0', '7'),
(11, 'M. Irvan Alfi Hidayat', 'irvan', 'irvanhidayat0623@gmail.com', 'Kencono, Sragi, Songgon, Banyuwangi', 'L', '082244922833', '351019230698', '2467d3744600858cc9026d5ac6005305', 'avatar-291121-bf07d96d01.jpg', 'ktp-231121-a97489eabb.jpeg', 1, '2021-11-29 11:27:18', NULL, '11', NULL),
(13, 'Oktaviano Andy Suryadi', 'oktavianoandy', 'dani@gmail.com', 'Jl. Tirto Utomo Gg.8 No.2 , Kec. Dau, Malang, Jawa Timur,', 'L', '085766566560', '3508040210990002', 'e5bc62b374076985e23e4f588466ae9c', 'avatar-011221-3abe4082b7.jpg', 'ktp-011221-b90f66cc72.png', 2, '2021-12-01 20:30:02', NULL, 'oktavianoan', NULL),
(14, 'Dany Subeni', 'danis', 'danisubeni@gmail.com', 'Jl. Tirto Utomo Gg.8 No.2 , Kec. Dau, Malang, Jawa Timur,', 'L', '085766566560', '3508040210990009', 'e5bc62b374076985e23e4f588466ae9c', 'avatar-011221-61dee89961.jpg', 'ktp-011221-67c99ca313.png', 2, '2021-12-01 21:32:07', NULL, '7', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `data_testing`
--
ALTER TABLE `data_testing`
  ADD PRIMARY KEY (`id_testing`);

--
-- Indexes for table `data_training`
--
ALTER TABLE `data_training`
  ADD PRIMARY KEY (`id_training`);

--
-- Indexes for table `fitur`
--
ALTER TABLE `fitur`
  ADD PRIMARY KEY (`id_fitur`),
  ADD KEY `id_mobil` (`id_mobil`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`),
  ADD KEY `id_tipe` (`id_tipe`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_transaksi` (`id_mobil`),
  ADD KEY `id_transaksi_2` (`id_transaksi`);

--
-- Indexes for table `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`,`id_mobil`),
  ADD KEY `id_mobil` (`id_mobil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_testing`
--
ALTER TABLE `data_testing`
  MODIFY `id_testing` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_training`
--
ALTER TABLE `data_training`
  MODIFY `id_training` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fitur`
--
ALTER TABLE `fitur`
  MODIFY `id_fitur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tipe`
--
ALTER TABLE `tipe`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fitur`
--
ALTER TABLE `fitur`
  ADD CONSTRAINT `fitur_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mobil`
--
ALTER TABLE `mobil`
  ADD CONSTRAINT `mobil_ibfk_1` FOREIGN KEY (`id_tipe`) REFERENCES `tipe` (`id_tipe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_3` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
