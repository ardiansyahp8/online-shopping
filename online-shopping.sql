-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 20, 2023 at 03:49 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online-shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Footwear', '2023-01-08 13:03:31', '2023-01-08 13:03:31'),
(3, 'Fashion', '2023-01-09 04:07:28', '2023-01-09 04:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `full_description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `title`, `description`, `full_description`, `image`, `price`, `url`, `createdAt`, `updatedAt`, `category_id`) VALUES
('30c40cd1-30c1-486a-a833-cb5eb4e6a7f2', 'Aerostreet', 'lorem ipsum small', 'lorem ipsum full', '1673232407569_pexels-caio-64613.jpg', 150000, NULL, '2023-01-09 02:46:47', '2023-01-09 02:46:47', 1),
('46d1f80c-a463-42a2-b990-97d32ea0c07b', 'Sample Title Validation 2', 'lorem ipsum small', '', '1673595114391_pexels-caio-64613.jpg', 100, 'sample-title-validation-2-04391899099880652', '2023-01-13 07:31:54', '2023-01-13 07:31:54', 1),
('59523d79-1d2e-4e5d-9f2a-db30017108a7', 'Adidas', 'lorem ipsum small', 'lorem ipsum full', '1673232288895_pexels-caio-64613.jpg', 500000, NULL, '2023-01-09 02:44:48', '2023-01-09 03:36:59', 1),
('79446e4a-5414-459b-8e67-58d4d6e0a15f', 'Air Jordan', 'lorem ipsum small', 'lorem ipsum full', '1673235871384_pexels-caio-64613.jpg', 450000, 'air-jordan-07918068166129246', '2023-01-09 03:44:31', '2023-01-09 03:44:31', 1),
('cefa9e83-c401-4421-9662-958c5b2d2c96', 'Sample Title Validation', 'lorem ipsum small', 'lorem ipsum full', '1673594865845_pexels-caio-64613.jpg', 100, 'sample-title-validation-02794527631234289', '2023-01-13 07:27:45', '2023-01-13 07:27:45', 1),
('dd8a9e83-n701-4421-9662-958c5b2d2c96', 'Sample Title Validation', 'lorem ipsum small', 'lorem ipsum full', '1673594865845_pexels-caio-64613.jpg', 100, 'sample-title-validation-02794527631234289', '2023-01-20 07:27:45', '2023-01-20 07:27:45', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produks`
--
ALTER TABLE `produks`
  ADD CONSTRAINT `produks_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `kategoris` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
