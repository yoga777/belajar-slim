-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Nov 2022 pada 10.15
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mas_yoga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agents`
--

CREATE TABLE `agents` (
  `AGENT_CODE` char(6) NOT NULL,
  `AGENT_NAME` char(40) DEFAULT NULL,
  `WORKING_AREA` char(35) DEFAULT NULL,
  `COMMISSION` float DEFAULT NULL,
  `PHONE_NO` char(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agents`
--

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', 'India'),
('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', 'India'),
('A003', 'Alex', 'London', 0.13, '075-12458969', 'UK'),
('A004', 'Ivan', 'Torento', 0.15, '008-22544166', 'Canada'),
('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', 'Australia'),
('A006', 'McDen', 'London', 0.15, '078-22255588', 'UK'),
('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', 'India'),
('A008', 'Alford', 'New York', 0.12, '044-25874365', 'USA'),
('A009', 'Benjamin', 'Hampshair', 0.11, '008-22536178', 'UK'),
('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', 'India'),
('A011', 'Ravi Kumar', 'Bangalore', 0.15, '077-45625874', 'India'),
('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', 'USA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` char(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` int(11) DEFAULT NULL,
  `OPENING_AMT` int(12) NOT NULL,
  `RECEIVE_AMT` int(12) NOT NULL,
  `PAYMENT_AMT` int(12) NOT NULL,
  `OUTSTANDING_AMT` int(12) NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00001', 'Micheal', 'New York', 'New York', 'USA', 2, 3000, 5000, 2000, 6000, 'CCCCCCC', 'A008'),
('C00002', 'Bolt', 'New York', 'New York', 'USA', 3, 5000, 7000, 9000, 3000, 'DDNRDRH', 'A008'),
('C00003', 'Martin', 'Torento', 'Torento', 'Canada', 2, 8000, 7000, 7000, 8000, 'MJYURFD', 'A004'),
('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', 1, 5000, 8000, 7000, 6000, 'AAAAAAA', 'A005'),
('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', 1, 7000, 11000, 7000, 11000, '147-25896312', 'A002'),
('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', 1, 10000, 7000, 6000, 11000, 'DDDDDDD', 'A004'),
('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', 1, 7000, 11000, 9000, 9000, 'GHRDWSD', 'A010'),
('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', 1, 7000, 7000, 9000, 5000, 'HJKORED', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', 3, 8000, 7000, 3000, 12000, 'Phone No', 'A002'),
('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', 3, 6000, 4000, 5000, 5000, 'MMMMMMM', 'A009'),
('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', 3, 7000, 11000, 7000, 11000, 'PPHGRTS', 'A010'),
('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', 1, 5000, 7000, 9000, 3000, 'KRFYGJK', 'A012'),
('C00013', 'Holmes', 'London', 'London', 'UK', 2, 6000, 5000, 7000, 4000, 'BBBBBBB', 'A003'),
('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', 2, 8000, 11000, 7000, 12000, 'AAAATGF', 'A001'),
('C00015', 'Stuart', 'London', 'London', 'UK', 1, 6000, 8000, 3000, 11000, 'GFSGERS', 'A003'),
('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', 2, 8000, 11000, 7000, 12000, 'JRTVFDD', 'A007'),
('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', 2, 8000, 4000, 3000, 9000, 'AAAAAAB', 'A007'),
('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', 2, 7000, 7000, 9000, 5000, 'NHBGVFC', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', 1, 8000, 7000, 7000, 8000, 'ZZZZBFV', 'A010'),
('C00020', 'Albert', 'New York', 'New York', 'USA', 3, 5000, 7000, 6000, 6000, 'BBBBSBB', 'A008'),
('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', 1, 7000, 7000, 7000, 7000, 'WERTGDF', 'A005'),
('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', 2, 7000, 11000, 9000, 9000, '113-12345678', 'A002'),
('C00023', 'Karl', 'London', 'London', 'UK', 0, 4000, 6000, 7000, 3000, 'AAAABAA', 'A006'),
('C00024', 'Cook', 'London', 'London', 'UK', 2, 4000, 9000, 7000, 6000, 'FSDDSDF', 'A006'),
('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', 2, 5000, 7000, 4000, 8000, 'AVAVAVA', 'A011');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'YUGA ADI K', 'Admin', '081217351613', 'yogaadik9@gamil.com', '—Pngtree—coronavirus bacteria cartoon character_5336906.png', '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(10) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `total`, `tanggal_input`) VALUES
('1', '15000', '2021-01-02 11:10:49'),
('10', '45000', '2021-02-25 11:10:49'),
('11', '45000', '2021-02-28 11:10:49'),
('12', '75000', '2021-03-02 11:10:49'),
('13', '15000', '2021-03-04 11:10:49'),
('14', '15000', '2021-03-11 11:10:49'),
('15', '105000', '2021-03-25 11:10:49'),
('16', '30000', '2021-04-04 11:10:49'),
('17', '30000', '2021-04-07 11:10:49'),
('18', '90000', '2021-04-10 11:10:49'),
('19', '30000', '2021-04-15 11:10:49'),
('2', '30000', '2021-01-04 11:10:49'),
('20', '30000', '2021-04-26 11:10:49'),
('21', '210000', '2021-05-02 11:10:49'),
('22', '225000', '2021-06-15 11:10:49'),
('23', '165000', '2021-07-05 11:10:49'),
('24', '60000', '2021-07-25 11:10:49'),
('25', '135000', '2021-08-11 11:10:49'),
('26', '105000', '2021-08-15 11:10:49'),
('27', '75000', '2021-09-08 11:10:49'),
('28', '165000', '2021-09-16 11:10:49'),
('29', '165000', '2021-10-05 11:10:49'),
('3', '75000', '2021-01-04 11:10:49'),
('30', '165000', '2021-10-19 11:10:49'),
('31', '150000', '2021-11-15 11:10:49'),
('32', '60000', '2021-11-19 11:10:49'),
('33', '90000', '2021-01-02 11:10:49'),
('34', '45000', '2021-03-24 11:10:49'),
('35', '15000', '2021-04-27 11:10:49'),
('36', '15000', '2021-06-24 02:10:49'),
('37', '45000', '2021-06-29 05:10:49'),
('38', '105000', '2021-08-29 05:10:49'),
('39', '15000', '2021-09-29 05:10:49'),
('4', '60000', '2021-01-09 11:10:49'),
('40', '15000', '2021-10-29 05:10:49'),
('41', '90000', '2021-11-29 05:10:49'),
('42', '90000', '2021-12-03 00:10:49'),
('43', '75000', '2021-12-04 04:10:49'),
('44', '60000', '2021-12-10 11:10:49'),
('45', '30000', '2021-12-13 05:10:49'),
('46', '15000', '2021-12-25 06:10:49'),
('47', '30000', '2021-01-04 11:10:49'),
('48', '30000', '2021-02-07 11:10:49'),
('49', '90000', '2021-03-10 11:10:49'),
('5', '45000', '2021-01-12 11:10:49'),
('50', '30000', '2021-04-15 11:10:49'),
('51', '30000', '2021-06-04 11:10:49'),
('52', '30000', '2021-07-07 11:10:49'),
('53', '90000', '2021-08-10 11:10:49'),
('54', '30000', '2021-09-15 11:10:49'),
('55', '30000', '2021-10-26 11:10:49'),
('56', '30000', '2021-11-15 11:10:49'),
('57', '30000', '2021-12-24 11:10:49'),
('58', '30000', '2021-05-26 11:10:49'),
('59', '30000', '2021-01-04 11:10:49'),
('6', '30000', '2021-01-25 11:10:49'),
('60', '30000', '2021-02-07 11:10:49'),
('61', '90000', '2021-03-10 11:10:49'),
('62', '30000', '2021-04-15 11:10:49'),
('63', '30000', '2021-05-26 11:10:49'),
('64', '30000', '2021-06-04 11:10:49'),
('65', '30000', '2021-07-07 11:10:49'),
('66', '90000', '2021-08-10 11:10:49'),
('67', '30000', '2021-09-15 11:10:49'),
('68', '30000', '2021-10-26 11:10:49'),
('69', '30000', '2021-11-15 11:10:49'),
('70', '30000', '2021-12-24 11:10:49'),
('71', '60000', '2021-03-24 11:10:49'),
('72', '60000', '2021-07-24 11:10:49'),
('74', '210000', '2021-05-04 11:10:49'),
('8', '15000', '2021-02-05 11:10:49'),
('9', '150000', '2021-02-15 11:10:49');

--
-- Trigger `penjualan`
--
DELIMITER $$
CREATE TRIGGER `update_flag` AFTER INSERT ON `penjualan` FOR EACH ROW UPDATE detail_penjualan set flag_bayar='Y' WHERE no_nota=NEW.id_penjualan
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_jual`, `stok`) VALUES
('', 0, '', 'total', '', 10),
('BR001', 7, 'super fit golds', 'pakan burung kicau kemasan 110 gram', '15000', 37),
('BR002', 7, 'Super trucuk', 'voer rasa pisang tinggi protein isi100 gram', '3000', 46),
('BR003', 7, 'Ebod lovebird', 'millet untuk loverbird,parkit,dll 200 gram', '8000', 41),
('BR004', 11, 'OET jet pump', 'Botol Semprotan air ukuran 2 Liter', '25000', 60),
('BR005', 11, 'Krodong kandang burung bulat', 'untuk kandang love bird', '10000', 37),
('BR006', 11, 'Krodong kandang burung kotak', 'untuk kacer,kenari,cucak,dll', '20000', 15),
('BR007', 11, 'rantai kunci besi', 'pengaman pintu kandang burung', '2000', 32),
('BR008', 11, 'gantungan pakan', 'tempat menggantungkan pakan burung', '1000', 15),
('BR009', 11, 'dispenser pakan', 'tabung makan & minum burung', '5000', 10),
('BR010', 10, 'Super-N', 'obat burung terkena infeksi pencernaan', '10000', 15),
('BR011', 10, 'ebod vit', 'vitamin burung kicau', '12500', 20),
('BR012', 11, 'tangkringan burung', ' terbuat dari kayu jati 50 cm', '2000', 20),
('BR013', 11, 'sabut serat nanas', 'tempat bertelur love bird', '3000', 10),
('BR014', 11, 'head spray', 'kepala semprotan mandi burung', '4000', 20),
('BR015', 10, 'Tung-hai fish liver oil', 'vitamin burung lovebird,kacer,dll 500\'s', '40000', 5),
('BR016', 7, 'ebod canary', 'millet burung kenari', '7000', 30),
('BR017', 11, 'cepuk mandi burung', 'terbuat dari mika ukuran 15 cm x 8 cm', '5000', 5),
('BR018', 10, 'ebod joss ', 'vitamin burung peningkat stamina 10ml', '12500', 10),
('BR019', 7, 'kuaci hitam', 'pakan burung kualitas grade A', '60', 10000),
('BR020', 7, 'Nutribird Uni komplet', 'pakan burung pleci 250gram', '36500', 30),
('BR021', 7, 'Gold coin kenari Spc', 'pakan kenari 250 gram', '9000', 50),
('BR022', 7, 'supefit red', 'pakan burung murai mengandung serangga', '11000', 20),
('BR023', 7, 'rudjak nectar', 'pakan colibri 250ml', '42000', 20),
('BR024', 11, 'tas gendong', 'untuk membawa kandang burung', '3000', 5),
('BR025', 7, 'Topsong plus 3 in 1', 'voer untuk murai,jalak,kacer 425gram', '10000', 20),
('BR026', 7, 'insect mix bird', 'voer burung murai,kacer,ciblek 250gram', '33000', 35),
('BR027', 10, 'kututox', 'larutan pembasmi kutu burung', '9000', 5),
('BR028', 10, 'Dragon SN', 'Suplemen untuk ayam', '11000', 10),
('BR029', 11, 'Lem korea', 'lem cair multifungsi super kuat', '4000', 20),
('BR030', 10, 'Vita Stress', 'multivitamin untuk ayam & burung', '1000', 15),
('BR031', 7, 'Leopard bird food', 'pakan colibri dengan madu halus', '6500', 20),
('BR032', 7, 'Probird Fumayin', 'pakan burung pleci peningjat birahi', '7500', 18),
('BR033', 6, 'Kyojin', 'pakan ayam raksasa 950 gram', '50000', 18),
('BR034', 7, 'ebod ronggolawe', 'Pakan murai cucak,dll', '9500', 50),
('BR035', 7, 'Chirpy extra seaweed', 'pakan burung kacer,murai,cucak,dll', '9500', 70),
('BR036', 7, 'Jangkrik', 'pakan burung dan arwana arigator', '150', 5000),
('BR037', 7, 'kroto segar', 'telur semut untuk burung,ikan,dll', '250', 10000),
('BR038', 6, 'dedak halus', 'Pakan unggas dan ternak', '4000', 30),
('BR039', 8, 'Takari ', 'pakan ikan hias 250 gram', '8000', 40),
('BR040', 8, '781 -2', 'pakan ikan lele,gurami,dll', '16000', 60),
('BR041', 8, 'magot hidup', 'pakan ikan dan burung', '50', 12980),
('BR042', 7, 'Chirpy coklat', 'pakan burung kicau 400 gram', '12500', 55),
('BR043', 7, 'Fancy gold food', 'pakan poksay,hwamei,cucak rowo 450gram', '2000', 60),
('BR044', 10, 'EM4 Perikanan', 'meningkatkan kualitas air isi 1L', '20000', 30),
('BR045', 10, 'EM4 Peternakan', 'penyeimbang mikroorganisme dlm perut ternak', '20000', 25),
('BR046', 8, 'PF 1000', 'Pakan benih ikan', '20000', 60),
('BR047', 8, 'PF 500', 'Pakan benih ikan', '22500', 30),
('BR048', 8, 'PF 800', 'Pakan benih ikan', '28000', 60),
('BR049', 6, 'wong koyo BR-1W', 'pakan ayam starter pedaging', '9500', 40),
('BR050', 6, 'Comfeed Broiler', 'pakan ayam pedaging umur 1-21 hari', '10000', 30),
('BR051', 9, 'kandang murai batu', 'ukuran 20 cm x 20 cm', '80000', 5),
('BR052', 11, 'cepuk pakan', 'diameter 15 cm', '6000', 20),
('BR053', 6, 'Jagung', 'hibrida kualitas unggul', '15000', 2995),
('BR054', 6, 'menir', 'beras kecil', '3000', 200),
('BR055', 6, 'dedak', 'ampas padi', '1500', 10000),
('BR1', 6, 'padi', 'supra', '1000', 10),
('BR101', 6, 'padi', 'gavah', '10000', 10),
('BR1200', 9, 'kandang ayam', 'oppop', '10000', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(6, 'pakan ayam', '21 December 2021, 17:13'),
(7, 'pakan burung', '21 December 2021, 17:13'),
(8, 'pakan ikan', '21 December 2021, 17:13'),
(9, 'kandang', '21 December 2021, 17:13'),
(10, 'obat &amp; vitamin', '21 December 2021, 17:13'),
(11, 'aksesoris', '21 December 2021, 17:13'),
(12, 'perlengkapan ternak', '26 December 2021, 9:54'),
(13, 'pakan kambing', '29 December 2021, 9:10'),
(14, 'pakan bebek', '29 December 2021, 9:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `nama`, `gender`) VALUES
(1, 'Uin', 'L'),
(2, 'Mia', 'P'),
(3, 'Milo', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id` int(11) NOT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `Nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id`, `id_mapel`, `id_siswa`, `Nilai`) VALUES
(1, 3, 1, 80),
(2, 3, 4, 95),
(3, 3, 2, 70),
(4, 3, 3, 85),
(5, 4, 1, 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_participant`
--

CREATE TABLE `tbl_participant` (
  `id` int(11) NOT NULL,
  `id_member` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_participant`
--

INSERT INTO `tbl_participant` (`id`, `id_member`) VALUES
(1, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_point`
--

CREATE TABLE `tbl_point` (
  `id` int(11) NOT NULL,
  `member_name` varchar(20) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_point`
--

INSERT INTO `tbl_point` (`id`, `member_name`, `point`, `status`) VALUES
(1, 'Uin', 50, 1),
(2, 'Uin', 5, 1),
(3, 'Mia', 100, 0),
(4, 'Mia', 5, 1),
(5, 'Milo', 5, 0),
(6, 'Uin', 10, 1),
(7, 'Mia', 40, 1),
(8, 'Mia', 10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nama`) VALUES
(1, 'Uin'),
(2, 'Mia'),
(3, 'Milo'),
(4, 'Marbel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_login`, `username`, `password`, `id_member`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` tinyint(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_details`
--

INSERT INTO `user_details` (`user_id`, `username`, `first_name`, `last_name`, `gender`, `password`, `status`) VALUES
(10001, 'yoga', 'yoga', 'kusuma', 'male', '202cb962ac59075b964b07152d234b70', NULL),
(10002, 'widya', 'widya', 'widodo', 'female', '202cb962ac59075b964b07152d234b70', NULL),
(3, 'rivera92', 'david', 'john', 'Male', '1c3a8e03f448d211904161a6f5849b68', 1),
(4, 'rossa', 'monoriono', 'sanders', 'Male', '62f0a68a4179c5cdd997189760cbcf18', 1),
(10003, 'qead', 'wsadad', 'dsfsfa', 'male', '1565acadbf6048a77ca424b7b24204ff', NULL),
(8, 'daniel53', 'mark', 'mike', 'Male', '299cbf7171ad1b2967408ed200b4e26c', 1),
(9, 'brooks80', 'morgan', 'maria', 'Female', 'aa736a35dc15934d67c0a999dccff8f6', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`AGENT_CODE`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_CODE`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_participant`
--
ALTER TABLE `tbl_participant`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_point`
--
ALTER TABLE `tbl_point`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_participant`
--
ALTER TABLE `tbl_participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_point`
--
ALTER TABLE `tbl_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
