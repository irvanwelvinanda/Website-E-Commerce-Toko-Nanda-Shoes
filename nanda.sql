-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2017 at 05:00 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nanda`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`) VALUES
(1, 'Admin', 'selasarabu', 'Irvan Welvinanda');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `br_id` int(6) NOT NULL,
  `br_nm` varchar(50) NOT NULL,
  `br_item` int(4) NOT NULL,
  `br_hrg` int(10) NOT NULL,
  `br_stok` int(9) NOT NULL,
  `br_satuan` varchar(20) NOT NULL,
  `br_gbr` varchar(100) NOT NULL,
  `ket` varchar(250) NOT NULL,
  `br_sts` varchar(1) NOT NULL,
  `br_ukuran` int(3) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`br_id`, `br_nm`, `br_item`, `br_hrg`, `br_stok`, `br_satuan`, `br_gbr`, `ket`, `br_sts`, `br_ukuran`, `kategori`) VALUES
(1, 'Adidas Duramo 8', 1, 699000, 12, 'Pcs', 'admin/gambar/sepatu olahraga/adidasduramo699a.jpg', 'Sepatu yang didesain khusus untuk berolahraga dengan bahan dan desain yang sangat nyaman di kaki.Sepatu  ini juga dilengkapi dengan sirkulasi udara yang tetap berjalan pada kaki Anda sehingga membuat sepatu ini selalu nyaman dipakai', 'Y', 0, 'Sporty'),
(2, 'Dr.KevinStylistred', 1, 399000, 24, 'Pcs', 'admin/gambar/sepatu olahraga/dr.kevinstylistred399.jpg', 'Bahan Cotton Combed 24s built up', 'Y', 0, 'Sporty'),
(3, 'Nike Men Kaishi 2.0', 1, 699000, 30, 'Pcs', 'admin/gambar/sepatu olahraga/nikemenskaishi2.0699.jpg', 'Sepatu lari berkualitas terbaik yang aman dan nyaman untuk penggunanya. Didukung pula dengan bentuk yang dapat menyesuaikan dengan segala gerakan kaki Anda, memastikan Anda terhindar dari cidera saat berlari.', 'Y', 0, 'Sporty'),
(4, 'Puma Prope Running', 1, 499000, 20, 'Pcs', 'admin/gambar/sepatu olahraga/PumaPropelMensRunning499.jpg', 'Rasakan kenyamanan yang luar biasa dengan menggunakan sepatu ini saat berlari dan olahraga lainnya. Terbuat dari bahan-bahan yang telah dipilih secara khusus dan diuji kekuatannya agar sepatu ini menjadi tahan lama dan kuat. ', 'Y', 0, 'Sporty'),
(5, 'Puma Descendant v4', 1, 399000, 30, 'Pcs', 'admin/gambar/sepatu olahraga/PumaDescendantv4399.jpg', 'Rasakan kenyamanan yang luar biasa dengan menggunakan sepatu ini saat berlari dan olahraga lainnya. Terbuat dari bahan-bahan yang telah dipilih secara khusus dan diuji kekuatannya agar sepatu ini menjadi tahan lama dan kuat. ', 'Y', 0, 'Sporty'),
(10, 'Loafers', 1, 199000, 30, 'pcs', 'admin/gambar/sepatu casual/1.jpg', 'sepatu kasual yang sangat cocok dengan anda.', 'y', 0, 'Casual'),
(20, 'Sepatu Casual Pria', 1, 299000, 30, 'pcs', 'admin/gambar/sepatu casual/2.jpg', 'nyaman digunakan ketika ingin kondangan', 'y', 0, 'Casual');

-- --------------------------------------------------------

--
-- Table structure for table `no_pem`
--

CREATE TABLE `no_pem` (
  `nopem` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `no_pem`
--

INSERT INTO `no_pem` (`nopem`) VALUES
('79');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_idpemesanan` int(25) NOT NULL,
  `order_dataname` varchar(50) NOT NULL,
  `order_namapemesan` varchar(50) NOT NULL,
  `barang` varchar(100) NOT NULL,
  `total` int(10) NOT NULL,
  `order_email` varchar(50) NOT NULL,
  `order_almt` text NOT NULL,
  `order_kp` varchar(10) NOT NULL,
  `order_kota` varchar(25) NOT NULL,
  `order_tlp` varchar(14) NOT NULL,
  `ukuran` int(2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `metode` varchar(25) NOT NULL,
  `bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_idpemesanan`, `order_dataname`, `order_namapemesan`, `barang`, `total`, `order_email`, `order_almt`, `order_kp`, `order_kota`, `order_tlp`, `ukuran`, `status`, `waktu`, `metode`, `bukti`) VALUES
(0, 0, 'annisa', 'Annisa Fitria Arum Hermanti', '', 499000, 'annisa@gmail.com', 'paspamres depok kelapa dua', '13720', 'Kota Depok', '081280640476', 38, 'Menunggu Pembayaran', '2017-08-03 07:15:43', 'Bayar di Toko', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_usr` int(11) NOT NULL,
  `nm_usr` varchar(50) NOT NULL,
  `log_usr` varchar(20) NOT NULL,
  `pas_usr` varchar(100) NOT NULL,
  `email_usr` varchar(50) NOT NULL,
  `almt_usr` text NOT NULL,
  `kp_usr` varchar(6) NOT NULL,
  `kota_usr` varchar(25) NOT NULL,
  `tlp` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_usr`, `nm_usr`, `log_usr`, `pas_usr`, `email_usr`, `almt_usr`, `kp_usr`, `kota_usr`, `tlp`) VALUES
(28, 'Hakko Bio Richard', 'acchoblues', 'hakko', 'accho_blues@yahoo.co.id', 'Kp. Wangkal Rt.03 Rw.07 Desa kalijaya Kec. Cikarang barat', '17520', 'Kab. Bekasi', '085694984803'),
(27, 'Hakko Bio Richard', 'acchoblues', 'hakko270990', 'accho_blues@yahoo.co.id', 'Kp. Wangkal Rt.03 Rw.07 Desa kalijaya Kec. Cikarang barat', '17520', 'Kab. Bekasi', '085694984803'),
(29, 'Hakko Bio Richard', 'hakko bio richard', 'romance18', 'accho_blues@yahoo.co.id', 'Kp. Wangkal Rt.03 Rw.07 Desa kalijaya Kec. Cikarang barat', '17520', 'Kab. Bekasi', '085694984803'),
(33, 'Annisa Fitria Arum Hermanti', 'annisa', 'annisa', 'annisa@gmail.com', 'paspamres depok kelapa dua', '13720', 'Kota Depok', '081280640476'),
(38, 'irvanee', 'irvanww', 'irvanw', 'rbah@gmail.com', 'jakarta', '13720', 'jakarta', '081280640476');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`br_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_usr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `br_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
