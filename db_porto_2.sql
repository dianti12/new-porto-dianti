-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 10:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_porto_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'hardianti', 'abdullah', 'hardianti@gmail.com', 'tes kontak', '\r\n            aaaaa                        ', '2025-05-26 05:44:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `name_level` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name_level`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `portofolios`
--

CREATE TABLE `portofolios` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name_porto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `profile_name` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `profile_name`, `description`, `photo`) VALUES
(56, 'Bagaimana Sejarah IT atau Teknologi Informasi', '<p style=\"margin-right: 0px; margin-bottom: 1.6em; margin-left: 0px; line-height: 1.6em; color: rgb(85, 85, 85); font-family: \"Source Sans Pro\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 18px;\">IT, singkatan yang bisa jadi pernah kamu dengar atau baca. Ini adalah singkatan dari <a href=\"https://www.dicoding.com/blog/mengenal-apa-itu-it-peluang-karier-yang-menjanjikan/\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(217, 83, 79); text-decoration: none; transition: 0.2s linear;\"><i>information technology</i></a> atau dalam bahasa Indonesia, teknologi informasi. Saat ini, IT telah berpengaruh besar dalam kehidupan sehari-hari, baik kita sadari maupun tidak.</p><p style=\"margin-right: 0px; margin-bottom: 1.6em; margin-left: 0px; line-height: 1.6em; color: rgb(85, 85, 85); font-family: \"Source Sans Pro\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 18px;\">Kamu bisa saja bertanya-tanya, “Bagaimana sejarah ilmu teknologi informasi bisa berkembang sampai menjadi besar seperti sekarang?”, “Siapa yang berjasa mengembangkan teknologi hingga saat ini?” Mari kita simak artikel ini untuk mengetahuinya.</p><h2 style=\"font-family: \"Source Sans Pro\", Georgia, \"Times New Roman\", serif; font-weight: 600; line-height: 1.5em; color: rgb(85, 85, 85); margin-bottom: 16px; font-size: 30px;\"><span style=\"font-weight: 400;\">Sejarah Singkat Teknologi Informasi</span></h2><p style=\"margin-right: 0px; margin-bottom: 1.6em; margin-left: 0px; line-height: 1.6em; color: rgb(85, 85, 85); font-family: \"Source Sans Pro\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 18px;\">Teknologi informasi (IT) adalah salah satu bidang paling penting dalam peradaban manusia. Sejak zaman dahulu kala, manusia membutuhkan berbagai alat untuk dapat menyebarkan informasi dan pengetahuan dari satu tempat ke tempat lainnya, dari satu orang ke orang lainnya.</p><div style=\"color: rgb(85, 85, 85); font-family: \"Source Sans Pro\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 18px;\"></div><p style=\"margin-right: 0px; margin-bottom: 1.6em; margin-left: 0px; line-height: 1.6em; color: rgb(85, 85, 85); font-family: \"Source Sans Pro\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 18px;\">Hingga saat ini, penyebaran informasi semakin masif dan perkembangannya tidak berhenti, malah semakin pesat. <a href=\"https://www.dicoding.com/blog/teknologi-baru-yang-berpengaruh-di-dunia/\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(217, 83, 79); text-decoration: none; transition: 0.2s linear;\">Teknologi</a> itu pun kini tidak lagi hanya bersifat “menyebarkan informasi”, tetapi juga “menciptakan informasi”.</p><h3 style=\"font-family: \"Source Sans Pro\", Georgia, \"Times New Roman\", serif; font-weight: 600; line-height: 1.5em; color: rgb(85, 85, 85); margin-bottom: 16px; font-size: 24px;\"><span style=\"font-weight: 400;\">Sebelum Adanya Komputer</span></h3><p style=\"margin-right: 0px; margin-bottom: 1.6em; margin-left: 0px; line-height: 1.6em; color: rgb(85, 85, 85); font-family: \"Source Sans Pro\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 18px;\">Pada masa-masa prasejarah, sebenarnya manusia sudah menyebarkan informasi melalui berbagai media. Misalnya, para manusia di zaman itu mengukir gambar di dinding gua ataupun tulisan di atas prasasti. Media lainnya seperti kulit binatang dan daun-daunan pun digunakan.</p>', '68341f91ab032_komputer 3d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `photo`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 'text-primary flaticon-startup', 'Business Consulting', 'dsfsdfsdfsdfsdfsdfsdfsd', '2025-05-27 06:42:21', NULL),
(5, 'text-primary flaticon-graphic-design', 'ini design', 'sssssssssssssssssssssssssssssssssssasscc', '2025-05-27 06:44:09', NULL),
(6, 'text-primary flaticon-graphic-design', 'cobainkslkhdhhb cnb jhbdjhasbd', 'vnbcsajbhjkasdjkhnasjkd', '2025-05-27 06:44:31', NULL),
(7, 'text-primary flaticon-graphic-design', 'sadmjnjkdmas cmn nasbcas', 'cabndmghbjagdbhmabdjhbahjbcfhkbsjhkma', '2025-05-27 06:44:43', NULL),
(8, 'text-primary flaticon-graphic-design', 'nbhsdvghbsvdgasvdbas bcv c', 'svnmbsdjhgasjudgajkhjkasxn', '2025-05-27 06:44:53', NULL),
(9, 'text-primary flaticon-graphic-design', 'berubahahahahahaha', 'ishhdfsjhfjbsdfhbhf', '2025-05-27 07:09:37', '2025-05-27 07:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`) VALUES
(1, 'skill_name'),
(2, 'tes'),
(3, 'dfgdfgdf'),
(4, 'dfgdfgdf'),
(5, 'sdfsdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position_name` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `position_name`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'For the next great business', 'Lorem ipsum dolor sit amet consectetur adipisicing', 'logo golkar.png', 1, '2025-05-24 04:57:10', NULL),
(2, 'For the next great business', 'Lorem ipsum dolor sit amet consectetur adipisicing', 'logo golkar.png', 1, '2025-05-24 04:57:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `judul_testimoni` varchar(50) NOT NULL,
  `deskripsi_testimoni` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_level` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_level`, `name`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Reza123', 'admin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2025-05-21 01:40:52', '2025-05-22 07:55:55', 0),
(7, 2, 'Hardianti', 'hardianti@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2025-05-22 08:34:08', '2025-05-27 03:59:12', 0),
(9, 1, 'koala', 'koala@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2025-05-26 01:44:23', '2025-05-27 03:58:48', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portofolios`
--
ALTER TABLE `portofolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_id_to_id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portofolios`
--
ALTER TABLE `portofolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `level_id_to_id_level` FOREIGN KEY (`id_level`) REFERENCES `levels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
