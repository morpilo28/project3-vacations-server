-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2020 at 05:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `follow_vacation`
--

CREATE TABLE `follow_vacation` (
  `user_id` int(11) NOT NULL,
  `vacation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `follow_vacation`
--

INSERT INTO `follow_vacation` (`user_id`, `vacation_id`) VALUES
(2, 177),
(2, 193),
(3, 180),
(3, 208),
(3, 229),
(10, 176),
(10, 177),
(10, 180);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `user_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(30) COLLATE utf8_bin NOT NULL,
  `is_admin` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `user_name`, `password`, `is_admin`) VALUES
(1, 'mor', 'pilo', 'mor', 'mor', 'true'),
(2, 'oz', 'oz', 'oz', 'oz', 'false'),
(3, 'sol', 'sol', 'sol', 'sol', 'false'),
(4, 'ohad', 'ohad', 'ohad', 'ohad', 'false'),
(5, 'michal', 'michal', 'michal', 'michal', 'false'),
(10, 'dor', 'dor', 'dor', 'dor', 'false'),
(11, 'yael', 'yael', 'yael', 'yael', 'false'),
(12, 'hadar', 'hadar', 'hadar', 'hadar', 'false'),
(13, 'gali', 'gali', 'gali', 'gali', 'false'),
(14, 'meir', 'meir', 'meir', 'meir', 'false'),
(15, 'a', 'a', 'a', 'a', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `id` int(11) NOT NULL,
  `description` varchar(1000) COLLATE utf8_bin NOT NULL,
  `destination` varchar(56) COLLATE utf8_bin NOT NULL,
  `image` varchar(50) COLLATE utf8_bin NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `price` int(11) NOT NULL,
  `followers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vacation`
--

INSERT INTO `vacation` (`id`, `description`, `destination`, `image`, `fromDate`, `toDate`, `price`, `followers`) VALUES
(176, 'ireland description', 'ireland', 'ireland-1580837262452.jpg', '2020-03-05', '2020-03-05', 120, 1),
(177, 'thailand description', 'thailand', 'thailand-1580830943323.jpg', '2020-02-05', '2020-02-05', 10, 2),
(178, 'barcelona desscription', 'barcelona', 'barcelona-1580764055922.jpg', '2020-02-24', '2020-02-24', 80, 0),
(179, 'australia description', 'australia', 'australia-1580764139400.jpg', '2020-02-23', '2020-02-24', 400, 0),
(180, 'prague description', 'prague', 'prague-1580829486380.jpg', '2020-02-28', '2020-02-28', 100, 2),
(181, 'budapest description', 'budapest', 'budapest-1580764202249.jpg', '2020-02-29', '2020-02-29', 50, 0),
(191, 'expired on 05/02/2020', 'expired on 05/02/2020', 'butterfly-1580830619057.jpg', '2020-02-02', '2020-02-04', 100, 0),
(193, 'expired on 05/02/2020', 'expired on 05/02/2020', 'desert-1580817023115.jpg', '2020-02-04', '2020-02-04', 3, 1),
(208, '1', '1', 'sunset-1580837362847.jpg', '2020-03-03', '2020-03-03', 1, 1),
(209, '2', '2', 'water-1580837482791.jpg', '2020-03-03', '2020-03-03', 2, 0),
(210, '3', '3', '3.jpg', '2020-03-03', '2020-03-03', 3, 0),
(211, '4', '4', '4.jpg', '2020-03-03', '2020-03-03', 4, 0),
(212, '5', '5', '5.jpg', '2020-03-03', '2020-03-03', 3, 0),
(220, '6', '6', '6.jpg', '2020-03-03', '2020-03-03', 1, 0),
(221, '7', '7', '7.jpg', '2020-03-03', '2020-03-03', 2, 0),
(222, '8', '8', '8.jpg', '2020-03-03', '2020-03-03', 3, 0),
(223, '9', '9', '9.jpg', '2020-03-03', '2020-03-03', 1, 0),
(224, '10', '10', '10.jpg', '2020-03-03', '2020-03-03', 2, 0),
(225, '11', '11', '11.jpg', '2020-03-03', '2020-03-03', 3, 0),
(226, '12', '12', '12.jpg', '2020-03-03', '2020-03-03', 4, 0),
(227, '13', '13', '13.jpg', '2020-03-03', '2020-03-03', 3, 0),
(228, '14', '14', '14.jpg', '2020-03-03', '2020-03-03', 1, 0),
(229, '15', '15', 'tiger-1580837436202.jpg', '2020-03-03', '2020-03-03', 2, 1),
(230, '16', '16', '16.jpg', '2020-03-03', '2020-03-03', 3, 0),
(231, '17', '17', '17.jpg', '2020-03-03', '2020-03-03', 4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `follow_vacation`
--
ALTER TABLE `follow_vacation`
  ADD PRIMARY KEY (`user_id`,`vacation_id`),
  ADD KEY `fk_vacation_id` (`vacation_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follow_vacation`
--
ALTER TABLE `follow_vacation`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk_vacation_id` FOREIGN KEY (`vacation_id`) REFERENCES `vacation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
