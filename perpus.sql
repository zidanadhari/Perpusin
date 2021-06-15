-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 10:49 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(4, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(5) NOT NULL,
  `nim` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_anggota` varchar(45) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nim`, `username`, `nama_anggota`, `gender`, `no_telp`, `alamat`, `email`, `password`) VALUES
(14, 1301184182, 'zidan', 'Zidan Adhari', 'Laki-Laki', '0822193104201', 'Jln Kebahagiaan', 'zidanadhari@gmail.com', 'dda542322951ee590e8cb5dc932f676b'),
(15, 1301184113, 'winkie', 'Winkie Setyono', 'Laki-Laki', '082291931031', 'Jl Gunung Batu', 'winkiese5@gmail.com', '1f9c41d74959acdcd168c5858a22a2e4'),
(3, 1301180061, 'rahman', 'M Rahman Ali', 'Laki-Laki', '082219876654', 'jl. kebenaran', 'mrahman@gmail.com', 'e9b74cd3c4c1600ee591fd56360b89db'),
(18, 1301184239, 'hadyan', 'Hadyan', 'Laki-Laki', '082219675542', 'jl. benar', 'hadyan@gmail.com', '51c351cb927fec0f8ddc84f427978b6b'),
(19, 1301180452, 'alam', 'Alam Rizki', 'Laki-Laki', '082219738801', 'jl. cibiru', 'alam@gmail.com', '133f19cfffb569f6447ebf073084a417');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `pengarang` varchar(35) NOT NULL,
  `thn_terbit` date NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('Rak 1','Rak 2','Rak 3') NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl_input` date NOT NULL,
  `status_buku` enum('1','0') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `judul_buku`, `pengarang`, `thn_terbit`, `penerbit`, `isbn`, `jumlah_buku`, `lokasi`, `gambar`, `tgl_input`, `status_buku`) VALUES
(1, 3, 'Android Studio', 'Yudha Yudhanto', '2013-01-01', 'Wacana Ria', '34354422', 9, 'Rak 3', 'gambar1575963039.jpg', '2021-06-10', '1'),
(2, 3, 'Mahir Pemrograman Web Dengan PHP', 'Adri Kusuma Wardana', '2014-03-18', 'Elex Media', '65412345', 3, 'Rak 3', 'gambar1539746444.jpg', '2021-06-10', '1'),
(3, 2, 'Mahir  Berhitung dan Mahir Mewarnai', 'Akhmad Rahmat', '2014-03-03', 'CV.Indo Kreasi', '7623447342', 3, 'Rak 3', 'gambar1539746653.jpg', '2021-06-10', '1'),
(4, 1, 'Dasar Dasar Fisika', 'Kurnia Sandi', '2013-04-04', 'Wacana Ria', '233214414', 3, 'Rak 2', 'gambar1539746772.jpg', '2018-07-24', '1'),
(5, 8, 'Mahir Bahasa Inggris', 'Aliuddin', '2013-05-05', 'CV.Indo Kreasi', '3553234454', 6, 'Rak 1', 'gambar1539746902.jpg', '2018-10-17', '1'),
(6, 4, 'Public Speaking', 'Pambudi Prasetyo', '2015-06-06', 'Aldi Pustaka', '843594759', 8, 'Rak 2', 'gambar1539747050.jpg', '2019-01-24', '0'),
(7, 3, 'Trik SQL', 'Ahdim Makaren', '2014-07-07', 'Wacana Ria', '54234762', 5, 'Rak 1', 'gambar1539747068.jpg', '2018-03-14', '1'),
(8, 6, 'Kemurnian Agama', 'Pambudi Prasetyo', '2014-08-08', 'Aldi Pustaka', '980958607', 4, 'Rak 3', 'gambar1539747079.jpg', '2019-12-10', '0'),
(9, 1, 'Mikrokontroler', 'Ahdim Makaren', '2012-09-09', 'Wacana Ria', '12121314', 11, 'Rak 2', 'gambar1539747096.jpg', '2018-04-11', '1'),
(10, 1, '24 Jam Belajar FrameWork', 'Rudi Hartono', '2017-03-02', 'Unjung Pena', '12345345', 10, 'Rak 2', 'gambar1539747110.jpg', '2018-05-08', '1'),
(11, 2, 'JavaScript uncover', 'Andre Pratama', '2015-03-12', 'Duniailkom', '9087654', 6, 'Rak 1', 'gambar1539747128.jpg', '2018-07-24', '1'),
(12, 3, 'Pemrograman dan Hack Android untuk pemula dan adva', 'Edy Winarno ST, M.eng, Ali Zaki, Sm', '2016-09-23', 'Elex Media Komputindo', '4234252', 7, 'Rak 1', 'gambar1539747149.jpg', '2018-07-25', '1'),
(16, 3, 'VB .Net', 'Azka', '2018-10-01', 'Elex Media', '12345678', 8, 'Rak 1', 'gambar1539747329.png', '2018-10-17', '1');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `id_pinjam` varchar(5) NOT NULL,
  `id_buku` int(5) NOT NULL,
  `denda` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`id_pinjam`, `id_buku`, `denda`) VALUES
('PJ001', 1, 10000),
('PJ001', 1, 10000),
('PJ001', 1, 10000),
('PJ002', 1, 10000),
('PJ003', 1, 10000),
('PJ004', 1, 10000),
('PJ005', 1, 10000),
('PJ006', 1, 10000),
('PJ007', 1, 10000),
('PJ008', 1, 10000),
('PJ009', 1, 10000),
('PJ010', 1, 10000),
('PJ011', 1, 10000),
('PJ012', 1, 10000),
('PJ013', 1, 10000),
('PJ013', 2, 10000),
('PJ014', 2, 10000),
('PJ015', 3, 10000),
('PJ016', 1, 10000),
('PJ017', 1, 10000),
('PJ018', 2, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Sains'),
(2, 'Hobby'),
(3, 'Komputer'),
(4, 'Komunikasi'),
(5, 'Hukum'),
(6, 'Agama'),
(7, 'Populer'),
(8, 'Bahasa'),
(9, 'komik');

-- --------------------------------------------------------

--
-- Table structure for table `kepala`
--

CREATE TABLE `kepala` (
  `id_kepala` int(5) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nama_kepala` varchar(45) CHARACTER SET latin1 NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') CHARACTER SET latin1 NOT NULL,
  `no_telp` varchar(15) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(35) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kepala`
--

INSERT INTO `kepala` (`id_kepala`, `username`, `nama_kepala`, `gender`, `no_telp`, `alamat`, `email`, `password`) VALUES
(1, 'gunawan', 'Gunawan Setyadi M.K Ginting', 'Laki-Laki', '082188883535', 'Jl. Riung Bandung 23', 'gunawan123@gmail.com', 'dc96b97c4ffbead46ca25ef5d4b77cbe');

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `id_librarian` int(5) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nama_librarian` varchar(45) CHARACTER SET latin1 NOT NULL,
  `gender` enum('Laki laki','Perempuan') CHARACTER SET latin1 NOT NULL,
  `no_telp` varchar(15) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(35) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id_librarian`, `username`, `nama_librarian`, `gender`, `no_telp`, `alamat`, `email`, `password`) VALUES
(3, 'aseps', 'Asep Setiana', 'Laki laki', '082219675546', 'jl. salah', 'asepselalusetia@gmail.com', '813b4b6b01765dd1cbd97e722b76e164'),
(4, 'herdi', 'Herdi', 'Laki laki', '082219738808', 'jl. salah', 'herdi@gmail.com', '70ef423c063dfa178e58114b90052a9b');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` varchar(5) NOT NULL,
  `tanggal_input` datetime NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `totaldenda` double NOT NULL DEFAULT 0,
  `status_peminjaman` enum('Booking','Selesai','Belum Selesai') DEFAULT 'Belum Selesai',
  `status_pengembalian` enum('Kembali','Belum Kembali') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `tanggal_input`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `tgl_pengembalian`, `totaldenda`, `status_peminjaman`, `status_pengembalian`) VALUES
