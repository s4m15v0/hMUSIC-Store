-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 05:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(45) DEFAULT NULL,
  `artist_biography` text DEFAULT NULL,
  `artist_details` varchar(45) DEFAULT NULL,
  `artist_photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `artist_biography`, `artist_details`, `artist_photo`) VALUES
(1, 'Led Zeppelin', 'Led Zeppelin', NULL, 'stairwaytoheaven.jpg'),
(3, 'Blackfield', 'Blackfield , Blackfield is a collaborative music project by the English musician and founder of Porcupine Tree, Steven Wilson, and Israeli rock singer Aviv Geffen', NULL, 'blackfieldpain.jpeg'),
(4, 'Eric Clapton', 'Eric Patrick Clapton, CBE is an English rock and blues guitarist, singer, and songwriter', NULL, '0_yOynPZAWJJwgK7Ab.jpg'),
(5, 'Mark Knopfler ', 'Singer-songwriter', NULL, '1280x852-9-e1502543967958.jpeg'),
(6, 'The Mayan Factor', ' The Mayan Factor have an ethnic sound, using atmospheric percussion (kongas and drums), acoustic guitars, various keyboard samples and tribal bass to an melodic, intense effect ', NULL, 'The_Mayan_Factor_Warflower.png'),
(7, 'Artcell', 'Bangladeshi Heavy Metal Band ', NULL, '5909f107d0856_thumb900.jpg'),
(8, 'Nemesis', 'Nemesis
Rock band ', NULL, 'download (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `download_time` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL,
  `song_mp3` text DEFAULT NULL,
  `song_photo` text DEFAULT NULL,
  `song_date` text DEFAULT NULL,
  `aritst_id` varchar(35) DEFAULT NULL,
  `song_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `song_mp3`, `song_photo`, `song_date`, `aritst_id`, `song_name`) VALUES
(12, '1594313558_76984949380544_1593167375_54137122780950_Eddy_Kenzo_-_Tweyagale_.mp3', '1594313612_3327764631838_1592131027_41742619472167_maxresdefault.jpg', NULL, '1', 'Tweyaagale');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `reg_date` varchar(45) DEFAULT NULL,
  `last_seen` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `reg_date`, `last_seen`, `photo`) VALUES
(1, 'haddy1', '$2y$10$Zt12am7RJv/ZR7ZrS.2kIONx4VZJ7deAhsLV74', 'Hadijatou', NULL, NULL, '1591095139', ''),
(2, 'admin_2', '$2y$10$T1yu8zxLMJQg8.FPrQPpLuIUFxyuTihfCFihtM', 'Hamoud', NULL, NULL, '1591522035', ''),
(3, 'admin_3', '$2y$10$hbW2BB4zqvUBQybzW8jh2e6v.j4NSBO.irP.YM', 'Hamoud', NULL, NULL, '1591525236', ''),
(4, 'admin_4', '$2y$10$a3AHQtlfWeaUks.bEA2TQebLZ9i5MiT557HmJb', 'Biirah', NULL, NULL, '1591525821', ''),
(5, 'admin_5', '$2y$10$dstP./.91eJNNoNwpsXlBOl98dRQqdyA8JOu9p', 'Hadijatou', NULL, NULL, '1591526196', ''),
(6, 'haddy6', '$2y$10$K2LQuWSph7BQZCUE2Hkj0u7JmXsCJZC1AosX6D', 'Hadijatou', NULL, NULL, '1591952978', ''),
(7, 'haddy7', '$2y$10$Sq9VYUX9Dp8ta5HzwWTdbuP6vU8fPu33YMmTx2eWjTRhEQSOB8vPK', 'haddy', NULL, NULL, '1591953667', '');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `view_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `view_time` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`view_id`, `user_id`, `song_id`, `view_time`) VALUES
(37, 7, 12, '1594313565'),
(38, 7, 12, '1594313619'),
(39, 7, 12, '1594313634');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`view_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
