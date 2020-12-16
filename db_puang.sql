-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Nov 2019 pada 04.51
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_puang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjaman`
--

CREATE TABLE `pinjaman` (
  `kode` varchar(10) NOT NULL,
  `jumlah_pinjaman` int(10) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `komisi` int(10) NOT NULL,
  `total_pembayaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinjaman`
--

INSERT INTO `pinjaman` (`kode`, `jumlah_pinjaman`, `tanggal_pembayaran`, `komisi`, `total_pembayaran`) VALUES
('111', 100000, '2019-01-01', 1000, 101000),
('112', 110000, '2019-01-02', 1000, 111000),
('113', 500000, '2019-10-03', 5000, 505000),
('114', 1000000, '2019-10-09', 100000, 1100000),
('115', 300000, '2019-10-26', 3000, 303000),
('116', 1200000, '2019-08-09', 10000, 130000),
('117', 450000, '2019-05-16', 5000, 455000),
('118', 200000, '2019-08-10', 10000, 210000),
('119', 300000, '2019-06-11', 1000, 301000),
('120', 560000, '2019-07-10', 15000, 575000),
('121', 1000000, '2019-12-12', 10000, 1010000),
('122', 800000, '2020-02-19', 8000, 808000),
('123', 950000, '2019-10-24', 50000, 1000000),
('124', 3000000, '2020-01-02', 300000, 3300000),
('125', 1000000, '2019-12-27', 10000, 1010000),
('126', 500000, '2019-10-16', 5000, 505000),
('127', 700000, '2020-04-15', 7000, 707000),
('128', 200000, '2019-11-01', 2000, 202000),
('129', 600000, '2019-12-20', 6000, 606000),
('130', 900000, '2019-12-28', 9000, 909000),
('131', 450000, '2019-10-19', 5000, 455000),
('132', 350000, '2019-10-11', 3000, 353000),
('133', 650000, '2019-10-19', 6000, 656000),
('134', 750000, '2019-10-02', 5000, 755000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_cicilan`
--

