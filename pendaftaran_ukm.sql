-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Jan 2017 pada 03.21
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran_ukm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('042529eb584c7d8ec5b3b315ca0958e0', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1483169793, 'a:5:{s:9:"user_data";s:0:"";s:7:"mhs_npm";s:7:"1144096";s:12:"mhs_password";s:32:"af09c2753faab375d0014746fbd04330";s:8:"mhs_nama";s:16:"Nava Gia Ginasta";s:10:"logged_in2";b:1;}'),
('409d78de88a760d677c750164d1104c9', '0.0.0.0', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Mobile', 1483170141, 'a:5:{s:9:"user_data";s:0:"";s:7:"mhs_npm";s:7:"1144096";s:12:"mhs_password";s:32:"af09c2753faab375d0014746fbd04330";s:8:"mhs_nama";s:16:"Nava Gia Ginasta";s:10:"logged_in2";b:1;}'),
('744728b7903e515c5f7b1fa398eac489', '0.0.0.0', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Mobile', 1483122821, 'a:5:{s:9:"user_data";s:0:"";s:7:"mhs_npm";s:7:"1144096";s:12:"mhs_password";s:32:"af09c2753faab375d0014746fbd04330";s:8:"mhs_nama";s:16:"Nava Gia Ginasta";s:10:"logged_in2";b:1;}'),
('a34892897ad56b0a9dff7efff583cbfa', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1483122724, 'a:6:{s:12:"mhs_password";s:32:"af09c2753faab375d0014746fbd04330";s:14:"admin_username";s:11:"navaganteng";s:14:"admin_password";s:32:"048051f0e12351a92ea258716c5ad262";s:7:"mhs_npm";s:7:"1144096";s:8:"mhs_nama";s:16:"Nava Gia Ginasta";s:10:"logged_in2";b:1;}'),
('a7f4bbb4a28316379a32e0706871444e', '0.0.0.0', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Mobile', 1483123879, ''),
('c6eb04d2f9d6df9186be6b5ebb5b7ae7', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1483177087, 'a:2:{s:9:"user_data";s:0:"";s:17:"flash:old:warning";s:31:" NPM atau Password tidak cocok!";}'),
('db5e4ba45acaf3ec341ad6378b65b9d3', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1483126067, 'a:5:{s:9:"user_data";s:0:"";s:7:"mhs_npm";s:7:"1144096";s:12:"mhs_password";s:32:"af09c2753faab375d0014746fbd04330";s:8:"mhs_nama";s:16:"Nava Gia Ginasta";s:10:"logged_in2";b:1;}'),
('ed4cb8936a9fae92d09504595e02af44', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1483122941, 'a:5:{s:9:"user_data";s:0:"";s:7:"mhs_npm";s:7:"1144096";s:12:"mhs_password";s:32:"af09c2753faab375d0014746fbd04330";s:8:"mhs_nama";s:16:"Nava Gia Ginasta";s:10:"logged_in2";b:1;}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_admin`
--

CREATE TABLE `t_admin` (
  `admin_id` int(5) NOT NULL,
  `admin_username` varchar(20) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_admin`
--

INSERT INTO `t_admin` (`admin_id`, `admin_username`, `admin_password`, `admin_nama`) VALUES
(1, 'navaganteng', '048051f0e12351a92ea258716c5ad262', 'Nava Gia Ginasta'),
(2, 'rizki', '3e089c076bf1ec3a8332280ee35c28d4', 'Rizki Fadillah'),
(3, 'agung', 'e59cd3ce33a68f536c19fedb82a7936f', 'Agung Permana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_deadline`
--

CREATE TABLE `t_deadline` (
  `deadline_id` int(5) NOT NULL,
  `deadline_tgl` date NOT NULL,
  `ukm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_deadline`
--

INSERT INTO `t_deadline` (`deadline_id`, `deadline_tgl`, `ukm_id`) VALUES
(1, '2016-12-31', 1),
(2, '2016-12-31', 2),
(3, '2017-01-01', 3),
(4, '2017-01-04', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kelas`
--

CREATE TABLE `t_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kelas`
--

INSERT INTO `t_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, '1A'),
(2, '2A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mahasiswa`
--

CREATE TABLE `t_mahasiswa` (
  `mhs_npm` varchar(7) NOT NULL,
  `mhs_password` varchar(100) NOT NULL,
  `mhs_nama` varchar(30) NOT NULL,
  `mhs_kelas` int(11) NOT NULL,
  `mhs_prodi` int(5) NOT NULL,
  `mhs_tahun_masuk` year(4) NOT NULL,
  `mhs_foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_mahasiswa`
--

INSERT INTO `t_mahasiswa` (`mhs_npm`, `mhs_password`, `mhs_nama`, `mhs_kelas`, `mhs_prodi`, `mhs_tahun_masuk`, `mhs_foto`) VALUES
('11111', '', 'Dadung Ewok', 2, 2, 2018, '1482840357-wew.jpg'),
('1144096', 'af09c2753faab375d0014746fbd04330', 'Nava Gia Ginasta', 1, 1, 2014, '1482851138-rizki-fadillah.PNG'),
('1212121', '', 'Juki Valak', 1, 1, 2018, '1482851114-eee.PNG'),
('23232', '', 'er', 1, 1, 2014, '1482895264-er.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pendaftaran`
--

CREATE TABLE `t_pendaftaran` (
  `pendaftaran_id` int(5) NOT NULL,
  `mhs_npm` int(7) NOT NULL,
  `ukm_id` int(5) NOT NULL,
  `pendaftaran_status` enum('?','DITERIMA','TIDAK DITERIMA') NOT NULL DEFAULT '?',
  `pendaftaran_tahun` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pendaftaran`
--

INSERT INTO `t_pendaftaran` (`pendaftaran_id`, `mhs_npm`, `ukm_id`, `pendaftaran_status`, `pendaftaran_tahun`) VALUES
(19, 1144096, 4, '?', '2016');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengelola`
--

CREATE TABLE `t_pengelola` (
  `pengelola_id` int(5) NOT NULL,
  `pengelola_username` varchar(20) NOT NULL,
  `pengelola_password` varchar(50) NOT NULL,
  `ukm_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_prodi`
--

CREATE TABLE `t_prodi` (
  `prodi_id` int(5) NOT NULL,
  `prodi_nama` varchar(25) NOT NULL,
  `prodi_desk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_prodi`
--

INSERT INTO `t_prodi` (`prodi_id`, `prodi_nama`, `prodi_desk`) VALUES
(1, 'D4 Teknik Informatika', 'D4 Teknik Informatika'),
(4, 'D3 Teknik Informatika', 'D3 Teknik Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_ukm`
--

CREATE TABLE `t_ukm` (
  `ukm_id` int(5) NOT NULL,
  `ukm_nama` varchar(30) NOT NULL,
  `ukm_desk` text NOT NULL,
  `ukm_logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_ukm`
--

INSERT INTO `t_ukm` (`ukm_id`, `ukm_nama`, `ukm_desk`, `ukm_logo`) VALUES
(1, 'Basket', 'Basket', 'basket'),
(2, 'Futsal', 'Futsal', '-'),
(3, 'Volly', 'Volly', '-'),
(4, 'Badminton', 'Badminton', '-'),
(6, 'Popeys', 'Popeys', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `t_deadline`
--
ALTER TABLE `t_deadline`
  ADD PRIMARY KEY (`deadline_id`);

--
-- Indexes for table `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `t_mahasiswa`
--
ALTER TABLE `t_mahasiswa`
  ADD PRIMARY KEY (`mhs_npm`);

--
-- Indexes for table `t_pendaftaran`
--
ALTER TABLE `t_pendaftaran`
  ADD PRIMARY KEY (`pendaftaran_id`);

--
-- Indexes for table `t_pengelola`
--
ALTER TABLE `t_pengelola`
  ADD PRIMARY KEY (`pengelola_id`);

--
-- Indexes for table `t_prodi`
--
ALTER TABLE `t_prodi`
  ADD PRIMARY KEY (`prodi_id`);

--
-- Indexes for table `t_ukm`
--
ALTER TABLE `t_ukm`
  ADD PRIMARY KEY (`ukm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t_deadline`
--
ALTER TABLE `t_deadline`
  MODIFY `deadline_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_kelas`
--
ALTER TABLE `t_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_pendaftaran`
--
ALTER TABLE `t_pendaftaran`
  MODIFY `pendaftaran_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `t_pengelola`
--
ALTER TABLE `t_pengelola`
  MODIFY `pengelola_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_prodi`
--
ALTER TABLE `t_prodi`
  MODIFY `prodi_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_ukm`
--
ALTER TABLE `t_ukm`
  MODIFY `ukm_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
