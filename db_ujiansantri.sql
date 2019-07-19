-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 12:46 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujiansantri`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_daerah`
--

CREATE TABLE `tb_daerah` (
  `id` int(11) NOT NULL,
  `nama_daerah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_daerah`
--

INSERT INTO `tb_daerah` (`id`, `nama_daerah`) VALUES
(1, 'Ibnu Rusdi Al-Kurtubi'),
(2, 'KH. Wahid Hasyim'),
(3, 'Abu Nashor Al-Farobi'),
(4, 'Abu Hamid Al-Ghozali');

-- --------------------------------------------------------

--
-- Table structure for table `tb_fakultas`
--

CREATE TABLE `tb_fakultas` (
  `id` int(11) NOT NULL,
  `nama_fakultas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_fakultas`
--

INSERT INTO `tb_fakultas` (`id`, `nama_fakultas`) VALUES
(1, 'Agama Islam'),
(2, 'Teknik'),
(3, 'Kesehatan'),
(4, 'Sosial & Humainora'),
(5, 'Pasca Sarjana');

-- --------------------------------------------------------

--
-- Table structure for table `tb_file`
--

CREATE TABLE `tb_file` (
  `id` int(11) NOT NULL,
  `file_data` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `fakultas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id`, `nama_jurusan`, `fakultas_id`) VALUES
(1, 'Pendidikan Agama Islam', 1),
(2, 'Manajemen Pendidikan Islam', 1),
(3, 'Ekonomi Syari\'ah', 1),
(4, 'Perbankan Syari\'ah', 1),
(5, 'Ilmu Al-Qur\'an & Tafsir', 1),
(6, 'Komunikasi dan Penyiaran Islam', 1),
(7, 'Informatika', 2),
(8, 'Elektro', 2),
(9, 'Tekonolgi Informasi', 2),
(10, 'Sistem Informasi', 2),
(11, 'Rekayasa Perangkat Lunak', 2),
(12, 'Sarjana Keperawatan', 3),
(13, 'D3 Kebidanan', 3),
(14, 'Profesi Ners', 3),
(15, 'Hukum', 4),
(16, 'Matematika', 4),
(17, 'Bahasa Inggris', 4),
(18, 'Ekonomi', 4),
(19, 'Magister Manajemen Pendidikan Islam', 5),
(20, 'Magister Pendidikan Agama Islam', 5),
(21, 'Hukum Keluarga (Ahwal Al-Syakhiyah)', 1),
(22, 'Pendidikan Guru Madrasah Ibtida\'iyah', 1),
(23, 'Pendidikan Islam Anak Usia Dini', 1),
(24, 'Hukum Ekonomi Syari\'ah', 1),
(25, 'Pendidikan Bahasa Arab', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan_santri`
--

CREATE TABLE `tb_jurusan_santri` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(128) NOT NULL,
  `lembaga_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jurusan_santri`
--

INSERT INTO `tb_jurusan_santri` (`id`, `nama_jurusan`, `lembaga_id`) VALUES
(1, 'IPA Reguler', 1),
(2, 'Bahasa Reguler', 1),
(3, 'IPA Tahfidz', 1),
(4, 'IPS Reguler', 1),
(5, 'IPA Unggulan', 1),
(6, 'IPA Reguler', 2),
(7, 'IPS Reguler', 2),
(8, 'Bahasa Reguler', 2),
(9, 'Bahasa Unggulan', 2),
(10, 'IPA Unggulan', 2),
(11, 'IPS Unggulan', 2),
(12, 'Multimedia (MM)', 3),
(13, 'Rekayasa Perangkat Lunak (RPL)', 3),
(14, 'Teknik Komputer & Jaringan', 3),
(15, 'Teknik Pembangkit Tenaga Listrik (PJB CLASS)', 3),
(16, 'Tata Busana', 3),
(17, 'Perikanan', 3),
(18, 'Keagamaan', 4),
(19, 'Bahasa', 4),
(20, 'IPA', 4),
(21, 'IPS', 4),
(22, 'Reguler', 5),
(23, 'Keagamaan', 5),
(24, 'Tahfidz', 5),
(25, 'Bahasa', 5),
(26, 'Bahasa', 5),
(27, 'MIPA', 5),
(28, 'Reguler', 6),
(29, 'LIPS', 6),
(30, 'Informasi Teknologi', 7),
(31, 'Sains', 7),
(32, 'Keagamaan', 7),
(33, 'Kebahasaan', 7),
(34, 'Reguler', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kamar`
--

CREATE TABLE `tb_kamar` (
  `id` int(11) NOT NULL,
  `nama_kamar` varchar(100) NOT NULL,
  `daerah_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_kamar`
--

INSERT INTO `tb_kamar` (`id`, `nama_kamar`, `daerah_id`) VALUES
(1, 'B01', 1),
(2, 'B02', 1),
(3, 'B03', 1),
(4, 'B04', 1),
(5, 'B05', 1),
(6, 'B06', 2),
(7, 'B07', 2),
(8, 'B08', 2),
(9, 'B09', 2),
(11, 'B10', 2),
(12, 'B11', 3),
(13, 'B12', 3),
(14, 'B13', 3),
(15, 'B14', 3),
(16, 'B15', 3),
(17, 'B16', 4),
(18, 'B17', 4),
(19, 'B18', 4),
(20, 'B19', 4),
(21, 'B20', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lembaga`
--

CREATE TABLE `tb_lembaga` (
  `id` int(11) NOT NULL,
  `nama_lembaga` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_lembaga`
--

INSERT INTO `tb_lembaga` (`id`, `nama_lembaga`) VALUES
(1, 'MA Nurul Jadid'),
(2, 'SMA Nurul Jadid'),
(3, 'SMK Nurul Jadid'),
(4, 'MA Negeri 1 Probolinggo'),
(5, 'MTS Nurul Jadid'),
(6, 'SMP Nurul Jadid'),
(7, 'MTS Negeri 1 Probolinggo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_materi`
--

CREATE TABLE `tb_materi` (
  `id` int(11) NOT NULL,
  `materi` varchar(20) NOT NULL,
  `triwulan` varchar(20) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_materi`
--

INSERT INTO `tb_materi` (`id`, `materi`, `triwulan`, `file`) VALUES
(11, 'Akidah', 'Triwulan 2', 'Akidah_13072019102209.docx'),
(12, 'Fiqih', 'Triwulan 2', 'Fiqih_14072019171755.ppt'),
(13, 'Al-Qur\'an', 'Triwulan 1', 'Al-Quran_14072019171839.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id` int(11) NOT NULL,
  `id_santri` int(11) NOT NULL,
  `triwulan` varchar(20) NOT NULL,
  `nilai_aqidah` varchar(10) NOT NULL,
  `nilai_akhlak` varchar(10) NOT NULL,
  `nilai_fiqih` varchar(10) NOT NULL,
  `nilai_quran` varchar(10) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `rata_rata` varchar(10) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`id`, `id_santri`, `triwulan`, `nilai_aqidah`, `nilai_akhlak`, `nilai_fiqih`, `nilai_quran`, `jumlah`, `rata_rata`, `keterangan`) VALUES
(8, 3, 'Triwulan 1', '80', '70', '70', '90', '310', '77.50', 'Tuntas'),
(9, 4, 'Triwulan 2', '100', '100', '90', '70', '360', '90', 'Tuntas'),
(10, 7, 'Triwulan 4', '90', '90', '90', '88', '358', '89.50', 'Tuntas'),
(11, 5, 'Triwulan 1', '80', '90', '78', '89', '337', '84.25', 'Tuntas'),
(12, 6, 'Triwulan 1', '80', '80', '60', '45', '265', '66.25', 'Tidak Tuntas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tb_santri`
--

CREATE TABLE `tb_santri` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` varchar(100) NOT NULL,
  `lembaga` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `daerah` varchar(100) NOT NULL,
  `kamar` varchar(100) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `telp` varchar(128) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_santri`
--

INSERT INTO `tb_santri` (`id`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `lembaga`, `jurusan`, `daerah`, `kamar`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `telp`, `desa`, `kecamatan`, `kabupaten`, `provinsi`) VALUES
(3, 'Anonymous', 'DarkNet', '1-Mei-2011', 'MTS Negeri 1 Probolinggo', 'Informasi Teknologi', 'Abu Hamid Al-Ghozali', 'B16', 'Anonymous', 'Progammer/Hacker', 'Anonymous', 'Progammer/Hacker', '01010101001011', 'Kuala Baru', ' Teluk Dalam', 'Kab. Simeulue', 'Aceh'),
(4, 'Hacker', 'DeepWeb', '3-Februari-2003', 'SMK Nurul Jadid', 'Teknik Komputer & Jaringan', 'Ibnu Rusdi Al-Kurtubi', 'B01', 'Programmer', 'Progammer/Hacker', 'Cracker', 'Progammer/Hacker', '10101010010', 'Benteng', ' Sungai Batang', 'Kab. Indragiri Hilir', 'Riau'),
(5, 'Mohamad Hafidz', 'Lumajang', '27-Juli-1998', 'SMK Nurul Jadid', 'Teknik Komputer & Jaringan', 'Abu Hamid Al-Ghozali', 'B20', 'Sugianto', 'Petani', 'Siti Zulaikha', 'Petani', '085678990344', 'Jambekumbu', ' Pasrujambe', 'Kab. Lumajang', 'Jawa Timur'),
(6, 'Joko Susilo', 'Malang', '11-Januari-1949', 'MA Nurul Jadid', 'Bahasa Reguler', 'Ibnu Rusdi Al-Kurtubi', 'B02', 'eko', 'Nelayan', 'Endang', 'PNS/TNI/POLRI', '085678990344', 'Petir', ' Petir', 'Kab. Serang', 'Banten');

-- --------------------------------------------------------

--
-- Table structure for table `tb_triwulan`
--

CREATE TABLE `tb_triwulan` (
  `id` int(11) NOT NULL,
  `triwulan1` varchar(20) NOT NULL,
  `triwulan2` varchar(20) NOT NULL,
  `triwulan3` varchar(20) NOT NULL,
  `triwulan4` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `lembaga` varchar(100) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `daerah` varchar(100) NOT NULL,
  `kamar` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `lembaga`, `fakultas`, `jurusan`, `semester`, `daerah`, `kamar`, `username`, `password`, `gambar`, `role_id`, `is_active`) VALUES
(14, 'Mohammad Syaiful', 'Universitas Nurul Jadid', 'Teknik', 'Informatika', '02', 'Ibnu Rusdi Al-Kurtubi', 'B03', 'syaiful', '$2y$10$yJfnk/1POcz/UI2OQkMPj.SpNu1hfiGIQadl/AjR2t61ifQD83I4e', 'syaiful_1563262930.png', 1, 1),
(15, 'Mohammad Nuris', 'Universitas Nurul Jadid', 'Agama Islam', 'Perbankan Syari\'ah', '03', 'Ibnu Rusdi Al-Kurtubi', 'B01', 'nuris', '$2y$10$0020EVMGIh5NeRGu9b/Stu1mH.pyq7/MR6braWdSkCHqq5a7OV6YG', 'syaiful_1563263239.jpg', 2, 1),
(16, 'M. Hafidz Masruri', 'Universitas Nurul Jadid', 'Teknik', 'Informatika', '08', 'KH. Wahid Hasyim', 'B06', 'hafidz', '$2y$10$uX8VDvCSVC1TBN188OCMsei3IoUe0VK0wOh35bZTANeZpoSGzbpDq', 'syaiful_1563262159.png', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_daerah`
--
ALTER TABLE `tb_daerah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_fakultas`
--
ALTER TABLE `tb_fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_file`
--
ALTER TABLE `tb_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jurusan_santri`
--
ALTER TABLE `tb_jurusan_santri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lembaga`
--
ALTER TABLE `tb_lembaga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_materi`
--
ALTER TABLE `tb_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_santri`
--
ALTER TABLE `tb_santri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_triwulan`
--
ALTER TABLE `tb_triwulan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_daerah`
--
ALTER TABLE `tb_daerah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_fakultas`
--
ALTER TABLE `tb_fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_file`
--
ALTER TABLE `tb_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_jurusan_santri`
--
ALTER TABLE `tb_jurusan_santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_lembaga`
--
ALTER TABLE `tb_lembaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_materi`
--
ALTER TABLE `tb_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_santri`
--
ALTER TABLE `tb_santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_triwulan`
--
ALTER TABLE `tb_triwulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
