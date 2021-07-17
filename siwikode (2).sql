-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 17, 2021 at 08:43 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siwikode`
--

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id_galery` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `wisata_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id_galery`, `filename`, `wisata_id`) VALUES
(30, '2294941466088093da90f8c0534dd527.jpeg', 19),
(31, 'bromo-tengger-semeru.jpeg', 19),
(32, 'Gunung-Bromo-Jawa-Timur.jpeg', 19),
(33, '2294941466088093da90f8c0534dd527.jpeg', 20),
(34, 'bromo-tengger-semeru.jpeg', 20),
(36, '2294941466088093da90f8c0534dd527.jpeg', 21),
(37, 'bromo-tengger-semeru.jpeg', 21),
(38, 'Gunung-Bromo-Jawa-Timur.jpeg', 21),
(44, 'bromo-tengger-semeru.jpeg', 18),
(45, 'Gunung-Bromo-Jawa-Timur.jpeg', 18),
(46, '2294941466088093da90f8c0534dd527.jpeg', 18),
(47, 'jeremy-bishop-8xznAGy4HcY-unsplash.jpg', 20),
(48, '2294941466088093da90f8c0534dd527.jpeg', 22),
(49, 'bingsu.jpeg', 22),
(50, 'bromo-tengger-semeru.jpeg', 22),
(51, '2294941466088093da90f8c0534dd527.jpeg', 23),
(52, 'bromo-tengger-semeru.jpeg', 23),
(53, 'Gunung-Bromo-Jawa-Timur.jpeg', 23);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kuliner`
--

CREATE TABLE `jenis_kuliner` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_kuliner`
--

INSERT INTO `jenis_kuliner` (`id`, `nama`) VALUES
(1, 'Kedai/Cafe'),
(2, 'Restaurant'),
(3, 'Pasar Kaget');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_wisata`
--

CREATE TABLE `jenis_wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_wisata`
--

INSERT INTO `jenis_wisata` (`id`, `nama`) VALUES
(1, 'Argo Wisata'),
(2, 'Kuliner'),
(3, 'Taman Wisata'),
(4, 'Museum'),
(5, 'Water Park / Kolam Renang');

-- --------------------------------------------------------

--
-- Table structure for table `profesi`
--

CREATE TABLE `profesi` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profesi`
--

INSERT INTO `profesi` (`id`, `nama`) VALUES
(1, 'Artist'),
(2, 'Pejabat'),
(3, 'Mahasiswa'),
(4, 'Pegawai Swasta'),
(5, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `wisata_id` int(11) DEFAULT NULL,
  `profesi_id` int(11) DEFAULT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `komentar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id`, `nama`, `email`, `wisata_id`, `profesi_id`, `rating`, `komentar`) VALUES
(1, 'Mahmudi Ismail', 'mahmud@gmail.com', 23, 2, 3, 'Restoran ini menyediakan beragam menu seafood yang rasanya enak karena bahan mentah yang digunakan berkualitas dan segar. Tempatnya ok'),
(2, 'Ayu Ting Ting', 'ayutingting@gmail.com', 23, 1, 4, 'Saung talaga, Jalan raya sawangan depok. Salah satu tempat kuliner rekomended di kawasan depok dan sekitarnya. Saya sudah lebih dari empat kali mengunjungi tempat ini dan tidak penah merasa bosan.'),
(3, 'Andini', 'andini@gmail.com', 23, 3, 5, 'Saya sering untuk datang ke sini dengan keluarga besar saya. Saya pikir ini adalah salah satu yang terbaik di resto bagi keluarga saya. Suasana adalah menyenangkan, dan mereka juga memiliki sebuah danau'),
(4, 'Mahmudi Ismail', 'mahmud@gmail.com', 18, 2, 3, 'Restoran ini menyediakan beragam menu seafood yang rasanya enak karena bahan mentah yang digunakan berkualitas dan segar. Tempatnya ok'),
(5, 'Ayu Ting Ting', 'ayutingting@gmail.com', 18, 1, 4, 'Saung talaga, Jalan raya sawangan depok. Salah satu tempat kuliner rekomended di kawasan depok dan sekitarnya. Saya sudah lebih dari empat kali mengunjungi tempat ini dan tidak penah merasa bosan.'),
(6, 'Andini', 'andini@gmail.com', 18, 3, 5, 'Saya sering untuk datang ke sini dengan keluarga besar saya. Saya pikir ini adalah salah satu yang terbaik di resto bagi keluarga saya. Suasana adalah menyenangkan, dan mereka juga memiliki sebuah danau');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `jenis_wisata_id` int(11) DEFAULT NULL,
  `fasilitas` text DEFAULT NULL,
  `bintang` smallint(6) DEFAULT NULL,
  `kontak` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `latlong` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `web` varchar(45) DEFAULT NULL,
  `jenis_kuliner_id` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `nama`, `deskripsi`, `jenis_wisata_id`, `fasilitas`, `bintang`, `kontak`, `alamat`, `latlong`, `email`, `web`, `jenis_kuliner_id`, `foto`, `no_hp`) VALUES