CREATE TABLE `tb_cicilan` (
  `kode` varchar(10) NOT NULL,
  `nama_peminjam` varchar(20) NOT NULL,
  `jumlah_pinjaman` int(8) NOT NULL,
  `cicilan_ke` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_cicilan`
--

INSERT INTO `tb_cicilan` (`kode`, `nama_peminjam`, `jumlah_pinjaman`, `cicilan_ke`) VALUES
('111', 'DianRatnasari', 101000, 1),
('112', 'GitunLegimah', 111000, 6),
('113', 'Surotosuharjo', 505000, 17),
('114', 'SarimanPambudi', 1100000, 4),
('115', 'ErikaLutfianti', 303000, 2),
('116', 'Lika Sulistyowati', 130000, 3),
('117', 'SriYati', 455000, 5),
('118', 'SutiyonoParidi', 210000, 12),
('119', 'Novan Alamsyah', 301000, 1),
('120', 'VendikMuzakki', 575000, 6),
('121', 'FachrulArrozy', 1010000, 10),
('122', 'DebbyPutri', 808000, 14),
('123', 'ShintaMufaidah', 1000000, 20),
('124', 'NurCahyono', 3300000, 17),
('125', 'DaeriIsrofi', 1010000, 1),
('126', 'Sutisnapramuaji', 505000, 6),
('127', 'AjiPamungkas ', 707000, 1),
('128', 'Misenosamsuri', 202000, 17),
('129', 'MulYono', 606000, 20),
('130', 'LiaMaudah', 909000, 16),
('131', 'sutimah', 455000, 12),
('132', 'Ayunurkhasanah', 353000, 6),
('133', 'wagirinbejoati', 656000, 3),
('134', 'DiahayuMaharani', 755000, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jaminan`
--

CREATE TABLE `tb_jaminan` (
  `id` varchar(10) NOT NULL,
  `nama_peminjam` varchar(20) NOT NULL,
  `total_pinjaman` int(10) NOT NULL,
  `jaminan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jaminan`
--

INSERT INTO `tb_jaminan` (`id`, `nama_peminjam`, `total_pinjaman`, `jaminan`) VALUES
('111', 'DianRatnasari', 101000, 'bpkp motor'),
('112', 'GitunLegimah', 111000, 'sertifikat rumah'),
('113', 'Surotosuharjo', 505000, 'ajb tanah'),
('114', 'SarimanPambudi', 1100000, 'shm tanah'),
('115', 'ErikaLutfianti', 303000, 'stnk motor'),
('116', 'Lika Sulistyowati', 130000, 'ajb tanah'),
('117', 'SriYati', 455000, 'bpkp motor'),
('118', 'SutiyonoParidi', 210000, 'bpkb motor'),
('119', 'Novan Alamsyah', 301000, 'surat perhiasan'),
('120', 'VendikMuzakki', 575000, 'ktp'),
('121', 'FachrulArrozy', 1010000, 'skb central olahraga'),
('122', 'DebbyPutri', 808000, 'ajb tanah'),
('123', 'ShintaMufaidah', 1000000, 'skb gudang sampah'),
('124', 'NurCahyono', 3300000, 'ajb tanah'),
('125', 'DaeriIsrofi', 1010000, 'shm tanah'),
('126', 'Sutisnapramuaji', 505000, 'ktp'),
('127', 'AjiPamungkas ', 707000, 'bpkp motor'),
('128', 'Misenosamsuri', 202000, 'sertifikat rumah'),
('129', 'MulYono', 606000, 'ajb tanah'),
('130', 'LiaMaudah', 909000, 'sertifikat rumah'),
('131', 'sutimah', 455000, 'bpkp motor'),
('132', 'Ayunurkhasanah', 353000, 'ktp'),
('133', 'wagirinbejoati', 656000, 'bpkp motor'),
('134', 'DiahayuMaharani', 755000, 'shm tanah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nasabah`
--

CREATE TABLE `tb_nasabah` (
  `id` char(10) NOT NULL,
  `nama_depan` varchar(25) NOT NULL,
  `nama_belakang` varchar(25) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nasabah`
--

INSERT INTO `tb_nasabah` (`id`, `nama_depan`, `nama_belakang`, `alamat`, `kecamatan`, `pekerjaan`, `status`) VALUES
('111', 'Dian', 'Ratnasari', 'jln sakeera no 15 rt31 rw09 ', 'kromengan', 'ibu rumah tangga', 'kawin'),
('112', 'Gitun', 'Legimah', 'jln sakeera no 45 rt31 rw09 ', 'kromengan', 'petani', 'kawin'),
('113', 'Suroto', 'suharjo', 'jln TelukPrigi no3 rt30 rw09 ', 'ngadirejo', 'pedagang pakaian', 'kawin'),
('114', 'Sariman', 'Pambudi', 'jln TelukPrigi no9 rt30 rw09 ', 'krajan', 'Pengepul Sampah', 'Lajang'),
('115', 'Erika', 'Lutfianti', 'jln Gedangsri no16 rt 4  rw1', 'semanding', 'pegawai kantor', 'Lajang'),
('116', 'Lika ', 'Sulistyowati', 'jln pangandaran no2 rt4 rw4', 'sumberPucung', 'Guru Private', 'kawin'),
('117', 'Sri', 'Yati', 'jln semaburan no13 rt03 rw01 ', 'jatikerto', 'Guru', 'kawin'),
('118', 'Sutiyono', 'Paridi', 'jln Simbukan no 15 rt30 rw09', 'krajan', 'pengusaha pabrik kulit', 'kawin'),
('119', 'Novan ', 'Alamsyah', 'jln sakeera no60 rt31 rw09 ', 'kromengan', 'nelayan', 'Lajang'),
('120', 'Vendik', 'Muzakki', 'jln samaan no3 rt1 rw1 ', 'gedangan', 'nelayan', 'kawin'),
('121', 'Fachrul', 'Arrozy', 'jln Lesanpuro no23 rt3 rw1', 'sawojajar', 'pedagang sepatu', 'Lajang'),
('122', 'Debby', 'Putri', 'jln kendalsari no33 rt04 rw04', 'lowokwaru', 'buruh pabrik', 'Lajang'),
('123', 'Shinta', 'Mufaidah', 'jln danau limboto no34 rt33 rw12 ', 'sawojajar', 'Guru SD', 'kawin'),
('124', 'Nur', 'Cahyono', 'jln mawar no41 rt1 rw13 ', 'pakis', 'buruh pabrik', 'Lajang'),
('125', 'Daeri', 'Isrofi', 'jln panunutan no4 rt1 rt5 ', 'krajan', 'buruh tani', 'kawin'),
('126', 'Sutisna', 'pramuaji', 'jln tumpuklembu no3 rt1 rw33', 'purwosari', 'pengusaha kopi', 'kawin'),
('127', 'Aji', 'Pamungkas ', 'jln gedangmas rt33 rw31 ', 'semanding', 'peternak ayam ', 'Lajang'),
('128', 'Miseno', 'samsuri', 'jln pemangkuan no33 rt1 rw8 ', 'jatikerto', 'Guru SD', 'kawin'),
('129', 'Mul', 'Yono', 'jln Telukpamuji no 11 rt31 rw09 ', 'ngadirejo', 'petani', 'kawin'),
('130', 'Lia', 'Maudah', 'jln sakeera no 55 rt31 rw09 ', 'kromengan', 'penjual nasi', 'kawin'),
('131', 'suti', 'mah', 'jln TelukBayur no10 rt30 rw09 ', 'sumberPucung', 'petani', 'kawin'),
('132', 'Ayunur', 'khasanah', 'jln sakeera no 22 rt31 rw09 ', 'kromengan', 'mahasiswa', 'Lajang'),
('133', 'wagirin', 'bejoati', 'jln Telukpamuji no 34 rt31 rw09 ', 'ngadirejo', 'buruh pabrik', 'kawin'),
('134', 'Diahayu', 'Maharani', 'jln tumpuklembu no44 rt1 rw56 ', 'purwosari', 'mahasiswa', 'Lajang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `kode` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `hak_akses` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`kode`, `username`, `password`, `hak_akses`) VALUES
(101, 'admin', '123', 'admin'),
(102, 'Dian@gmail.com', '1', 'user'),
(103, 'Gitun@gmail.com', '1', 'user'),
(104, 'Suroto@gmail.com', '1', 'user'),
(105, 'Sariman@gmail.com', '1', 'user'),
(106, 'Erika@gmail.com', '1', 'user'),
(107, 'Lika@gmail.com', '1', 'user'),
(108, 'Sri@gmail.com', '1', 'user'),
(109, 'Sutiyono@gmail.com', '1', 'user'),
(110, 'Novan@gmail.com', '1', 'user'),
(111, 'vendik@gmail.com', '1', 'user'),
(112, 'fachrul@gmail.com', '1', 'user'),
(113, 'debby@gmail.com', '1', 'admin'),
(114, 'shinta@gmail.com', '1', 'user'),
(115, 'nur@gmail.com', '1', 'user'),
(116, 'daeri@gmail.com', '1', 'user'),
(117, 'sutisna@gmail.com', '1', 'user'),
(118, 'aji@gmail.com', '1', 'user'),
(119, 'miseno@gmail.com', '1', 'user'),
(120, 'mul@gmail.com', '1', 'user'),
(121, 'lia@gmail.com', '1', 'user'),
(122, 'suti@gmail.com', '1', 'user'),
(123, 'ayu@gmail.com', '1', 'user'),
(124, 'wagirin@gmail.com', '1', 'user'),
(125, 'diahayu@gmail.com', '1', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
