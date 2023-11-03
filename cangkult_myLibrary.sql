-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2023 at 12:02 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cangkult_myLibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bab`
--

CREATE TABLE `Bab` (
  `id_bab` int(11) NOT NULL,
  `mapelId` int(11) NOT NULL,
  `nama_bab` varchar(80) NOT NULL,
  `jumlah_subab` int(11) NOT NULL,
  `label_gratis` tinyint(1) NOT NULL,
  `jumlah_subab_gratis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Bab`
--

INSERT INTO `Bab` (`id_bab`, `mapelId`, `nama_bab`, `jumlah_subab`, `label_gratis`, `jumlah_subab_gratis`) VALUES
(1, 1, 'Bab 1 Pendahuluan', 10, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Kelas`
--

CREATE TABLE `Kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Kelas`
--

INSERT INTO `Kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'Kelas 1');

-- --------------------------------------------------------

--
-- Table structure for table `Mata_Pelajaran`
--

CREATE TABLE `Mata_Pelajaran` (
  `id_matapelajaran` int(11) NOT NULL,
  `modeId` int(11) NOT NULL,
  `nama_matapelajaran` varchar(50) NOT NULL,
  `jumlahBab` int(11) NOT NULL,
  `thumbnail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Mata_Pelajaran`
--

INSERT INTO `Mata_Pelajaran` (`id_matapelajaran`, `modeId`, `nama_matapelajaran`, `jumlahBab`, `thumbnail`) VALUES
(1, 1, 'matematika', 20, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `Material`
--

CREATE TABLE `Material` (
  `id_material` int(11) NOT NULL,
  `id_subbab` int(11) NOT NULL,
  `tipe_id` int(11) NOT NULL,
  `nama_material` varchar(100) NOT NULL,
  `thumbnailMaterial` varchar(50) NOT NULL,
  `label` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Material`
--