('PJ001', '2021-06-08 02:06:26', 14, '2021-06-09', '2021-06-15', '2021-06-17', 0, 'Selesai', 'Kembali'),
('PJ002', '2021-06-08 02:06:10', 14, '2021-06-09', '2021-06-15', '2021-06-18', 0, 'Selesai', 'Kembali'),
('PJ003', '2021-06-08 02:06:19', 14, '2021-06-09', '2021-06-15', '2021-06-25', 0, 'Selesai', 'Kembali'),
('PJ004', '2021-06-10 01:06:35', 14, '2021-06-10', '2021-06-16', '2021-06-24', 0, 'Selesai', 'Kembali'),
('PJ005', '2021-06-10 01:06:22', 14, '2021-06-10', '2021-06-16', '2021-06-30', 0, 'Selesai', 'Kembali'),
('PJ006', '2021-06-10 01:06:51', 15, '2021-06-10', '2021-06-16', '2021-06-26', 0, 'Selesai', 'Kembali'),
('PJ007', '2021-06-10 01:06:03', 19, '2021-06-10', '2021-06-16', '2021-06-30', 0, 'Selesai', 'Kembali'),
('PJ008', '2021-06-10 02:06:04', 14, '2021-06-10', '2021-06-16', '2021-06-11', 0, 'Selesai', 'Kembali'),
('PJ009', '2021-06-10 02:06:11', 14, '2021-06-10', '2021-06-16', '2021-06-26', 0, 'Selesai', 'Kembali'),
('PJ010', '2021-06-10 02:06:59', 19, '2021-06-10', '2021-06-16', '2021-06-29', 0, 'Selesai', 'Kembali'),
('PJ011', '2021-06-10 02:06:58', 14, '2021-06-10', '2021-06-16', '2021-06-16', 0, 'Selesai', 'Kembali'),
('PJ012', '2021-06-10 02:06:28', 15, '2021-06-10', '2021-06-16', '2021-06-18', 20000, 'Selesai', 'Kembali'),
('PJ013', '2021-06-10 02:06:44', 14, '2021-06-10', '2021-06-16', '2021-06-15', 10000, 'Selesai', 'Kembali'),
('PJ014', '2021-06-10 15:21:48', 14, '2021-06-10', '2021-06-17', '2021-06-18', 10000, 'Selesai', 'Kembali'),
('PJ015', '2021-06-10 15:24:25', 15, '2021-06-10', '2021-06-17', '2021-06-17', 0, 'Selesai', 'Kembali'),
('PJ016', '2021-06-10 15:25:32', 18, '2021-06-10', '2021-06-17', '2021-06-18', 10000, 'Selesai', 'Kembali'),
('PJ017', '2021-06-10 15:26:36', 14, '2021-06-10', '2021-06-17', '2021-06-30', 130000, 'Selesai', 'Kembali'),
('PJ018', '2021-06-10 15:27:25', 15, '2021-06-10', '2021-06-17', '2021-06-16', 10000, 'Selesai', 'Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_pinjam` varchar(5) NOT NULL,
  `tgl_pencatatan` datetime NOT NULL,
  `id_anggota` int(4) NOT NULL,
  `id_buku` int(4) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` double NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `total_denda` double NOT NULL,
  `status_pengembalian` varchar(15) NOT NULL,
  `status_peminjaman` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_pinjam`, `tgl_pencatatan`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`, `tgl_pengembalian`, `total_denda`, `status_pengembalian`, `status_peminjaman`) VALUES
('PJ014', '2021-06-10 15:21:48', 14, 2, '2021-06-10', '2021-06-17', 10000, '2021-06-17', 10000, '0', '0'),
('PJ015', '2021-06-10 15:24:25', 15, 3, '2021-06-10', '2021-06-17', 10000, '2021-06-17', 10000, '0', '0'),
('PJ018', '2021-06-10 15:27:25', 15, 2, '2021-06-10', '2021-06-17', 10000, '2021-06-17', 10000, '0', '0'),
('PJ019', '2021-06-10 00:00:00', 18, 4, '0000-00-00', '0000-00-00', 10000, '0000-00-00', 0, 'Belum Kembali', 'Belum Selesai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kepala`
--
ALTER TABLE `kepala`
  ADD PRIMARY KEY (`id_kepala`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`id_librarian`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD KEY `id_pinjam` (`id_pinjam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kepala`
--
ALTER TABLE `kepala`
  MODIFY `id_kepala` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `id_librarian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