(18, 'Alun Alun Kota Depok', 'Alun-Alun Kota Depok yang memberikan sensasi yang hijau dan menyejukan ,sebagai tempat berkumpul paling pas dengan keluarga.', 3, 'Alun-alun dilengkapi dengan berbagai fasilitas olahraga seperti lapangan basket, futsall, skateboard, wall climbing, arena BMX, taman bermain anak, kolam ikan, air mancur, dan lainnya.', 4, 'Muhammad Hadi', 'Jl. Boulevard Grand Depok City No.25, Jatimul', '-6.4392115, 106.8250', 'depok@gmail.com', 'https://travelingyuk.com/fasilitas-alun-alun-', NULL, '5e1aedbf5e548.jpeg', '622183728077'),
(19, 'Taman Rekreasi Wiladatika', 'Taman Rekreasi Wiladatika ini salah satu tempat favorite untuk berkunjung dengan keluarga, selain taman yang luas disini juga sering ada shoting-shoting film dll, yang menjadi daya tarik tersendiri.', 3, 'Memiliki Air terjun buatan, Goa mini dan kolam air mancur, serta hamparan bunga dan pepohonan yang membuat udara di sekitar sejuk.', 5, 'Indra Hidayat', 'Jl. Jambore No.1, Harjamukti, Kec. Cimanggis,', '-6.3712824, 106.8893', 'depok@gmail.com', 'https://jejakpiknik.com/taman-rekreasi-wilada', NULL, 'wiladatika.jpeg', '62218731859'),
(20, 'Whast Up', 'The Next Level of Indomie\" adalah jargon yang diusung oleh kafe ini. Terdapat olahan unik Indomie seperti Indomie Blackpepper Beef, Indomie Carbonara dan untuk pecinta makanan pedas kamu harus coba Indomie Oseng Mercon yang rasanya ajib. Mie disini diolah tanpa memasukan bumbu dalam kemasan sehingga rasa mie diolah sesuai menu masakan. Selain mie, ada variasi unik dari nasi goreng dan roti bakar, aneka snack seperti oreo goreng, es krim goreng dan bermacam minuman. Di kafe ini terdapat mainan seperti Uno, Ludo, Remi dan ular tangga yang bisa kamu mainkan bersama teman-teman ketika sedang menunggu pesanan. Atau jika kamu beruntung terkadang ada Live Acoustic pada sore hari hingga menjelang malam. Harga makanan di Whats Up berkisar antara Rp.6.000-Rp.25.000 sementara minuman antara Rp.4.000-Rp.15.000', NULL, 'parkiran mobil dan motorluas dan tempatnya nyaman dan tidak sempit. Pilihan makanan banyak dengan rasa yang sangat enak. Tidak akan menyesal jika datang kesini.', 4, 'Budi Santoso', 'Jl. Palakali Raya No 46 RT/RW 007/005, Kukusa', '-6.3675796, 106.8164', 'depok@gmail.com', 'https://pergikuliner.com/restaurants/depok/wh', 1, 'what.jpeg', '6281296969684'),
(21, 'Hello Bingsu', 'Berbeda dengan kafe yang menyajikan menu korean food, cafe hello bingsu menyediakan makanan-makanan berupa dessert, snack dan aneka minuman juga spesialisasi berupa Bingsu, yaitu makanan penutup khas korea berupa es kacang merah dengan berbagai macam variasi seperti Choco Bingsu, Fruit Bingsu atau Oreo Bingsu.', NULL, 'Tempat tidak terlalu besar tetapi lucu dekorasi depan ada payung-payung ala warna warni. Nah disini ada 2 lantai Lantai 1 ada ac, lantai 2 Tidak ada', 3, 'Rosmalia Affendi', 'Jalan Margonda Raya No.30, Kemiri Muka, Beji,', '-6.3832777, 106.8199', 'depok@gmail.com', 'https://pergikuliner.com/restaurants/depok/ca', 1, 'bingsu.jpeg', '082211700223'),
(23, 'Saung Talaga', 'Dinamakan saung talaga karena tempat makan ini berada dekat talaga atau danau dan tempat makannya sendiri berupa saung atau pendopo terapung, menjadikan tempat makan ini sangat direkomendasikan untuk kamu yang suka makan di tempat yang rimbun dengan pepohonan dan berudara sejuk.', NULL, 'restoran berkonsep saung di atas danau dengan fasilitas kolam pemancingan dan kolam renang', 4, 'Wyda Ningsih', 'Jl. Raya Sawangan No.1, Rangkapan Jaya, Kec. ', '-6.3948344, 106.7865', 'depok@gmail.com', 'http://saungtalaga.com', 2, 'saung.png', '081380165357');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indexes for table `jenis_kuliner`
--
ALTER TABLE `jenis_kuliner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profesi`
--
ALTER TABLE `profesi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_testimoni_wisata1_idx` (`wisata_id`),
  ADD KEY `fk_testimoni_profesi1_idx` (`profesi_id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wisata_jenis_wisata_idx` (`jenis_wisata_id`),
  ADD KEY `fk_wisata_jenis_kuliner1_idx` (`jenis_kuliner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `jenis_kuliner`
--
ALTER TABLE `jenis_kuliner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profesi`
--
ALTER TABLE `profesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
