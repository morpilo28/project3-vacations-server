-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2020 at 11:19 PM
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
(2, 179),
(2, 308),
(2, 310);

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
(176, 'ireland description', 'ireland', 'ireland-1581197149514.jpg', '2020-03-05', '2020-03-05', 120, 0),
(178, 'barcelona desscription', 'barcelona', 'barcelona-1581197163076.jpg', '2020-02-24', '2020-02-24', 80, 0),
(179, 'australia description', 'australia', 'australia-1581197517211.jpg', '2020-02-23', '2020-02-24', 500, 1),
(180, 'prague description', 'prague', 'prague-1581197526017.jpg', '2020-02-28', '2020-02-28', 100, 0),
(181, 'budapest description', 'budapest', 'budapest-1581197535727.jpg', '2020-02-29', '2020-02-29', 50, 0),
(208, 'china description', 'china', 'china-1581198204413.jpg', '2020-03-03', '2020-03-03', 600, 0),
(209, 'finland description', 'finland', 'finland-1581198230842.jpg', '2020-03-03', '2020-03-03', 700, 0),
(308, 'japan description', 'japan', 'japan-1581198251055.jpg', '2020-10-02', '2020-10-02', 500, 1),
(309, 'new york description', 'new york', 'newYork-1581198273240.jpg', '2020-10-02', '2020-10-02', 550, 0),
(310, 'new zealand description', 'new zealand', 'newZealand-1581198300602.jpg', '2020-10-02', '2020-10-02', 600, 1),
(312, '3', '3', '7', '2020-10-02', '2020-10-02', 1, 0),
(313, '3', '3', '8', '2020-10-02', '2020-10-02', 1, 0),
(314, '3', '3', '9', '2020-10-02', '2020-10-02', 1, 0),
(315, '3', '3', '10', '2020-10-02', '2020-10-02', 1, 0),
(316, '3', '3', '11', '2020-10-02', '2020-10-02', 1, 0),
(317, '3', '3', '12', '2020-10-02', '2020-10-02', 1, 0),
(318, '3', '3', '13', '2020-10-02', '2020-10-02', 1, 0),
(319, '3', '3', '14', '2020-10-02', '2020-10-02', 1, 0),
(320, '3', '3', '15', '2020-10-02', '2020-10-02', 1, 0),
(321, '3', '3', '16', '2020-10-02', '2020-10-02', 1, 0),
(322, '3', '3', '17', '2020-10-02', '2020-10-02', 1, 0),
(323, '3', '3', '18', '2020-10-02', '2020-10-02', 1, 0),
(324, '3', '3', '19', '2020-10-02', '2020-10-02', 1, 0),
(325, '3', '3', '20', '2020-10-02', '2020-10-02', 1, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

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