INSERT INTO `Material` (`id_material`, `id_subbab`, `tipe_id`, `nama_material`, `thumbnailMaterial`, `label`) VALUES
(1, 1, 1, 'Pengertian', 'tes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Mode_Pembelajaran`
--

CREATE TABLE `Mode_Pembelajaran` (
  `id_mode` int(11) NOT NULL,
  `kelasId` int(11) NOT NULL,
  `nama_mode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Mode_Pembelajaran`
--

INSERT INTO `Mode_Pembelajaran` (`id_mode`, `kelasId`, `nama_mode`) VALUES
(1, 1, 'Tematik');

-- --------------------------------------------------------

--
-- Table structure for table `progresBab`
--

CREATE TABLE `progresBab` (
  `id_progresBab` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `babId` int(11) NOT NULL,
  `progres` varchar(20) NOT NULL,
  `statusProgres` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `progresBab`
--

INSERT INTO `progresBab` (`id_progresBab`, `userId`, `babId`, `progres`, `statusProgres`) VALUES
(1, 1, 1, '3%', 'OnProgres');

-- --------------------------------------------------------

--
-- Table structure for table `progresMaterial`
--

CREATE TABLE `progresMaterial` (
  `id_progresMaterial` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `materialId` int(11) NOT NULL,
  `statusProgres` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `progresMaterial`
--

INSERT INTO `progresMaterial` (`id_progresMaterial`, `userId`, `materialId`, `statusProgres`) VALUES
(1, 1, 1, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `progresSubBab`
--

CREATE TABLE `progresSubBab` (
  `id_progresSubBab` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `SubBabId` int(11) NOT NULL,
  `progres` varchar(20) NOT NULL,
  `statusProgres` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `progresSubBab`
--

INSERT INTO `progresSubBab` (`id_progresSubBab`, `userId`, `SubBabId`, `progres`, `statusProgres`) VALUES
(1, 1, 1, '33%', 'OnProgres');

-- --------------------------------------------------------

--
-- Table structure for table `Sub_Bab`
--

CREATE TABLE `Sub_Bab` (
  `id_subbab` int(11) NOT NULL,
  `id_bab` int(11) NOT NULL,
  `nama_subbab` varchar(100) NOT NULL,
  `label_gratis` tinyint(1) NOT NULL,
  `jumlah_material` int(11) NOT NULL,
  `thumbnailSubBab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Sub_Bab`
--

INSERT INTO `Sub_Bab` (`id_subbab`, `id_bab`, `nama_subbab`, `label_gratis`, `jumlah_material`, `thumbnailSubBab`) VALUES
(1, 1, 'A. Latar Belakang', 1, 3, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `TipeMaterial`
--

CREATE TABLE `TipeMaterial` (
  `id_tipe` int(11) NOT NULL,
  `nama_tipe` varchar(100) NOT NULL,
  `xp` int(11) NOT NULL,
  `gold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `TipeMaterial`
--

INSERT INTO `TipeMaterial` (`id_tipe`, `nama_tipe`, `xp`, `gold`) VALUES
(1, 'Video', 10, 20);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `kelasId` int(11) NOT NULL,
  `userPassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`user_id`, `username`, `kelasId`, `userPassword`) VALUES
(1, 'Hilmi', 1, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bab`
--
ALTER TABLE `Bab`
  ADD PRIMARY KEY (`id_bab`),
  ADD KEY `FK_Bab_Mata_Pelajaran` (`mapelId`);

--
-- Indexes for table `Kelas`
--
ALTER TABLE `Kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `Mata_Pelajaran`
--
ALTER TABLE `Mata_Pelajaran`
  ADD PRIMARY KEY (`id_matapelajaran`),
  ADD KEY `FK_Mata_Pelajaran_Mode_Pembelajaran` (`modeId`);

--
-- Indexes for table `Material`
--
ALTER TABLE `Material`
  ADD PRIMARY KEY (`id_material`),
  ADD KEY `FK_Material_Sub_Bab` (`id_subbab`),
  ADD KEY `FK_Material_TipeMaterial` (`tipe_id`);

--
-- Indexes for table `Mode_Pembelajaran`
--
ALTER TABLE `Mode_Pembelajaran`
  ADD PRIMARY KEY (`id_mode`),
  ADD KEY `FK_Mode_Pembelajaran_Kelas` (`kelasId`);

--
-- Indexes for table `progresBab`
--
ALTER TABLE `progresBab`
  ADD PRIMARY KEY (`id_progresBab`),
  ADD KEY `FK_progresBab_User` (`userId`),
  ADD KEY `FK_progresBab_Bab` (`babId`);

--
-- Indexes for table `progresMaterial`
--
ALTER TABLE `progresMaterial`
  ADD PRIMARY KEY (`id_progresMaterial`),
  ADD KEY `FK_progresMaterial_User` (`userId`),
  ADD KEY `FK_progresMaterial_Material` (`materialId`);

--
-- Indexes for table `progresSubBab`
--
ALTER TABLE `progresSubBab`
  ADD PRIMARY KEY (`id_progresSubBab`),
  ADD KEY `FK_progresSubBab_User` (`userId`),
  ADD KEY `FK_progresSubBab_Sub_Bab` (`SubBabId`);

--
-- Indexes for table `Sub_Bab`
--
ALTER TABLE `Sub_Bab`
  ADD PRIMARY KEY (`id_subbab`),
  ADD KEY `FK_Sub_Bab_Bab` (`id_bab`);

--
-- Indexes for table `TipeMaterial`
--
ALTER TABLE `TipeMaterial`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_User_Kelas` (`kelasId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bab`
--
ALTER TABLE `Bab`
  MODIFY `id_bab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Kelas`
--
ALTER TABLE `Kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Mata_Pelajaran`
--
ALTER TABLE `Mata_Pelajaran`
  MODIFY `id_matapelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Material`
--
ALTER TABLE `Material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Mode_Pembelajaran`
--
ALTER TABLE `Mode_Pembelajaran`
  MODIFY `id_mode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `progresBab`
--
ALTER TABLE `progresBab`
  MODIFY `id_progresBab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `progresMaterial`
--
ALTER TABLE `progresMaterial`
  MODIFY `id_progresMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `progresSubBab`
--
ALTER TABLE `progresSubBab`
  MODIFY `id_progresSubBab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Sub_Bab`
--
ALTER TABLE `Sub_Bab`
  MODIFY `id_subbab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `TipeMaterial`
--
ALTER TABLE `TipeMaterial`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bab`
--
ALTER TABLE `Bab`
  ADD CONSTRAINT `FK_Bab_Mata_Pelajaran` FOREIGN KEY (`mapelId`) REFERENCES `Mata_Pelajaran` (`id_matapelajaran`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `Mata_Pelajaran`
--
ALTER TABLE `Mata_Pelajaran`
  ADD CONSTRAINT `FK_Mata_Pelajaran_Mode_Pembelajaran` FOREIGN KEY (`modeId`) REFERENCES `Mode_Pembelajaran` (`id_mode`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `Material`
--
ALTER TABLE `Material`
  ADD CONSTRAINT `FK_Material_Sub_Bab` FOREIGN KEY (`id_subbab`) REFERENCES `Sub_Bab` (`id_subbab`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Material_TipeMaterial` FOREIGN KEY (`tipe_id`) REFERENCES `TipeMaterial` (`id_tipe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Mode_Pembelajaran`
--
ALTER TABLE `Mode_Pembelajaran`
  ADD CONSTRAINT `FK_Mode_Pembelajaran_Kelas` FOREIGN KEY (`kelasId`) REFERENCES `Kelas` (`id_kelas`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `progresBab`
--
ALTER TABLE `progresBab`
  ADD CONSTRAINT `FK_progresBab_Bab` FOREIGN KEY (`babId`) REFERENCES `Bab` (`id_bab`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_progresBab_User` FOREIGN KEY (`userId`) REFERENCES `User` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `progresMaterial`
--
ALTER TABLE `progresMaterial`
  ADD CONSTRAINT `FK_progresMaterial_Material` FOREIGN KEY (`materialId`) REFERENCES `Material` (`id_material`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_progresMaterial_User` FOREIGN KEY (`userId`) REFERENCES `User` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `progresSubBab`
--
ALTER TABLE `progresSubBab`
  ADD CONSTRAINT `FK_progresSubBab_Sub_Bab` FOREIGN KEY (`SubBabId`) REFERENCES `Sub_Bab` (`id_subbab`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_progresSubBab_User` FOREIGN KEY (`userId`) REFERENCES `User` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `Sub_Bab`
--
ALTER TABLE `Sub_Bab`
  ADD CONSTRAINT `FK_Sub_Bab_Bab` FOREIGN KEY (`id_bab`) REFERENCES `Bab` (`id_bab`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `FK_User_Kelas` FOREIGN KEY (`kelasId`) REFERENCES `Kelas` (`id_kelas`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
