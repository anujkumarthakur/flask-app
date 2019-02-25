-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2019 at 09:40 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `Sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `Msg` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`Sno`, `name`, `email`, `phone_num`, `Msg`, `date`) VALUES
(1, 'first name', 'first@gmail.com', '4367589905', 'first post', '2018-12-27 16:07:02'),
(2, 'name', 'a@gmail.com', '6767676776', 'hello', '2018-12-28 01:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Machine Learning', 'Supervised learning', 'first-post', 'The computer is presented with example inputs and their desired outputs, given by a “teacher”, and the goal is to learn ', 'machineLearn', '2019-02-07 17:41:04.523391'),
(2, 'Image Classification', 'Image', 'second-post', 'You train with images/labels. Then in the future you give a new image expecting that the computer will recognize the new', 'about-bg.jpg', '2019-02-07 17:43:26.586873'),
(3, 'Market Prediction/Regression', 'Predication', 'third-post', 'You train the computer with historical market data and ask the computer to predict the new price in the future.', 'machineLearn', '2019-02-07 17:44:25.716589'),
(4, 'Unsupervised learning', 'Un-supervised', 'fourth-post', 'No labels are given to the learning algorithm, leaving it on its own to find structure in its input. It is used for clus', 'machineLearn', '2019-02-07 17:45:24.969452'),
(6, 'Clustering', 'Cluster', 'six-post', 'You ask the computer to separate similar data into clusters, this is essential in research and science.', 'machineLearn', '2019-02-07 17:46:39.529771'),
(7, 'High Dimension Visualization/Generative Models', 'Models', 'seven-post', 'Use the computer to help us visualize high dimension data.\r\n\r\nAfter a model captures the probability distribution of you', 'app.img', '2019-02-07 17:48:23.965743');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
