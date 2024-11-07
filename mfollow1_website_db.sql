-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2024 at 09:22 PM
-- Server version: 10.11.9-MariaDB-cll-lve
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mfollow1_website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verify_token` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `verify_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `email_verify_token`, `phone`, `photo`, `status`, `password`, `remember_token`, `role`, `verify_code`, `created_at`, `updated_at`) VALUES
(1, 'Test Admin', 'admin', 'admin@gmail.com', '', '09000000', '4490071491661147420.jpg', 1, '$2a$12$X0LncT8LgenKXRu/HIhej.Paigt8Bpi2effr5bp1EeH/wABX6VfI.', 'OON5EGGJrWBKP1lPE6TB1umhYrhV3NyM5S7si1S2Oy7RmPRhe36u4vLeGzI2', 'super-admin', 726094, NULL, '2022-08-22 12:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `photo`, `description`, `views`, `status`, `created_at`, `updated_at`) VALUES
(66, 8, 'Why you choose SMM Pro', 'why-you-choose-smm-pro', '5499794451664775064.png', '<p style=\"text-align:justify;\"><span><span style=\"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;\">SMM Pro is a complete solution for an Social Media Marketing Platform. Users can use this system to get all the social media marketing opportunities. Anyone can register for these marketing services, and This System includes almost everything you need to make an online social media marketing platform, you can use this system as an API also.  API system in this script is straightforward to use and you will have full source code without any kind of encryption. So, you can modify or extend it according to your needs. SMM Pro comes with different kinds of Social media marketing features, also it comes with mass order, standard deposit system, balance transfer,  support multiple languages, multiple currencies, Two Factor authentication and advanced referrals system. </span></span></p>\n\n<p style=\"text-align:justify;\"><span><span style=\"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;\">SMM Pro is easily installable and you can manage this script more easily with user-friendly features and an interactive interface with a fully responsive design. It\'s designed for everyone, whether is the user technical or non-technical. Anyone can interact with the interface easily and comfortably. The SMM Pro will make you Successful for sure in the Social Media marketing business arena as well as it will save your Marketing cost also for this one you don’t need any Coding Skills. SMM Pro may assist you to handle unlimited users, payments, accept a good number of payment gateways, Supports Multiple Languages, and Multiple Currencies. You can easily manage which currency will be accepted or not, Also you can set the system base currency. </span></span><span style=\"background-color:transparent;color:rgb(0,0,0);font-family:Arial;font-size:11pt;text-align:left;\">This script is perfectly created with lots of known online payment gateways to make the payment easier, flexible, and comfortable.</span><span style=\"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;\"> If you are looking for the Best Online Social Media Marketing script which will grow your business to the next level then SMM Pro will be the right choice for you. </span><span style=\"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;\"> It takes only a few minutes to set up your website with our system. </span><span style=\"background-color:transparent;color:rgb(0,0,0);font-family:Arial;font-size:11pt;text-align:left;\">So, Let’s Start Your own Social Media Marketing platform with SMM Pro.</span></p>\n\n<p style=\"text-align:justify;\"><br></p>\n\n<div><br></div>', 58, 1, '2022-02-12 23:09:25', '2024-11-06 05:54:10'),
(67, 9, 'How to get Register in SMM Pro', 'how-to-get-register-in-smm-pro', '16948648621645511038.jpg', '<p style=\"text-align:justify;\"><span style=\"font-size:11pt;font-family:arial;color:rgb(0,0,0);background-color:transparent;\">Registration System in SMM Pro- For getting registration user have to click on the register button, it requires some information then after filling in that information there is an option for verification. After that and all the verification users will get a login form, putting valid information user will get the dashboard. And SMM Pro users get all the necessary information for Social Media Marketing, it included every needy operation to the dashboard. Everything is dynamic and can be set up from the admin panel. It has a strong SQL injection protection system that will keep this system from hackers. This script is perfectly created with lots of known online payment gateways to make the payment easier, flexible, and comfortable. User will appropriately get all the transaction details. </span></p>\n\n<p style=\"text-align:justify;\"><span style=\"font-size:11pt;font-family:arial;color:rgb(0,0,0);background-color:transparent;\">SMM Pro is a complete solution for an Social Media Marketing Platform. Users can use this system to get all the social media marketing opportunities. Anyone can register for these marketing services, and This System includes almost everything you need to make an online social media marketing platform, you can use this system as an API also.  API system in this script is straightforward to use and you will have full source code without any kind of encryption. So, you can modify or extend it according to your needs. </span><span style=\"background-color:transparent;color:rgb(0,0,0);font-family:arial;font-size:11pt;text-align:left;\"> SMM Pro may assist you to handle unlimited users, payments, accept a good number of payment gateways, Supports Multiple Languages, and Multiple Currencies. You can easily manage which currency will be accepted or not, Also you can set the system base currency. If you are looking for the Best Online Social Media Marketing script which will grow your business to the next level then SMM Pro will be the right choice for you. </span><span style=\"background-color:transparent;color:rgb(0,0,0);font-family:Arial;font-size:11pt;text-align:left;\">It gives you the best satisfaction to use Social Media Marketing System. SMM Pro is the 100% Completed and Updated System and we promises to keep it updated. </span><span style=\"background-color:transparent;color:rgb(0,0,0);font-family:Arial;font-size:11pt;text-align:left;\">So, Let’s Start Your own Social Media Marketing platform with SMM Pro.</span></p>\n\n<div><br></div>', 43, 1, '2022-02-12 23:11:32', '2024-11-05 20:03:16'),
(68, 9, 'How to make Deposit in SMM Pro', 'how-to-make-deposit-in-smm-pro', '609659891645511084.jpg', '<div><p style=\"text-align:justify;\"><span style=\"font-size:11pt;font-family:arial;color:rgb(0,0,0);background-color:transparent;\">Deposit System in SMM Pro- For making a deposit users have to be registered, if not then there is an option for get registering, after that and all the verification users will get a login form, putting valid information user will get the dashboard. For the deposit, users will get an option for deposit, after clicking at that option users will get a good number of payment methods, and it\'s a user-friendly and easy interface to make deposits.  Everything is dynamic and can be set up from the admin panel. It has a strong SQL injection protection system that will keep this system from hackers. This script is perfectly created with lots of known online payment gateways to make the payment easier, flexible, and comfortable. User will appropriately get all the transaction details. </span></p><p style=\"text-align:justify;\"><span style=\"font-size:11pt;font-family:arial;color:rgb(0,0,0);background-color:transparent;\">SMM Pro is a complete solution for an Social Media Marketing Platform. Users can use this system to get all the social media marketing opportunities. Anyone can register for these marketing services, and This System includes almost everything you need to make an online social media marketing platform, you can use this system as an API also.  API system in this script is straightforward to use and you will have full source code without any kind of encryption. So, you can modify or extend it according to your needs. </span><span style=\"background-color:transparent;color:rgb(0,0,0);font-family:arial;font-size:11pt;text-align:left;\"> SMM Pro may assist you to handle unlimited users, payments, accept a good number of payment gateways, Supports Multiple Languages, and Multiple Currencies. You can easily manage which currency will be accepted or not, Also you can set the system base currency. If you are looking for the Best Online Social Media Marketing script which will grow your business to the next level then SMM Pro will be the right choice for you. </span><span style=\"background-color:transparent;color:rgb(0,0,0);font-family:Arial;font-size:11pt;text-align:left;\">It gives you the best satisfaction to use Social Media Marketing System. SMM Pro is the 100% Completed and Updated System and we promises to keep it updated. </span><span style=\"background-color:transparent;color:rgb(0,0,0);font-family:Arial;font-size:11pt;text-align:left;\">So, Let’s Start Your own Social Media Marketing platform with SMM Pro. </span></p><div><span style=\"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;\"><br></span></div></div>\n\n<div><br></div>', 67, 1, '2022-02-22 00:24:44', '2024-11-06 21:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(8, 'News', 'news', 1, NULL, NULL),
(9, 'Announces', 'announces', 1, NULL, NULL),
(10, 'Statistics', 'statistics', 1, NULL, NULL),
(11, 'New category', 'new-category', 1, NULL, NULL),
(12, 'Test', 'test', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(3974, 'facebook', 'facebook', 1, '2024-10-02 12:24:47', '2024-10-02 12:24:47'),
(3975, 'Rashed', 'rashed', 1, '2024-10-02 12:24:47', '2024-10-02 12:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dial_code` varchar(10) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `dial_code`, `flag`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Afghanistan', 'AF', '+93', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AF.svg', 1, '2022-06-14 22:46:13', '2022-08-22 11:26:12'),
(9, 'Albania', 'AL', '+355', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AL.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(10, 'Algeria', 'DZ', '+213', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DZ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(11, 'Andorra', 'AD', '+376', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AD.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(12, 'Angola', 'AO', '+244', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AO.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(13, 'Anguilla', 'AI', '+1264', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AI.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(14, 'Antarctica', 'AQ', '+672', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AQ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(15, 'Argentina', 'AR', '+54', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AR.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(16, 'Armenia', 'AM', '+374', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AM.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(17, 'Aruba', 'AW', '+297', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AW.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(18, 'Australia', 'AU', '+61', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AU.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(19, 'Austria', 'AT', '+43', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AT.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(20, 'Azerbaijan', 'AZ', '+994', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AZ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(21, 'Bahamas', 'BS', '+1242', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BS.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(22, 'Bahrain', 'BH', '+973', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BH.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(23, 'Bangladesh', 'BD', '+880', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BD.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(24, 'Barbados', 'BB', '+1246', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BB.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(25, 'Belarus', 'BY', '+375', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BY.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(26, 'Belgium', 'BE', '+32', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BE.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(27, 'Belize', 'BZ', '+501', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BZ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(28, 'Benin', 'BJ', '+229', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BJ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(29, 'Bermuda', 'BM', '+1441', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BM.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(30, 'Bhutan', 'BT', '+975', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BT.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(31, 'Botswana', 'BW', '+267', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BW.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(32, 'Brazil', 'BR', '+55', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BR.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(33, 'British Indian Ocean Territory', 'IO', '+246', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IO.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(34, 'Bulgaria', 'BG', '+359', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BG.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(35, 'Burkina Faso', 'BF', '+226', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BF.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(36, 'Burundi', 'BI', '+257', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BI.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(37, 'Cambodia', 'KH', '+855', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KH.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(38, 'Cameroon', 'CM', '+237', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CM.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(39, 'Canada', 'CA', '+1', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CA.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(40, 'Cape Verde', 'CV', '+238', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CV.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(41, 'Cayman Islands', 'KY', '+345', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KY.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(42, 'Central African Republic', 'CF', '+236', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CF.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(43, 'Chad', 'TD', '+235', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TD.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(44, 'Chile', 'CL', '+56', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CL.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(45, 'China', 'CN', '+86', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CN.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(46, 'Christmas Island', 'CX', '+61', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CX.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(47, 'Cocos (Keeling) Islands', 'CC', '+61', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CC.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(48, 'Colombia', 'CO', '+57', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CO.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(49, 'Comoros', 'KM', '+269', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KM.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(50, 'Cook Islands', 'CK', '+682', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CK.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(51, 'Costa Rica', 'CR', '+506', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CR.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(52, 'Croatia', 'HR', '+385', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HR.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(53, 'Cuba', 'CU', '+53', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CU.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(54, 'Cyprus', 'CY', '+357', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CY.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(55, 'Denmark', 'DK', '+45', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DK.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(56, 'Djibouti', 'DJ', '+253', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DJ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(57, 'Dominica', 'DM', '+1767', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DM.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(58, 'Dominican Republic', 'DO', '+1849', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DO.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(59, 'Ecuador', 'EC', '+593', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EC.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(60, 'Egypt', 'EG', '+20', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EG.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(61, 'El Salvador', 'SV', '+503', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SV.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(62, 'Equatorial Guinea', 'GQ', '+240', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GQ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(63, 'Eritrea', 'ER', '+291', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ER.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(64, 'Estonia', 'EE', '+372', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EE.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(65, 'Ethiopia', 'ET', '+251', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ET.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(66, 'Faroe Islands', 'FO', '+298', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FO.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(67, 'Fiji', 'FJ', '+679', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FJ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(68, 'Finland', 'FI', '+358', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FI.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(69, 'France', 'FR', '+33', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FR.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(70, 'French Guiana', 'GF', '+594', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GF.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(71, 'French Polynesia', 'PF', '+689', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PF.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(72, 'Gabon', 'GA', '+241', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GA.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(73, 'Gambia', 'GM', '+220', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GM.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(74, 'Georgia', 'GE', '+995', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GE.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(75, 'Germany', 'DE', '+49', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DE.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(76, 'Ghana', 'GH', '+233', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GH.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(77, 'Gibraltar', 'GI', '+350', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GI.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(78, 'Greece', 'GR', '+30', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GR.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(79, 'Greenland', 'GL', '+299', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GL.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(80, 'Grenada', 'GD', '+1473', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GD.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(81, 'Guadeloupe', 'GP', '+590', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GP.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(82, 'Guam', 'GU', '+1671', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GU.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(83, 'Guatemala', 'GT', '+502', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GT.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(84, 'Guernsey', 'GG', '+44', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GG.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(85, 'Guinea', 'GN', '+224', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GN.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(86, 'Guinea-Bissau', 'GW', '+245', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GW.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(87, 'Guyana', 'GY', '+595', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GY.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(88, 'Haiti', 'HT', '+509', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HT.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(89, 'Honduras', 'HN', '+504', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HN.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(90, 'Hungary', 'HU', '+36', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HU.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(91, 'Iceland', 'IS', '+354', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IS.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(92, 'India', 'IN', '+91', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IN.svg', 0, '2022-06-14 22:46:13', '2022-06-21 04:16:25'),
(93, 'Indonesia', 'ID', '+62', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ID.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(94, 'Iraq', 'IQ', '+964', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IQ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(95, 'Ireland', 'IE', '+353', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IE.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(96, 'Isle of Man', 'IM', '+44', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IM.svg', 0, '2022-06-14 22:46:13', '2022-06-21 04:16:15'),
(97, 'Israel', 'IL', '+972', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IL.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(98, 'Italy', 'IT', '+39', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IT.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(99, 'Jamaica', 'JM', '+1876', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JM.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(100, 'Japan', 'JP', '+81', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JP.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(101, 'Jersey', 'JE', '+44', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JE.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(102, 'Jordan', 'JO', '+962', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JO.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(103, 'Kazakhstan', 'KZ', '+77', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KZ.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(104, 'Kenya', 'KE', '+254', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KE.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(105, 'Kiribati', 'KI', '+686', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KI.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(106, 'Kuwait', 'KW', '+965', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KW.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(107, 'Kyrgyzstan', 'KG', '+996', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KG.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(108, 'Laos', 'LA', '+856', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LA.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(109, 'Latvia', 'LV', '+371', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LV.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(110, 'Lebanon', 'LB', '+961', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LB.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(111, 'Lesotho', 'LS', '+266', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LS.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(112, 'Liberia', 'LR', '+231', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LR.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(113, 'Liechtenstein', 'LI', '+423', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LI.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(114, 'Lithuania', 'LT', '+370', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LT.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(115, 'Luxembourg', 'LU', '+352', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LU.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(116, 'Madagascar', 'MG', '+261', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MG.svg', 1, '2022-06-14 22:46:13', '2022-06-14 22:46:13'),
(117, 'Malawi', 'MW', '+265', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MW.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(118, 'Malaysia', 'MY', '+60', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MY.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(119, 'Maldives', 'MV', '+960', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MV.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(120, 'Mali', 'ML', '+223', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ML.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(121, 'Malta', 'MT', '+356', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MT.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(122, 'Marshall Islands', 'MH', '+692', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MH.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(123, 'Martinique', 'MQ', '+596', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MQ.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(124, 'Mauritania', 'MR', '+222', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MR.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(125, 'Mauritius', 'MU', '+230', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MU.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(126, 'Mayotte', 'YT', '+262', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/YT.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(127, 'Mexico', 'MX', '+52', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MX.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(128, 'Moldova', 'MD', '+373', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MD.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(129, 'Monaco', 'MC', '+377', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MC.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(130, 'Mongolia', 'MN', '+976', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MN.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(131, 'Montenegro', 'ME', '+382', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ME.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(132, 'Montserrat', 'MS', '+1664', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MS.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(133, 'Morocco', 'MA', '+212', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MA.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(134, 'Mozambique', 'MZ', '+258', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MZ.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(135, 'Namibia', 'NA', '+264', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NA.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(136, 'Nauru', 'NR', '+674', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NR.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(137, 'Nepal', 'NP', '+977', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NP.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(138, 'Netherlands', 'NL', '+31', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NL.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(139, 'New Caledonia', 'NC', '+687', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NC.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(140, 'New Zealand', 'NZ', '+64', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NZ.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(141, 'Nicaragua', 'NI', '+505', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NI.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(142, 'Niger', 'NE', '+227', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NE.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(143, 'Nigeria', 'NG', '+234', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NG.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(144, 'Niue', 'NU', '+683', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NU.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(145, 'Norfolk Island', 'NF', '+672', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NF.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(146, 'Northern Mariana Islands', 'MP', '+1670', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MP.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(147, 'Norway', 'NO', '+47', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NO.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(148, 'Oman', 'OM', '+968', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/OM.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(149, 'Pakistan', 'PK', '+92', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PK.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(150, 'Palau', 'PW', '+680', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PW.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(151, 'Panama', 'PA', '+507', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PA.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(152, 'Papua New Guinea', 'PG', '+675', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PG.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(153, 'Paraguay', 'PY', '+595', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PY.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(154, 'Peru', 'PE', '+51', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PE.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(155, 'Philippines', 'PH', '+63', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PH.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(156, 'Poland', 'PL', '+48', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PL.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(157, 'Portugal', 'PT', '+351', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PT.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(158, 'Puerto Rico', 'PR', '+1939', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PR.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(159, 'Qatar', 'QA', '+974', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/QA.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(160, 'Romania', 'RO', '+40', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/RO.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(161, 'Russia', 'RU', '+7', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/RU.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(162, 'Rwanda', 'RW', '+250', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/RW.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(163, 'Samoa', 'WS', '+685', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/WS.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(164, 'San Marino', 'SM', '+378', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SM.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(165, 'Saudi Arabia', 'SA', '+966', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SA.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(166, 'Senegal', 'SN', '+221', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SN.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(167, 'Serbia', 'RS', '+381', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/RS.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(168, 'Seychelles', 'SC', '+248', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SC.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(169, 'Sierra Leone', 'SL', '+232', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SL.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(170, 'Singapore', 'SG', '+65', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SG.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(171, 'Slovakia', 'SK', '+421', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SK.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(172, 'Slovenia', 'SI', '+386', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SI.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(173, 'Solomon Islands', 'SB', '+677', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SB.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(174, 'Somalia', 'SO', '+252', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SO.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(175, 'South Africa', 'ZA', '+27', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ZA.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(176, 'South Sudan', 'SS', '+211', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SS.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(177, 'Spain', 'ES', '+34', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ES.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(178, 'Sri Lanka', 'LK', '+94', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LK.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(179, 'Sudan', 'SD', '+249', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SD.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(180, 'Suriname', 'SR', '+597', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SR.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(181, 'Sweden', 'SE', '+46', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SE.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(182, 'Switzerland', 'CH', '+41', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CH.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(183, 'Taiwan', 'TW', '+886', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TW.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(184, 'Tajikistan', 'TJ', '+992', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TJ.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(185, 'Thailand', 'TH', '+66', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TH.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(186, 'Timor-Leste', 'TL', '+670', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TL.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(187, 'Togo', 'TG', '+228', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TG.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(188, 'Tokelau', 'TK', '+690', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TK.svg', 1, '2022-06-14 22:46:14', '2022-06-15 04:41:47'),
(189, 'Tonga', 'TO', '+676', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TO.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(190, 'Tunisia', 'TN', '+216', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TN.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(191, 'Turkey', 'TR', '+90', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TR.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(192, 'Turkmenistan', 'TM', '+993', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TM.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(193, 'Tuvalu', 'TV', '+688', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TV.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(194, 'Uganda', 'UG', '+256', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UG.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(195, 'Ukraine', 'UA', '+380', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UA.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(196, 'United Arab Emirates', 'AE', '+971', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AE.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(197, 'United Kingdom', 'GB', '+44', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GB.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(198, 'United States', 'US', '+1', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/US.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(199, 'Uruguay', 'UY', '+598', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UY.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(200, 'Uzbekistan', 'UZ', '+998', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UZ.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(201, 'Vanuatu', 'VU', '+678', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/VU.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(202, 'Vietnam', 'VN', '+84', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/VN.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(203, 'Yemen', 'YE', '+967', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/YE.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(204, 'Zambia', 'ZM', '+260', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ZM.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14'),
(205, 'Zimbabwe', 'ZW', '+263', 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ZW.svg', 1, '2022-06-14 22:46:14', '2022-06-14 22:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default` int(10) UNSIGNED NOT NULL COMMENT '1 => default, 0 => not default',
  `symbol` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `curr_name` varchar(255) NOT NULL,
  `type` int(10) UNSIGNED NOT NULL COMMENT '1 => fiat, 2 => crypto',
  `status` int(10) UNSIGNED NOT NULL COMMENT '1 => active, 0 => inactive',
  `rate` decimal(20,10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `default`, `symbol`, `code`, `curr_name`, `type`, `status`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, '$', 'USD', 'United State Dollar', 1, 1, 1.0000000000, '2021-12-20 04:12:58', '2022-08-22 16:56:36'),
(4, 0, '€', 'EUR', 'European Currency', 1, 1, 0.9181600000, '2021-12-20 04:12:58', '2022-03-08 04:33:43'),
(5, 0, '£', 'GBP', 'Greate British Pound', 1, 1, 0.7625850000, '2021-12-21 00:45:51', '2022-03-08 04:33:43'),
(6, 0, '৳', 'BDT', 'Bangladeshi Taka', 1, 1, 93.6200000000, '2021-12-21 00:48:53', '2022-03-08 04:33:43'),
(9, 0, '₿', 'BTC', 'Bitcoin', 2, 1, 39073.4588920000, '2021-12-21 00:48:53', '2022-03-08 04:33:44'),
(10, 0, '₹', 'INR', 'Indian Rupee', 1, 1, 76.9177000000, '2022-01-26 02:28:23', '2022-03-08 04:33:43'),
(11, 0, '¥', 'JPY', 'Japanese Yen', 1, 1, 115.4015030000, '2022-01-26 02:30:04', '2022-03-08 04:33:43'),
(13, 0, '₦', 'NGN', 'Nigerian naira', 1, 1, 415.1103100000, '2022-02-06 05:41:35', '2022-03-08 04:33:43'),
(14, 0, 'LTC', 'LTC', 'Lite coin', 2, 1, 100.8300000000, '2022-03-08 05:13:08', '2022-03-08 05:13:08'),
(15, 0, 'ETH', 'ETH', 'Ethereum', 2, 1, 2587.7300000000, '2022-03-08 05:14:44', '2022-03-08 05:14:44'),
(16, 0, '!', 'hii', 'dsfd', 1, 0, 34.0000000000, '2022-08-22 11:25:10', '2022-08-22 16:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(111) DEFAULT NULL,
  `txn_id` varchar(222) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `default_curr_amount` decimal(20,10) NOT NULL DEFAULT 0.0000000000,
  `method` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `trx_details` varchar(255) DEFAULT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `charge` decimal(20,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `status`, `txn_id`, `created_at`, `updated_at`, `amount`, `default_curr_amount`, `method`, `currency_id`, `trx_details`, `reject_reason`, `charge`) VALUES
(24, 25, 'completed', 'txn_3Q6lLPJlIV5dN9n70zjrBu20', '2024-10-05 21:41:19', '2024-10-05 21:41:19', 10000, 10000.0000000000, 14, 1, NULL, NULL, NULL),
(25, 36, 'pending', 'GXES1OP1O9PG', '2024-10-26 08:31:53', '2024-10-26 08:31:53', 1032, 11.0230000000, 21, 6, NULL, NULL, 32.0000000000);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) DEFAULT NULL,
  `email_subject` mediumtext DEFAULT NULL,
  `email_body` longtext DEFAULT NULL,
  `sms` text DEFAULT NULL,
  `codes` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `sms`, `codes`, `status`) VALUES
(12, 'add_balance', 'Balance added by system', '<p>Hello {name},\r\n</p><p>\r\nBalance added {amount} {curr} in your wallet ({curr}) by system successfully.\r\n</p><p>\r\nTransaction details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>New balance : {after_balance}\r\n</li><li>Time : {date_time}</li></ul>', 'Hello {name},\r\n\r\nBalance added {amount} {curr} in your wallet ({curr}) from system successfully.\r\n\r\nTransaction details:\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nNew balance : {after_balance}\r\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"after_balance\":\"after geting payment remaining balance\",\"data_time\":\"date and time\"}', 1),
(13, 'subtract_balance', 'Balance subtracted by system', '<p>Hello {name},\r\n</p><p>\r\nBalance subtracted {amount} {curr} from your wallet ({curr}) by system successfully.\r\n</p><p>\r\nTransaction details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>New balance : {after_balance}\r\n</li><li>Time : {date_time}</li></ul>', 'Hello {name},\r\n\r\nBalance subtracted {amount} {curr} from your wallet ({curr}) by system successfully.\r\n\r\nTransaction details:\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nNew balance : {after_balance}\r\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"after_balance\":\"after geting payment remaining balance\",\"data_time\":\"date and time\"}', 1),
(17, 'deposit_approve', 'Approve Deposit', '<p>Hello {name},\r\n</p>\r\n\r\n<p>\r\nYour deposit request {amount} {curr} via {method} is approved.\r\n</p>\r\n\r\n<p><b>\r\nTransaction details:\r\n</b></p>\r\n\r\n<ul><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Charge  : {charge} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>New Balance  : {new_balance} {curr}</li></ul>\r\n\r\n<p>Time : {date_time}\r\n</p>', 'Hello {name},\n\nYour deposit request {amount} {curr} via {method} is approved.\n\nTransaction details:\n\nAmount  :  {amount} {curr}\nCharge  : {charge} {curr}\nTransaction ID : {trnx}\nNew Balance  : {new_balance}\nTime : {date_time}\n', '{\"amount\":\"deposit amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"method\":\"deposit method name\",\"new_balance\":\"New balance\",\"charge\":\"Charge\"}', 1),
(18, 'deposit_reject', 'Reject Deposit', '<p>Hello {name},\r\n</p><p>\r\nYour deposit request {amount} {curr} via {method} is rejected.\r\n</p><p><b>\r\nTransaction details:\r\n</b></p><ul><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>Charge  : {charge}\r\n</li><li>\r\nReject Reason :\r\n{reject_reason}\r\n</li></ul><p>\r\nTime : {date_time}\r\n</p>', 'Hello {name},\r\n\r\nYour deposit request {amount} {curr} via {method} is rejected.\r\n\r\nTransaction details:\r\n\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nCharge  : {charge}\r\n\r\nRject Reason :\r\n{reject_reason}\r\n\r\nTime : {date_time}\r\n', '{\"amount\":\"deposit amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"method\":\"deposit method name\",\"charge\":\"charge\",\"reject_reason\":\" reason of reject\"}', 1),
(21, 'order_place', 'Order Placed', '<p>Hello {name},\n</p><p>\nYour order has been placed.\n</p><p><b>\nOrder Details details:\n</b></p><ul>\n<li>\nOrder ID  :  {order}\n</li>\n<li>\nService Name  :  {service}\n</li>\n<li>\nQuantity  :  {qty}\n</li>\n<li>\nPrice  :  {price} {curr}\n</li><li>Transaction ID : {trnx}\n</li>\n</ul><p>\nTime : {date_time}\n</p>', 'Hello {name},\n\nYour order has been placed.\n\nOrder Details details:\n\nOrder ID  :  {order}\nService Name  :  {service}\nQuantity  :  {qty}\nPrice  :  {price} {curr}\nTransaction ID : {trnx}\n\nTime : {date_time}\n', '{\"price\":\"price\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"service\":\"Order service name\",\"qty\":\"Quantity\",\"order\":\"order id\"}', 1),
(22, 'mass_order_place', 'Order Placed', '<p>Hello {name},\r\n</p><p>\r\nYour mass order has been placed.\r\n</p><p><b>\r\nOrder Details details:\r\n</b></p><ul>\r\n<li>\r\nTotal Order  :  {order}\r\n</li>\r\n<li>Transaction ID : {trnx}\r\n</li>\r\n</ul><p>\r\nTime : {date_time}\r\n</p>', 'Hello {name},\r\n\r\nYour mass order has been placed.\r\n\r\nOrder Details details:\r\n\r\nTotal Order  :  {order}\r\nTransaction ID : {trnx}\r\n\r\nTime : {date_time}\r\n\r\n', '{\"trnx\":\"Transaction ID\",\"data_time\":\"date and time\",\"order\":\"total order\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `curr_code` varchar(10) NOT NULL DEFAULT 'USD',
  `curr_sym` varchar(10) NOT NULL DEFAULT '$',
  `logo` varchar(191) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `loader` varchar(191) NOT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `mail_type` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `is_tawk` tinyint(4) NOT NULL DEFAULT 0,
  `tawk_id` varchar(222) DEFAULT NULL,
  `is_verify` tinyint(4) DEFAULT 0,
  `is_cookie` tinyint(4) NOT NULL DEFAULT 0,
  `cookie_btn_text` varchar(255) DEFAULT NULL,
  `cookie_text` text DEFAULT NULL,
  `is_maintenance` tinyint(4) DEFAULT 0,
  `maintenance` text DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT 1,
  `kyc` tinyint(1) NOT NULL DEFAULT 1,
  `sms_notify` tinyint(1) NOT NULL DEFAULT 1,
  `email_notify` tinyint(1) NOT NULL DEFAULT 1,
  `allowed_email` text DEFAULT '',
  `contact_no` varchar(20) DEFAULT NULL,
  `recaptcha` tinyint(1) NOT NULL DEFAULT 0,
  `recaptcha_key` varchar(255) DEFAULT NULL,
  `recaptcha_secret` varchar(255) DEFAULT NULL,
  `fiat_access_key` varchar(255) DEFAULT NULL,
  `crypto_access_key` varchar(255) DEFAULT NULL,
  `cookie` text DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `two_fa` int(11) NOT NULL,
  `trans_status` tinyint(1) NOT NULL DEFAULT 1,
  `max_trans` decimal(18,8) DEFAULT 0.00000000,
  `min_trans` decimal(18,8) DEFAULT 0.00000000,
  `transfer_fix_charge` decimal(10,6) DEFAULT NULL,
  `transfer_percent_charge` decimal(5,2) DEFAULT NULL,
  `api_actions` varchar(255) DEFAULT NULL,
  `cron_auto_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `curr_code`, `curr_sym`, `logo`, `header_logo`, `favicon`, `title`, `loader`, `smtp_host`, `mail_type`, `smtp_port`, `smtp_user`, `smtp_pass`, `mail_encryption`, `from_email`, `from_name`, `theme_color`, `is_tawk`, `tawk_id`, `is_verify`, `is_cookie`, `cookie_btn_text`, `cookie_text`, `is_maintenance`, `maintenance`, `registration`, `kyc`, `sms_notify`, `email_notify`, `allowed_email`, `contact_no`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `fiat_access_key`, `crypto_access_key`, `cookie`, `menu`, `two_fa`, `trans_status`, `max_trans`, `min_trans`, `transfer_fix_charge`, `transfer_percent_charge`, `api_actions`, `cron_auto_status`) VALUES
(1, 'USD', '$', '1571567292logo.png', '12484979091655891347.png', '12076288011655891349.png', 'SMM Pro', '1564224328loading3.gif', 'mail.dev.geniusocean.net', 'php_mailer', '465', 'test@dev.geniusocean.net', 'QQ-cwi{%;F2~', 'ssl', 'geniustest11@gmail.com', 'GeniusTest', 'FF6772', 0, '6124fa49d6e7610a49b1c136/1fds73c17', 0, 0, 'cookie_btn_text', NULL, 0, 'Site Down', 1, 1, 0, 0, NULL, '+88000000000', 0, '6LeMB00fAAAAABm___8W1d2ocsMjC7_8vdRXQ58b', '6LeMB00fAAAAAGB_3ya1UuIpAbikNOXyfPUr8Gey', 'e02535b70998cade1035fbe04e50b8dd', '91b63a445b659202b6449e8611f231f9', '{\"status\":\"1\",\"button_text\":\"Allow Cookie\",\"cookie_text\":\"Our site use cookies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the site and improve your experience.\"}', '{\"Home\":{\"title\":\"Home\",\"dropdown\":\"no\",\"href\":\"\\/\",\"target\":\"self\"},\"About\":{\"title\":\"About\",\"dropdown\":\"yes\",\"href\":\"\\/about\",\"target\":\"self\"},\"Blogs\":{\"title\":\"Blogs\",\"dropdown\":\"yes\",\"href\":\"\\/blogs\",\"target\":\"self\"},\"Contact\":{\"title\":\"Contact\",\"dropdown\":\"yes\",\"href\":\"\\/contact\",\"target\":\"self\"}}', 0, 1, 10000.00000000, 10.00000000, 2.000000, 2.00, '{\"add\":1,\"orders\":1,\"services\":1,\"balance\":1,\"status\":1}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `code`, `file`) VALUES
(12, 1, 'English', 'en', 'en.json'),
(15, 0, 'Hindi', 'hn', 'hn.json'),
(16, 0, 'Bengali', 'bn', 'bn.json'),
(17, 0, 'Spanish', 'es', 'es.json');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT 'Unknown',
  `city` varchar(255) DEFAULT 'Unknown',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `user_id`, `merchant_id`, `ip`, `country`, `city`, `created_at`, `updated_at`) VALUES
(95, NULL, NULL, '103.139.133.12', 'Bangladesh', '', '2024-10-01 14:02:58', '2024-10-01 14:02:58'),
(96, 20, NULL, '103.139.133.12', 'Bangladesh', '', '2024-10-01 14:36:23', '2024-10-01 14:36:23'),
(97, NULL, NULL, '103.139.133.12', 'Bangladesh', '', '2024-10-01 15:00:37', '2024-10-01 15:00:37'),
(98, NULL, NULL, '103.139.133.12', 'Bangladesh', '', '2024-10-02 12:28:57', '2024-10-02 12:28:57'),
(99, NULL, NULL, '91.246.58.169', 'United States', 'New York', '2024-10-04 19:53:46', '2024-10-04 19:53:46'),
(100, NULL, NULL, '91.246.58.169', 'United States', 'New York', '2024-10-04 20:03:22', '2024-10-04 20:03:22'),
(101, NULL, NULL, '103.168.90.10', 'Bangladesh', '', '2024-10-05 21:39:54', '2024-10-05 21:39:54'),
(102, NULL, NULL, '37.111.216.199', 'Bangladesh', 'Dhaka', '2024-10-06 00:21:28', '2024-10-06 00:21:28'),
(103, NULL, NULL, '37.111.223.56', 'Bangladesh', 'Dhaka', '2024-10-06 01:45:37', '2024-10-06 01:45:37'),
(104, NULL, NULL, '146.70.186.206', 'United States', 'New York', '2024-10-06 13:27:28', '2024-10-06 13:27:28'),
(105, NULL, NULL, '103.139.133.12', 'Bangladesh', 'Dhaka', '2024-10-09 00:27:01', '2024-10-09 00:27:01'),
(106, NULL, NULL, '103.217.99.170', 'Bangladesh', 'Feni', '2024-10-09 04:25:38', '2024-10-09 04:25:38'),
(107, NULL, NULL, '37.111.206.199', 'Bangladesh', 'Dhaka', '2024-10-09 05:35:03', '2024-10-09 05:35:03'),
(108, NULL, NULL, '103.131.158.226', 'Bangladesh', '', '2024-10-13 13:23:58', '2024-10-13 13:23:58'),
(109, NULL, NULL, '143.244.60.170', 'United States', 'Chicago', '2024-10-15 10:55:27', '2024-10-15 10:55:27'),
(110, NULL, NULL, '123.253.198.129', 'Bangladesh', 'Khilgaon', '2024-10-15 15:53:59', '2024-10-15 15:53:59'),
(111, NULL, NULL, '141.0.9.111', NULL, NULL, '2024-10-20 23:37:15', '2024-10-20 23:37:15'),
(112, NULL, NULL, '37.111.247.186', 'Bangladesh', '', '2024-10-26 08:30:40', '2024-10-26 08:30:40'),
(113, NULL, NULL, '202.86.216.142', 'Bangladesh', '', '2024-10-28 04:58:08', '2024-10-28 04:58:08'),
(114, NULL, NULL, '103.156.125.130', 'Bangladesh', '', '2024-10-29 08:25:54', '2024-10-29 08:25:54'),
(115, 38, NULL, '103.156.125.130', 'Bangladesh', '', '2024-10-30 10:31:01', '2024-10-30 10:31:01'),
(116, NULL, NULL, '37.111.197.44', 'Bangladesh', 'Dhaka', '2024-10-31 18:10:34', '2024-10-31 18:10:34'),
(117, NULL, NULL, '103.140.166.44', 'Bangladesh', '', '2024-11-03 00:32:43', '2024-11-03 00:32:43'),
(118, NULL, NULL, '58.145.190.251', 'Bangladesh', 'Dhaka', '2024-11-03 09:15:49', '2024-11-03 09:15:49'),
(119, NULL, NULL, '42.0.5.239', 'Bangladesh', 'Netrakona', '2024-11-04 01:05:50', '2024-11-04 01:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_25_053316_create_admins_table', 2),
(6, '2021_12_19_042602_create_site_contents_table', 3),
(7, '2021_12_20_032716_create_currencies_table', 4),
(8, '2021_12_20_041453_create_wallets_table', 5),
(9, '2021_12_20_061743_create_charges_table', 6),
(10, '2021_12_21_041624_create_countries_table', 7),
(11, '2021_12_21_095225_create_transactions_table', 8),
(12, '2021_12_22_044221_create_request_money_table', 9),
(13, '2021_12_23_053336_create_exchange_money_table', 10),
(14, '2021_12_28_083959_create_modules_table', 11),
(15, '2021_12_29_035701_create_vouchers_table', 12),
(16, '2021_12_30_050418_create_withdraws_table', 13),
(17, '2021_12_30_111614_create_withdrawals_table', 14),
(18, '2022_01_02_102323_create_payments_table', 15),
(19, '2022_01_03_032851_create_invoices_table', 16),
(20, '2022_01_03_034414_create_inv_items_table', 17),
(21, '2022_01_04_092638_create_k_y_c_s_table', 18),
(22, '2022_01_04_103906_create_kyc_forms_table', 18),
(23, '2022_01_09_035144_create_escrows_table', 19),
(24, '2022_01_09_064757_create_disputes_table', 20),
(25, '2022_01_16_053729_create_api_creds_table', 21),
(26, '2022_01_16_060854_create_merchant_payments_table', 22),
(27, '2022_01_17_100203_create_permission_tables', 23),
(28, '2022_01_20_050330_create_sms_gateways_table', 24),
(29, '2022_01_30_031517_create_login_logs_table', 25),
(30, '2022_02_02_091116_create_support_tickets_table', 26),
(31, '2022_02_02_091130_create_ticket_messages_table', 26),
(32, '2022_06_19_041103_create_categories_table', 27),
(33, '2022_06_20_033324_create_providers_table', 28),
(34, '2022_06_20_094825_create_services_table', 29),
(35, '2022_06_23_062050_create_orders_table', 30),
(36, '2022_06_27_084543_create_referrals_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(3, 'App\\Models\\Admin', 2),
(3, 'App\\Models\\Admin', 3),
(3, 'App\\Models\\Admin', 5),
(4, 'App\\Models\\Admin', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `api_order_id` int(11) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(18,8) NOT NULL,
  `status` varchar(255) NOT NULL,
  `api_status` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `start_counter` int(11) DEFAULT 0,
  `remains` int(11) DEFAULT 0,
  `api_response` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `category_id`, `service_id`, `user_id`, `api_order_id`, `link`, `qty`, `price`, `status`, `api_status`, `reason`, `start_counter`, `remains`, `api_response`, `created_at`, `updated_at`) VALUES
(10, 3974, 1992, 22, NULL, 'https://vt.tiktok.com/ZS2t1UV7S/', 10000, 17.10000000, 'canceled', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-02 12:43:37', '2024-10-02 13:18:35'),
(11, 3974, 1992, 22, NULL, 'https://vt.tiktok.com/ZS2t1UV7S/', 10000, 17.10000000, 'canceled', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-02 12:49:56', '2024-10-02 13:18:35'),
(12, 3974, 1992, 22, NULL, 'https://www.tiktok.com/@alamin_creation/video/7420379028353207570?is_from_webapp=1&sender_device=pc', 20000, 34.20000000, 'canceled', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-02 13:16:47', '2024-10-02 13:18:35'),
(13, 3974, 1992, 22, NULL, 'https://www.tiktok.com/@rayhankhan9246/video/7421954531442953480', 10000, 17.10000000, 'refunded', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-05 00:46:57', '2024-10-05 00:48:14'),
(14, 3974, 1992, 25, NULL, 'https://www.instagram.com/p/CgWO7-WKCsw/', 1000, 1.71000000, 'processing', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-05 21:41:37', '2024-10-05 21:41:37'),
(15, 3974, 1992, 25, NULL, 'https://www.instagram.com/p/CgWO7-WKCsw/', 10000, 17.10000000, 'processing', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-05 21:41:50', '2024-10-05 21:41:50'),
(16, 3974, 1993, 25, NULL, 'https://www.webtoffee.com/wp-content/uploads/2021/05/Basic-Product_WooCommerce_Sample_CSV.csv', 1000000, 130.00000000, 'processing', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-05 21:42:12', '2024-10-05 21:42:12'),
(17, 3974, 1992, 22, NULL, 'https://www.tiktok.com/@kawsarofficial_123/video/7421471368480361735?is_from_webapp=1&sender_device=pc', 5000, 8.55000000, 'processing', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-07 08:22:48', '2024-10-07 08:22:48'),
(18, 3974, 1992, 22, NULL, 'https://www.tiktok.com/@kawsarofficial_123/video/7421471368480361735?is_from_webapp=1&sender_device=pc', 4000, 6.84000000, 'refunded', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-07 08:23:22', '2024-10-07 08:23:59'),
(19, 3974, 1992, 22, NULL, 'https://www.tiktok.com/@sakibvaixro/video/7422722623848680712?is_from_webapp=1&sender_device=pc', 5000, 8.55000000, 'refunded', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-08 11:49:47', '2024-10-08 11:50:30'),
(20, 3974, 1992, 20, NULL, 'https://www.instagram.com/p/CgWO7-WKCsw/', 2000, 3.42000000, 'processing', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-08 21:44:28', '2024-10-08 21:44:28'),
(21, 3974, 1992, 20, NULL, 'https://www.instagram.com/p/CgWO7-WKCsw/', 250, 0.43000000, 'processing', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-08 21:52:35', '2024-10-08 21:52:35'),
(22, 3974, 1992, 20, NULL, 'https://www.webtoffee.com/wp-content/uploads/2021/05/Basic-Product_WooCommerce_Sample_CSV.csv', 20, 0.03000000, 'processing', NULL, NULL, 0, 0, 'Quantity less than minimal 200', '2024-10-08 21:55:38', '2024-10-08 21:55:38'),
(23, 3974, 1992, 20, NULL, 'https://www.instagram.com/p/CgWO7-WKCsw/', 20, 0.03000000, 'processing', NULL, NULL, 0, 0, 'Quantity less than minimal 200', '2024-10-08 21:56:02', '2024-10-08 21:56:02'),
(24, 3974, 1993, 20, NULL, 'https://www.tiktok.com/@shantii_rehman/video/7412619521640434962?is_from_webapp=1&sender_device=pc', 1000, 0.13000000, 'processing', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-09 00:32:26', '2024-10-09 00:32:26'),
(25, 3974, 1992, 20, NULL, 'https://www.tiktok.com/@arohi_mim/video/7418497452862426386?is_from_webapp=1&sender_device=pc', 5000, 8.55000000, 'refunded', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-13 04:38:52', '2024-10-13 04:39:36'),
(26, 3974, 1992, 20, NULL, 'https://www.instagram.com/p/CgWO7-WKCsw/', 1000, 1.71000000, 'processing', NULL, NULL, 0, 0, 'Not enough funds on balance', '2024-10-13 21:21:37', '2024-10-13 21:21:37'),
(27, 3974, 1992, 20, 201698, 'https://www.instagram.com/p/CgWO7-WKCsw/', 1000, 1.71000000, 'processing', NULL, NULL, 0, 0, 'Order ID : 201698', '2024-10-14 05:38:41', '2024-10-14 05:38:41'),
(28, 3974, 1993, 20, 201752, 'https://www.facebook.com/', 1000, 0.13000000, 'processing', NULL, NULL, 0, 0, 'Order ID : 201752', '2024-10-15 01:40:08', '2024-10-15 01:40:08'),
(29, 3974, 1993, 20, 201753, 'https://www.tiktok.com/@afra_mimo_/video/7417172351911005448?is_from_webapp=1&sender_device=pc', 1000, 0.13000000, 'processing', NULL, NULL, 0, 0, 'Order ID : 201753', '2024-10-15 01:40:36', '2024-10-15 01:40:36'),
(30, 3974, 1993, 20, 202676, 'https://www.tiktok.com/@rayhankhan9246/video/7430132452259007752', 2000, 0.26000000, 'processing', NULL, NULL, 0, 0, 'Order ID : 202676', '2024-10-28 18:19:00', '2024-10-28 18:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `lang`) VALUES
(13, 'About', 'about', '<p style=\"text-align:justify;\">SMM Pro is a complete solution for an Social Media Marketing Platform. Users can use this system to get all the social media marketing opportunities. Anyone can register for these marketing services, and This System includes almost everything you need to make an online social media marketing platform, you can use this system as an API also.  API system in this script is straightforward to use and you will have full source code without any kind of encryption. So, you can modify or extend it according to your needs. SMM Pro comes with different kinds of Social media marketing features, also it comes with mass order, standard deposit system, balance transfer,  support multiple languages, multiple currencies, Two Factor authentication and advanced referrals system. Also, the User will appropriately get all the transaction details. Everything is dynamic and can be set up from the admin panel. It has a strong SQL injection protection system that will keep this system from hackers. This script is perfectly created with lots of known online payment gateways to make the payment easier, flexible, and comfortable.</p>\n\n<p style=\"text-align:justify;\">SMM Pro is easily installable and you can manage this script more easily with user-friendly features and an interactive interface with a fully responsive design. It\'s designed for everyone, whether is the user technical or non-technical. Anyone can interact with the interface easily and comfortably. The SMM Pro will make you Successful for sure in the Social Media marketing business arena as well as it will save your Marketing cost also for this one you don’t need any Coding Skills. SMM Pro may assist you to handle unlimited users, payments, accept a good number of payment gateways, Supports Multiple Languages, and Multiple Currencies. You can easily manage which currency will be accepted or not, Also you can set the system base currency. If you are looking for the Best Online Social Media Marketing script which will grow your business to the next level then SMM Pro will be the right choice for you. It takes only a few minutes to set up your website with our system. So, Let’s Start Your own Social Media Marketing platform with SMM Pro. It gives you the best satisfaction to use Social Media Marketing System. SMM Pro is the 100% Completed and Updated System and we promises to keep it updated. Its really easy to use, easy to install and easy to update. This Systems comes with different kinds of Social media marketing features, also it comes with mass order, standard deposit system, balance transfer,  support multiple languages, multiple currencies, Two Factor authentication and advanced referrals system. so, if you are looking for the Best Social Media Marketing script which will grow your business to the next level then SMM Pro will be the right choice for you. It takes only a few minutes to set up your website with our system.</p>\n\n<div><br></div>\n\n<p><br></p>', 'en'),
(14, 'Announcement', 'announcement', '<p><span style=\"font-size:14px;font-weight:normal;\">This script is perfectly created with lots of known online payment gateways to make the payment easier, flexible, and comfortable. SMM Pro is easily installable and you can manage this script more easily with user-friendly features and an interactive interface with a fully responsive design. It\'s designed for everyone, whether is the user technical or non-technical. Anyone can interact with the interface easily and comfortably. </span><span style=\"font-size:14px;font-weight:normal;\"><br></span><span style=\"font-size:14px;font-weight:normal;\">The SMM Pro will make you Successful for sure in the Social Media marketing business arena as well as it will save your Marketing cost also for this one you don’t need any Coding Skills. SMM Pro may assist you to handle unlimited users, payments, accept a good number of payment gateways, Supports Multiple Languages, and Multiple Currencies. You can easily manage which currency will be accepted or not, Also you can set the system base currency.      </span></p>\n\n<div><br></div>', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(20,10) DEFAULT NULL,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '0',
  `checkout` int(191) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `subscription` int(191) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `fixed_charge`, `percent_charge`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `status`, `subscription`) VALUES
(2, '(5 - 6 days)', 'Mobile Moneyy', 5.0000000000, 2.00, '<b>Payment Number: </b>69234324233423', 'Mobile Money', 'manual', NULL, 'manual', '[\"4\"]', 1, 1, 1),
(7, NULL, NULL, NULL, NULL, NULL, 'Mercadopagoe', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"text\":\"Pay Via MercadoPago\",\"sandbox_check\":1}', 'mercadopago', '[\"1\"]', 1, 1, 1),
(8, NULL, NULL, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"text\":\"Pay Via Authorize.Net\",\"sandbox_check\":1}', 'authorize', '[\"1\",\"4\"]', 1, 1, 1),
(9, NULL, NULL, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"10\"]', 1, 1, 1),
(11, NULL, NULL, NULL, NULL, NULL, 'Paytmm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your Paytm account.\",\"sandbox_check\":1}', 'paytm', '[\"1\"]', 1, 1, 1),
(12, NULL, NULL, NULL, NULL, NULL, 'Paystackk', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"1\",\"13\"]', 1, 1, 1),
(13, NULL, NULL, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"text\":\"Pay via your Instamojo account.\",\"sandbox_check\":1}', 'instamojo', '[\"1\",\"10\"]', 1, 1, 1),
(14, NULL, NULL, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\",\"4\"]', 1, 1, 1),
(15, NULL, NULL, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":0,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\",\"4\"]', 1, 1, 1),
(19, '5-6 days', 'Wire Bank', 5.0000000000, 2.00, '<p>Wire bank&nbsp;</p><p>ACC NO. : 268653464646546465.</p><p>Deep branch</p>', 'Wire Bank', 'manual', NULL, 'manual', '[\"6\"]', 1, 1, 1),
(20, NULL, NULL, NULL, NULL, NULL, 'CoinGate', 'automatic', '{\"secret_string\":\"B46P1XMf388193hz-sqrDJPhNprKy8xaZ3Sb2dt2\",\"text\":\"Pay via your Coin gate account.\"}', 'coingate', '[\"9\",\"1\"]', 1, 1, 1),
(21, 'testt', 'TestTT', 12.0000000000, 2.00, '<p>dfdfsd</p>', 'Test', 'manual', NULL, 'manual', '[\"6\"]', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(209, 'dashboard info', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(211, 'transactions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(212, 'manage user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(213, 'edit user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(214, 'update user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(215, 'user balance modify', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(216, 'user login', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(217, 'user login logs', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(224, 'manage currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(225, 'add currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(226, 'edit currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(227, 'update currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(228, 'update currency api', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(232, 'manage country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(233, 'add country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(234, 'update country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(254, 'manage role', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(255, 'create role', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(256, 'edit permissions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(257, 'update permissions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(258, 'manage staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(259, 'add staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(260, 'update staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(261, 'general setting', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(262, 'general settings update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(263, 'general settings logo favicon', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(264, 'general settings status update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(265, 'menu builder', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(266, 'maintainance', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(267, 'email templates', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(268, 'template edit', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(269, 'template update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(270, 'email config', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(271, 'group email', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(272, 'sms gateways', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(273, 'sms gateway edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(274, 'sms gateway update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(275, 'sms templates', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(276, 'sms template edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(277, 'sms template update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(278, 'site contents', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(279, 'edit site contents', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(280, 'site content update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(281, 'site sub-content update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(282, 'section status update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(293, 'manage payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(294, 'add payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(295, 'store payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(296, 'edit payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(297, 'update payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(298, 'manage deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(299, 'approve deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(300, 'reject deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(301, 'manage page', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(302, 'page create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(303, 'page store', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(304, 'page edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(305, 'page update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(306, 'page remove', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(307, 'manage cookie', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(308, 'update cookie', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(309, 'manage blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(310, 'store blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(311, 'update blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(312, 'manage blog', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(313, 'blog create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(314, 'blog store', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(315, 'blog edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(316, 'blog update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(317, 'blog destroy', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(318, 'manage language', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(319, 'manage ticket', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(320, 'reply ticket', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(321, 'seo settings', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(322, 'manage category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(323, 'store category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(324, 'update category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(325, 'system update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(340, 'manage provider', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(341, 'add provider', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(342, 'edit provider', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(343, 'manage transfer', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(344, 'manage referral', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(345, 'api actions', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(346, 'manage order', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(347, 'edit order', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(348, 'delete order', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(349, 'order multi action', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(350, 'order cron job', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(351, 'manage service', 'admin', '2022-07-05 00:43:18', '2022-07-05 00:43:18'),
(352, 'import service', 'admin', '2022-07-05 00:43:19', '2022-07-05 00:43:19'),
(353, 'edit service', 'admin', '2022-07-05 02:10:55', '2022-07-05 02:10:55'),
(354, 'add service', 'admin', '2022-07-05 02:10:55', '2022-07-05 02:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `api_url` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `balance` decimal(18,8) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`, `api_url`, `api_key`, `balance`, `status`, `created_at`, `updated_at`) VALUES
(10, 'bd', 'https://bdlikefollower.com/api/v2', 'd12b6c3aa44914e7de072ad5b8ac81b3', NULL, 1, '2024-10-02 12:06:19', '2024-10-02 12:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL,
  `bonus_amount` decimal(7,2) NOT NULL DEFAULT 0.00,
  `bonus_count` int(11) DEFAULT NULL,
  `get_bonus` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `status`, `type`, `bonus_amount`, `bonus_count`, `get_bonus`, `created_at`, `updated_at`) VALUES
(1, 1, 'deposit', 5.00, 10, NULL, '2022-06-27 08:49:41', '2022-07-20 00:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2022-01-17 04:25:50', '2022-01-17 04:25:50'),
(3, 'moderator', 'admin', '2022-01-17 05:23:47', '2022-01-17 05:23:47'),
(4, 'Ticket Handler', 'admin', '2022-02-16 23:55:38', '2022-02-16 23:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(209, 1),
(211, 1),
(211, 3),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(224, 1),
(224, 3),
(225, 1),
(225, 3),
(226, 1),
(227, 1),
(228, 1),
(228, 3),
(232, 1),
(233, 1),
(234, 1),
(254, 1),
(254, 3),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(259, 3),
(260, 1),
(260, 3),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(271, 3),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(298, 3),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(302, 3),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(352, 3),
(353, 1),
(354, 1),
(354, 3);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `title`, `meta_tag`, `meta_description`, `meta_image`) VALUES
(1, 'SMM Pro', 'smm,marketing,social marketing', 'SMM Pro- Advanced Social Media Marketing CMS', '16069484521639895038.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(18,8) NOT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `provider_price` varchar(255) DEFAULT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `category_id`, `price`, `min_amount`, `max_amount`, `type`, `status`, `provider_id`, `provider_price`, `service_id`, `description`, `created_at`, `updated_at`) VALUES
(1992, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', 3974, 1.71000000, 20.00000000, 500000.00000000, '1', 1, 10, '1.552', 3639, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', '2024-10-02 12:25:07', '2024-10-08 21:55:49'),
(1993, 'TikTok - Views ~ 100m ~ 10m/day ~ Instant ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟', 3974, 0.13222000, 1000.00000000, 1000000000.00000000, '1', 1, 10, '0.1202', 2834, 'TikTok - Views ~ 100m ~ 10m/day ~ Instant ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟', '2024-10-02 12:44:28', '2024-10-02 12:44:28'),
(1994, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', 3974, 1.70720000, 200.00000000, 500000.00000000, '1', 1, 10, '1.552', 3639, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', '2024-10-27 11:20:00', '2024-10-27 11:20:00'),
(1995, 'TikTok Followers [ Max 10M ] | 𝐁𝐨𝐭 𝐏𝐫𝐨𝐟𝐢𝐥𝐞𝐬 | Cancel Enable | 30 Days ♻️| Day 100K⚡', 3974, 1.66012000, 200.00000000, 10000000.00000000, '1', 1, 10, '1.5092', 3698, 'TikTok Followers [ Max 10M ] | 𝐁𝐨𝐭 𝐏𝐫𝐨𝐟𝐢𝐥𝐞𝐬 | Cancel Enable | 30 Days ♻️| Day 100K⚡', '2024-10-27 11:20:00', '2024-10-27 11:20:00'),
(1996, 'TikTok Followers [ Max 10M ] | 𝐁𝐨𝐭 𝐏𝐫𝐨𝐟𝐢𝐥𝐞𝐬 | Cancel Enable | 30 Days ♻️| Day 100K⚡', 3974, 1.66012000, 200.00000000, 10000000.00000000, '1', 1, 10, '1.5092', 3698, 'TikTok Followers [ Max 10M ] | 𝐁𝐨𝐭 𝐏𝐫𝐨𝐟𝐢𝐥𝐞𝐬 | Cancel Enable | 30 Days ♻️| Day 100K⚡', '2024-10-27 11:22:33', '2024-10-27 11:22:33'),
(1997, 'TikTok Followers [ Max 100K ] | HQ | Start: 0-5 Minutes | UltraFast | Day 25K ⚡', 3974, 4.69568000, 300.00000000, 500000.00000000, '1', 1, 10, '4.2688', 3609, 'TikTok Followers [ Max 100K ] | HQ | Start: 0-5 Minutes | UltraFast | Day 25K ⚡', '2024-10-27 11:22:33', '2024-10-27 11:22:33'),
(1998, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', 3974, 6.20800000, 200.00000000, 500000.00000000, '1', 1, 10, '1.552', 3639, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', '2024-10-28 18:29:59', '2024-10-28 18:29:59'),
(1999, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', 3974, 6.20800000, 200.00000000, 500000.00000000, '1', 1, 10, '1.552', 3639, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', '2024-10-28 18:31:59', '2024-10-28 18:31:59'),
(2000, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', 3975, 9.31200000, 200.00000000, 500000.00000000, '1', 1, 10, '1.552', 3639, 'TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days', '2024-10-28 18:33:07', '2024-10-28 18:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `site_contents`
--

CREATE TABLE `site_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `sub_content` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_contents`
--

INSERT INTO `site_contents` (`id`, `name`, `slug`, `content`, `sub_content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner', 'banner', '{\"title\":\"Revolutionary Marketing Platform\",\"heading\":\"SMM Pro- Destination for SMM Services\",\"sub_heading\":\"We help music artists and influencers grow their fanbase and get thousands of new listeners, followers. Promote your music and fanbase Now and let\\u00b4s Go VIRAL!\",\"button_1_name\":\"Get Start\",\"button_1_url\":\"https:\\/\\/demo.royalscripts.com\\/smm_king\",\"image_size\":\"1030x930\",\"image\":\"7585939381655876695.png\"}', NULL, 1, NULL, '2022-09-06 16:10:25'),
(2, 'About', 'about', '{\"title\":\"Your First Step To Marketing\",\"heading\":\"Let us help you build your online presence quickly and efficiently!\",\"short_details\":\"SMM Pro is a complete solution for an Social Media Marketing Platform. Users can use this system to get all the social media marketing opportunities. Anyone can register for these marketing services, and This System includes almost everything you need to make an online social media marketing platform, you can use this system as an API also.  API system in this script is straightforward to use and you will have full source code without any kind of encryption. So, you can modify or extend it according to your needs.\",\"button_url\":\"https:\\/\\/demo.royalscripts.com\\/smm_king\",\"button_name\":\"Get Start\",\"image_size\":\"540x683\",\"image\":\"719310741655891725.png\"}', '[{\"title\":\"Active Users\",\"count\":\"58k\",\"image\":\"10129844041655877830.png\",\"image_size\":\"60x50\"},{\"title\":\"Total Companies\",\"count\":\"50k\",\"image\":\"6406956591655877886.png\",\"image_size\":\"60x50\"},{\"title\":\"Campaign Posted\",\"count\":\"238m\",\"image\":\"4492214691655877905.png\",\"image_size\":\"60x50\"}]', 1, NULL, '2022-09-06 15:48:52'),
(3, 'Services', 'service', '{\"title\":\"SMM Services We Provide\",\"heading\":\"Best SMM Services We are Providing Since 2004\",\"sub_heading\":\"So, Let\\u2019s create big Fanbase with SMM Pro\",\"image\":\"4466868371655878053.png\"}', '[{\"icon\":\"fab fa-pinterest-p\",\"title\":\"Pinterest\",\"details\":\"Beatae distinctio, aliquid aliquam, non dolores sapiente commodi libero iure, quisquam.\"},{\"icon\":\"fab fa-facebook-f\",\"title\":\"Facebook\",\"details\":\"Beatae distinctio, aliquid aliquam, non dolores sapiente commodi libero iure, quisquam.\"},{\"icon\":\"fab fa-twitter\",\"title\":\"Twitter\",\"details\":\"Beatae distinctio, aliquid aliquam, non dolores sapiente commodi libero iure, quisquam.\"},{\"icon\":\"fab fa-instagram\",\"title\":\"Instagram\",\"details\":\"Beatae distinctio, aliquid aliquam, non dolores sapiente commodi libero iure, quisquam.\"},{\"icon\":\"fab fa-skype\",\"title\":\"Skype\",\"details\":\"Beatae distinctio, aliquid aliquam, non dolores sapiente commodi libero iure, quisquam.\"},{\"icon\":\"fab fa-youtube\",\"title\":\"Youtube\",\"details\":\"Beatae distinctio, aliquid aliquam, non dolores sapiente commodi libero iure, quisquam.\"},{\"icon\":\"fab fa-tumblr\",\"title\":\"Tumblr\",\"details\":\"Beatae distinctio, aliquid aliquam, non dolores sapiente commodi libero iure, quisquam.\"},{\"icon\":\"fab fa-behance\",\"title\":\"Behance\",\"details\":\"Beatae distinctio, aliquid aliquam, non dolores sapiente commodi libero iure, quisquam.\"}]', 1, NULL, '2022-09-06 15:50:40'),
(4, 'Acknowledge', 'acknowledge', '{\"title\":\"Why Our Services Is The Best ?\",\"heading\":\"Reasons why you should try our system\",\"button_url\":\"https:\\/\\/demo.royalscripts.com\\/smm_king\",\"button_name\":\"Get Start\",\"short_details\":\"The SMM Pro will make you Successful for sure in the Social Media marketing business arena as well as it will save your Marketing cost also for this one you don\\u2019t need any Coding Skills. SMM Pro may assist you to handle unlimited users, payments, accept a good number of payment gateways, Supports Multiple Languages, and Multiple Currencies. You can easily manage which currency will be accepted or not, Also you can set the system base currency.\",\"image\":\"8526973391655879301.png\"}', NULL, 1, NULL, '2022-09-06 15:52:56'),
(5, 'Counter', 'counter', NULL, '[{\"icon\":\"fas fa-users\",\"title\":\"Satisfied Customers\",\"counter\":\"560+\"},{\"icon\":\"fab fa-r-project\",\"title\":\"Completed Projects\",\"counter\":\"240+\"},{\"icon\":\"fas fa-user-friends\",\"title\":\"Team Member\",\"counter\":\"60\"},{\"icon\":\"fas fa-brain\",\"title\":\"Years Experince\",\"counter\":\"12+\"}]', 1, NULL, '2022-06-22 00:32:30'),
(6, 'Testimonial', 'testimonial', '{\"title\":\"Testimonials\",\"heading\":\"Our Happy Clients Awesome Reviews\"}', '[{\"image_size\":\"120x120\",\"name\":\"Peter Parker\",\"quote\":\"SMM Pro is one smartest system from where we can get all the social media marketing suggestion, guideline and services.\",\"image\":\"16507499451655891753.png\"},{\"image_size\":\"120x120\",\"name\":\"John Doe\",\"quote\":\"SMM Pro is one smartest system from where we can get all the social media marketing suggestion, guideline and services.\",\"image\":\"17285127581655891758.png\"},{\"image_size\":\"120x120\",\"name\":\"Stephen Rodrick\",\"quote\":\"SMM Pro is one smartest system from where we can get all the social media marketing suggestion, guideline and services.\",\"image\":\"18432751281655891764.png\"}]', 1, NULL, '2022-09-06 15:54:52'),
(7, 'FAQs\r\n', 'faq', '{\"title\":\"FAQs\",\"heading\":\"Frequently Asked Questions\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\",\"image\":\"3045120841655880168.png\",\"image_size\":\"600x755\"}', '[{\"question\":\"Why i choose SMM Pro?\",\"answer\":\"SMM Pro is a complete solution for an Social Media Marketing Platform. Users can use this system to get all the social media marketing opportunities. Anyone can register for these marketing services, and This System includes almost everything you need to make an online social media marketing platform, you can use this system as an API also.  API system in this script is straightforward to use and you will have full source code without any kind of encryption. So, you can modify or extend it according to your needs.\"},{\"question\":\"is this System secure?\",\"answer\":\"SMM Pro comes with different kinds of Social media marketing features, also it comes with mass order, standard deposit system, balance transfer,  support multiple languages, multiple currencies, Two Factor authentication and advanced referrals system. Also, the User will appropriately get all the transaction details. Everything is dynamic and can be set up from the admin panel. It has a strong SQL injection protection system that will keep this system from hackers.\"},{\"question\":\"How to make Deposit in SMM Pro?\",\"answer\":\"For making a deposit users have to be registered, if not then there is an option for get registering, after that and all the verification users will get a login form, putting valid information user will get the dashboard.\\r\\n\\r\\nFor the deposit, users will get a good number of payment methods, and it\'s a user-friendly and easy interface to make deposits.\"},{\"question\":\"is this System support 2FA?\",\"answer\":\"Yes, SMM Pro supported Two Factor Authentication, Not only that it supports multiple languages and multiple currency.\"},{\"question\":\"Can i use this system as a API?\",\"answer\":\"Yes, you can use this system as a API, and its really easy to use.\"},{\"question\":\"Referral System available?\",\"answer\":\"This system provide two types of referral system and control over it.\"}]', 1, NULL, '2022-09-06 16:01:18'),
(8, 'How to', 'how', '{\"title\":\"Strategy\",\"heading\":\"How To Get Started\",\"sub_heading\":\"So, if you want to with Social Media Marketing King, lets start and learn how to start your branding with us\"}', '[{\"icon\":\"fas fa-wallet\",\"title\":\"Choose Package\",\"details\":\"First of all, choose an package means what type of packages you want.\"},{\"icon\":\"fas fa-money-bill-wave-alt\",\"title\":\"Enter Details\",\"details\":\"Then read the details, if you want to get it move on and buy the services.\"},{\"icon\":\"fas fa-book-reader\",\"title\":\"Wait for Results\",\"details\":\"After successfully buy the services, SMM Pro started work, now wait for best result.\"}]', 1, NULL, '2022-09-06 16:05:42'),
(9, 'Blog', 'blog', '{\"title\":\"Blog Posts\",\"heading\":\"Our Latest News & Tips\",\"sub_heading\":\"Read Our latest Top news and All the important announcement from this section, also be connected with our updates\"}', NULL, 1, NULL, '2022-09-06 16:06:46'),
(11, 'Social Links', 'social', NULL, '[{\"icon\":\"fab fa-facebook-f\",\"url\":\"https:\\/\\/facebook.com\"},{\"icon\":\"fab fa-twitter\",\"url\":\"https:\\/\\/twiiter.com\"},{\"icon\":\"fab fa-instagram\",\"url\":\"https:\\/\\/instagram.com\"},{\"icon\":\"fab fa-linkedin-in\",\"url\":\"https:\\/\\/linkedin.com\"},{\"icon\":\"fab fa-youtube\",\"url\":\"https:\\/\\/youtube.com\"}]', 1, NULL, '2022-02-13 02:49:01'),
(12, 'Policies And Terms', 'policies', NULL, '[{\"lang\":\"en\",\"title\":\"Privacy\",\"description\":\"<p><br><\\/p>\"},{\"lang\":\"en\",\"title\":\"Terms and Condition\",\"description\":\"<p>Write you terms and condition?<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><br><\\/p><p>Write you terms and condition?<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p><p>Write you terms and condition?<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p><p>Write you terms and condition?<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><br><\\/p>\"},{\"lang\":\"en\",\"title\":\"Refund Policy\",\"description\":\"<p>Our Refund Policy<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><br><\\/p><p>Our Refund Policy<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p><p>Our Refund Policy<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p><p>Our Refund Policy<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p>\"},{\"lang\":\"bn\",\"title\":\"Privacy\",\"description\":\"<p><br><\\/p><p>Our privacy basic<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p><p>Our privacy basic<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p><p>Our privacy basic<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p><p>Our privacy basic<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p><p>Our privacy basic<\\/p>\\n\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\">it is simply dummy text of the printing and typesetting industry. is has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of privacy.<\\/p>\"}]', 1, NULL, '2022-09-22 17:58:33'),
(13, 'Contact Us', 'contact', '{\"title\":\"Contact Us\",\"heading\":\"Get in Touch\",\"sub_heading\":\"Contact with us whenever you faces any difficulties or issues also let us know for system update you want, we are always here to serve you.\",\"phone\":\"+1 (631) 593-5927\",\"email\":\"smmking@gmail.com\",\"address\":\"7058 Najrul Islam Road, Dhaka.\"}', NULL, 1, NULL, '2022-09-06 16:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `name`, `config`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Twilio', '{\r\n\"sid\":\"\",\"token\":\"\",\"from_number\":\"\"\r\n}', 0, NULL, '2022-01-19 23:56:26'),
(2, 'Nexmo', '{\"api_key\":\"f0842415\",\"api_secret\":\"5FqSGPgFIKbf8nDr\"}', 1, NULL, '2022-01-20 02:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_email` varchar(255) DEFAULT NULL,
  `guest_name` varchar(255) DEFAULT NULL,
  `ticket_num` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = replied. ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `guest_email`, `guest_name`, `ticket_num`, `subject`, `status`, `created_at`, `updated_at`) VALUES
(14, 23, NULL, NULL, 'TKT91738663', 'Add founds', 0, '2024-10-04 19:56:26', '2024-10-04 19:56:26'),
(15, 24, NULL, NULL, 'TKT48119137', 'Add founds', 0, '2024-10-04 20:07:01', '2024-10-04 20:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_num` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `ticket_id`, `ticket_num`, `user_id`, `admin_id`, `message`, `file`, `created_at`, `updated_at`) VALUES
(43, 15, 'TKT48119137', 24, NULL, '589 - TikTok Likes [Max 500K] [Cancel Enabled] [Speed: Day 50k/hour] [Refill: No] - $0.027 per 1000', NULL, '2024-10-04 20:08:24', '2024-10-04 20:08:24'),
(44, 15, 'TKT48119137', 24, NULL, '340 - TikTok Followers [Max 10M] [Speed: Day 50k] [Refill: No] - $0.1568 per 1000', NULL, '2024-10-04 20:08:45', '2024-10-04 20:08:45'),
(45, 15, 'TKT48119137', 24, NULL, '🏦 𝗣𝗮𝘆𝗺𝗲𝗻𝘁 𝗠𝗲𝘁𝗵𝗼𝗱 : 𝐁𝐢𝐧𝐚𝐧𝐜𝐞 𝐏𝐚𝐲 | 𝐏𝐞𝐫𝐟𝐞𝐜𝐭 𝐌𝐨𝐧𝐞𝐲 | 𝐏𝐚𝐲𝐞𝐞𝐫\r\n\r\n‼️ Deposit Gift : 3% On 10$ | 5% On 50$ | 8% On 1000$\r\n\r\nhttps://qualitypanel.org', NULL, '2024-10-04 20:09:03', '2024-10-04 20:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trnx` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `charge` decimal(20,10) NOT NULL DEFAULT 0.0000000000,
  `amount` decimal(20,10) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `details` varchar(255) NOT NULL,
  `bonus_from` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `trnx`, `user_id`, `charge`, `amount`, `remark`, `type`, `details`, `bonus_from`, `created_at`, `updated_at`) VALUES
(168, 'BADOSCVIR7WV', 22, 0.0000000000, 10.0000000000, 'add_balance', '+', 'Balance added by system', NULL, '2024-10-02 12:40:25', '2024-10-02 12:40:25'),
(169, '3GOQOKQ4PRTK', 22, 0.0000000000, 8.5500000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 5000', NULL, '2024-10-02 12:42:04', '2024-10-02 12:42:04'),
(170, 'UZG85COGSDNU', 22, 0.0000000000, 100.0000000000, 'add_balance', '+', 'Balance added by system', NULL, '2024-10-02 12:43:21', '2024-10-02 12:43:21'),
(171, '8XST8ZISSNSJ', 22, 0.0000000000, 17.1000000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 10000', NULL, '2024-10-02 12:43:37', '2024-10-02 12:43:37'),
(172, 'WHLCQTCCPW8G', 22, 0.0000000000, 17.1000000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 10000', NULL, '2024-10-02 12:49:56', '2024-10-02 12:49:56'),
(173, 'XPBACSZUIY8R', 22, 0.0000000000, 34.2000000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 20000', NULL, '2024-10-02 13:16:47', '2024-10-02 13:16:47'),
(174, 'E9MQS8YOMXSH', 22, 0.0000000000, 17.1000000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 10000', NULL, '2024-10-05 00:46:57', '2024-10-05 00:46:57'),
(175, '9VKH6ZSKV4GL', 25, 0.0000000000, 10000.0000000000, 'deposit', '+', 'Deposit balance to wallet :', NULL, '2024-10-05 21:41:19', '2024-10-05 21:41:19'),
(176, 'PYOS6O5LO5GN', 25, 0.0000000000, 1.7100000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 1000', NULL, '2024-10-05 21:41:37', '2024-10-05 21:41:37'),
(177, 'WFLKP8DCMGH9', 25, 0.0000000000, 17.1000000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 10000', NULL, '2024-10-05 21:41:50', '2024-10-05 21:41:50'),
(178, 'UKV7JXR57SI4', 25, 0.0000000000, 130.0000000000, 'order_placed', '-', 'Placing order for TikTok - Views ~ 100m ~ 10m/day ~ Instant ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 #QTY : 1000000', NULL, '2024-10-05 21:42:12', '2024-10-05 21:42:12'),
(179, 'ZIVHHN9HFZJS', 22, 0.0000000000, 8.5500000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 5000', NULL, '2024-10-07 08:22:48', '2024-10-07 08:22:48'),
(180, 'XZH2UJZIPTBH', 22, 0.0000000000, 6.8400000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 4000', NULL, '2024-10-07 08:23:22', '2024-10-07 08:23:22'),
(181, 'QPXPXTKVXW0X', 22, 0.0000000000, 20.0000000000, 'add_balance', '+', 'Balance added by system', NULL, '2024-10-08 11:46:59', '2024-10-08 11:46:59'),
(182, 'LOXWR8WKXWYK', 22, 0.0000000000, 8.5500000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 5000', NULL, '2024-10-08 11:49:47', '2024-10-08 11:49:47'),
(183, '38ZBZP6QUNCH', 20, 0.0000000000, 10.0000000000, 'add_balance', '+', 'Balance added by system', NULL, '2024-10-08 21:44:16', '2024-10-08 21:44:16'),
(184, 'SFZ6A2CSEWNR', 20, 0.0000000000, 3.4200000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 2000', NULL, '2024-10-08 21:44:28', '2024-10-08 21:44:28'),
(185, 'NCUR4VDKKUDE', 20, 0.0000000000, 0.4300000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 250', NULL, '2024-10-08 21:52:35', '2024-10-08 21:52:35'),
(186, 'IJ4A352L8B2Y', 20, 0.0000000000, 0.0300000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 20', NULL, '2024-10-08 21:55:38', '2024-10-08 21:55:38'),
(187, 'BYYBLF4H85RN', 20, 0.0000000000, 0.0300000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 20', NULL, '2024-10-08 21:56:02', '2024-10-08 21:56:02'),
(188, 'RDEPO7ZFTIRK', 20, 0.0000000000, 0.1300000000, 'order_placed', '-', 'Placing order for TikTok - Views ~ 100m ~ 10m/day ~ Instant ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 #QTY : 1000', NULL, '2024-10-09 00:32:26', '2024-10-09 00:32:26'),
(189, 'ZTADAOHANZOW', 20, 0.0000000000, 20.0000000000, 'add_balance', '+', 'Balance added by system', NULL, '2024-10-13 04:34:02', '2024-10-13 04:34:02'),
(190, 'A7H4JURLZPMS', 20, 0.0000000000, 8.5500000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 5000', NULL, '2024-10-13 04:38:52', '2024-10-13 04:38:52'),
(191, 'HEI9RKNGX85F', 20, 0.0000000000, 1.7100000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 1000', NULL, '2024-10-13 21:21:37', '2024-10-13 21:21:37'),
(192, '993ZKAWIRDEE', 20, 0.0000000000, 1.7100000000, 'order_placed', '-', 'Placing order for TikTok Likes | Sᴜᴘᴇʀ Fᴀsᴛ | 𝕽eal Quality | 30 Day 𝗥𝗲𝗳𝗶𝗹𝗹 ♻️⚡ 5K-10K/Days #QTY : 1000', NULL, '2024-10-14 05:38:41', '2024-10-14 05:38:41'),
(193, 'OOMHQXWXPWSF', 20, 0.0000000000, 0.1300000000, 'order_placed', '-', 'Placing order for TikTok - Views ~ 100m ~ 10m/day ~ Instant ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 #QTY : 1000', NULL, '2024-10-15 01:40:08', '2024-10-15 01:40:08'),
(194, 'EEGU20OLAUHA', 20, 0.0000000000, 0.1300000000, 'order_placed', '-', 'Placing order for TikTok - Views ~ 100m ~ 10m/day ~ Instant ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 #QTY : 1000', NULL, '2024-10-15 01:40:36', '2024-10-15 01:40:36'),
(195, '9QFMGD54TDU1', 20, 0.0000000000, 0.2600000000, 'order_placed', '-', 'Placing order for TikTok - Views ~ 100m ~ 10m/day ~ Instant ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 #QTY : 2000', NULL, '2024-10-28 18:19:00', '2024-10-28 18:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `balance` decimal(20,10) NOT NULL DEFAULT 0.0000000000,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified` tinyint(1) DEFAULT 0,
  `verification_link` varchar(255) DEFAULT NULL,
  `verify_code` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `kyc_status` tinyint(1) DEFAULT 0,
  `kyc_info` text DEFAULT NULL,
  `kyc_reject_reason` varchar(255) DEFAULT NULL,
  `two_fa_status` tinyint(1) NOT NULL DEFAULT 0,
  `two_fa` tinyint(1) NOT NULL DEFAULT 0,
  `two_fa_code` int(10) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `referred_by`, `photo`, `phone`, `country`, `city`, `address`, `zip`, `balance`, `status`, `email_verified`, `verification_link`, `verify_code`, `password`, `remember_token`, `kyc_status`, `kyc_info`, `kyc_reject_reason`, `two_fa_status`, `two_fa`, `two_fa_code`, `api_key`, `created_at`, `updated_at`) VALUES
(20, 'nazmul', 'shifat2003', 'toshifat1971@gmail.com', NULL, NULL, '+88001631977414', 'Bangladesh', NULL, 'jssis', NULL, 13.4700000000, 1, 1, NULL, NULL, '$2y$10$yaGPBryczx7rKZkunwwgkOrERl8eXA7nzAeS3OO2pxTrgpw9DeRfu', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-01 14:02:57', '2024-10-28 18:19:00'),
(21, 'ertyhj', 'poiuytr', 'mdmonir.miazee@gmail.com', NULL, NULL, '+880444444444444447', 'Bangladesh', NULL, 'hjuggygygy', NULL, 0.0000000000, 1, 1, NULL, NULL, '$2y$10$0Q8MbgaCYGaXUjk0bRNc8OGl9tek9khhIN5TKRYCRxM/lvFjl7xz.', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-01 15:00:36', '2024-10-02 12:36:34'),
(22, 'Jdjhdh', 'shifat00', 'toshifat19@gmail.com', NULL, NULL, '+880038737464', 'Bangladesh', NULL, 'Jxhfhhf', NULL, 12.0100000000, 1, 1, NULL, NULL, '$2y$10$5RpBKGIonyabzXutjIdPd.VVAO2lCiewPZPPNo6YmJhGq6O7m4BeO', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-02 12:28:56', '2024-10-08 11:49:47'),
(23, 'Tfghutt', 'Ttttyyyu', 'qualitypanel8@gmail.com', NULL, NULL, '+14747647677', 'United States', NULL, 'Tygg', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$Z33HcGDvz0UbM6s0yv.KOed9qiiuQggkQMbOycVwSBXCbpMTAqPbK', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-04 19:53:45', '2024-10-04 19:53:45'),
(24, 'Ttggg', 'Tffghuy', 'uffghj8@gmail.com', NULL, NULL, '+1667756756', 'United States', NULL, '5678', NULL, 0.0000000000, 1, 1, NULL, NULL, '$2y$10$NP8Mf87Of1Jcmo.kNOXEqe/ySjfFpmKdUfHkfmv4J.Zq0aKrgi6wC', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-04 20:03:21', '2024-10-05 00:41:56'),
(25, 'showrav', 'showrav', 'showrabhasan715@gmail.com', NULL, NULL, '+88001728332009', 'Bangladesh', NULL, 'Dhaka,Bangladesh', NULL, 9851.1900000000, 1, 0, NULL, NULL, '$2y$10$eV3Hg85yAUW8plmSz4T1qu0nWwweH3S6/CpRoX4XpxSq681gF06nG', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-05 21:39:52', '2024-10-05 21:42:12'),
(26, 'Shaon', 'Shaon92', 'bshaon59@gmail.com', NULL, NULL, '+8801779168990', 'Bangladesh', NULL, 'Mymensingh sadar', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$kU7nuWtG/sf2TKSlsL81FuOPPFlUdDuDUDefmRFj4drIAuLqybiz.', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-06 00:21:27', '2024-10-06 00:21:27'),
(27, 'Tasnim Fahmid', 'fahmid1853', 'fahmid1853@gmail.com', NULL, NULL, '+8801766205060', 'Bangladesh', NULL, 'Pabna,Rajshahi', NULL, 0.0000000000, 1, 1, NULL, NULL, '$2y$10$tNsT0PQtPK3HH4v2ri.ZuuUsovyQxkcP3bJTQv7jwAILUKwQB6hDi', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-06 01:45:36', '2024-10-08 11:46:30'),
(28, 'Jsvjskshs', 'Sbjslsfsg', 'gjsgzv@rustyload.com', NULL, NULL, '+19645897457', 'United States', NULL, 'Gjsgzv', NULL, 0.0000000000, 1, 1, NULL, NULL, '$2y$10$3f2Jt.Ov/jHqLd64WKEcMe7T5/mbW6mu5KULiIricAWFLYcse8Hfi', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-06 13:27:27', '2024-10-07 08:19:54'),
(29, 'rrtuhj', 'ertyuio', 'tofat2005.important@gmail.com', NULL, NULL, '+8801258441554125', 'Bangladesh', NULL, 'rtyuiol;', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$eJTGAifc3b2rMOBn3Pec1eBA3xjcdKL1l9HQu04k3MVFmu367tBpu', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-09 00:27:00', '2024-10-09 00:27:00'),
(30, 'M.H.Hridoy', 'mhhridoy5581', 'mhhridoy87654320@gmail.com', NULL, NULL, '+8801815935581', 'Bangladesh', NULL, 'North Horipur bangla bazar chhagalnaiya feni 3900', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$.uTYGhefCYdctb0hWt/YSu1IfiCCkhZo/YeyoL1faq2G396e68CQS', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-09 04:25:37', '2024-10-09 04:25:37'),
(31, 'Rasel', 'ahmed1', 'noyon268622@com', NULL, NULL, '+88001616185606', 'Bangladesh', NULL, 'Sylhet', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$o.CvPc2/vYEI47rmnCv9CO73W2BsgccrApVgzi1ljcTFEkZApPsra', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-09 05:35:02', '2024-10-09 05:35:02'),
(32, 'Saifulislam123', 'admin1', 'shohelshake100@gmail.com', NULL, NULL, '+880+8801403119543', 'Bangladesh', NULL, 'Saifulislam123', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$.fwodisOrhG5OHV/s/8JOeOl6CcrcqntTLUgw74OeaBoGSrVf4cSS', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-13 13:23:56', '2024-10-13 13:23:56'),
(33, 'qwert', 'qwert12', 'asjug538@sika3.com', NULL, NULL, '+14526877458', 'United States', NULL, 'Fgfhcjf', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$rL/Ndei4LrbAct/jvCzR3e0nvRVxSJK25uBxTqHINsKPLoRU788Um', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-15 10:55:26', '2024-10-15 10:55:26'),
(34, 'Sohan', 'sohanb0007', 'sohanbepary555@gmail.com', NULL, NULL, '+88001310955274', 'Bangladesh', NULL, 'Madaripu', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$kI/j7SdMY7Wsl.CCtVxmMOxwPfzqZ4odHV4WpVTqHF7ik/6jFN61S', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-15 15:53:58', '2024-10-15 15:53:58'),
(35, 'Sanzid Ahmed', 'sanzidahmed', 'sanzidahmedabc@gmail.com', NULL, NULL, '+8801920846375', 'Bangladesh', NULL, 'Chuadanga Bangladesh', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$M6Q8KQ6aZy.gzFcj2La/3uqTkjdqkbP.6U7SVD7jsiJQZ.GlZkKk6', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-20 23:37:14', '2024-10-20 23:37:14'),
(36, 'SAFKAT12', 'Saykat', 'mdsafketjaman5252@gmail.com', NULL, NULL, '+88001302095605', 'Bangladesh', NULL, 'Narail', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$lLTpVlRfyY1XN/Q326XRAOdA8jsTnW7ZU5LcAROJ.fohN/sJYBXBq', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-26 08:30:39', '2024-10-26 08:30:39'),
(37, 'Nayon khan', 'Khan1991', 'nayon1213@gamil.com', NULL, NULL, '+8801960760248', 'Bangladesh', NULL, 'Maheshpur-7340', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$J3vFfK8WN/us9tc5W/ZtMepcGu7sP3JKp5uG74LTYSio0.43SjMHK', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-28 04:58:06', '2024-10-28 04:58:06'),
(38, 'Ayesh enterprise', 'Ayesh enterprise', 'ayeshenterprise1@gmail.com', NULL, NULL, '+8801890161137', 'Bangladesh', NULL, 'B- block halishahar Chattogram', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$.vCh0I9z2ST.8O8LGR7v/et3NRlPIdwQo0jzJEp.1sfDVXBP1fP2i', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-29 08:25:53', '2024-10-29 08:25:53'),
(39, 'Allu Argun', 'allu240', 'alluarjun07bd@gmail.com', NULL, NULL, '+880+8801918822024', 'Bangladesh', NULL, 'Sreepur Kumaria Nandina Jamalpur', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$Qc1otaiVxEE2pSxBlFyPiOwhHpihGHkdh2pCV1vcoRjsA3bVJ12j2', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-10-31 18:10:33', '2024-10-31 18:10:33'),
(40, 'MK HASAN', 'itsmkhasan17', 'mkhasan2160@gmail.com', NULL, NULL, '+880+8801630605822', 'Bangladesh', NULL, 'vataticor', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$.i.ku6NC9nIDPj2YK5v.ruajA3Muu4CVA88MPlDRvEfc1WZVtipe.', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-11-03 00:32:42', '2024-11-03 00:32:42'),
(41, 'Idufu', 'Fhdhfh', 'bfhf@gmail.com', NULL, NULL, '+88093747747', 'Bangladesh', NULL, 'Iidihfb', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$NJSlMY6YqUhi11scKzxRi.ortkgRONDW/1tl/E2/PoCTmw7vz2lxC', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-11-03 09:15:48', '2024-11-03 09:15:48'),
(42, 'Hgcf', 'Vhkhff', 'gftoshifat1971@gmail.com', NULL, NULL, '+880478754', 'Bangladesh', NULL, 'Chjjn', NULL, 0.0000000000, 1, 0, NULL, NULL, '$2y$10$ijO3igAgqUMDY2LEqTUvQ.NXvSLMO2glQ0su0UkqJK2l9SvAzYwaC', NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '2024-11-04 01:05:49', '2024-11-04 01:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trx` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `method_id` int(11) NOT NULL,
  `amount` decimal(20,10) NOT NULL,
  `charge` decimal(20,10) NOT NULL,
  `total_amount` decimal(20,10) NOT NULL,
  `user_data` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => pending, 1 => accepted, 2 => rejected\r\n',
  `reject_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `withdraw_instruction` text NOT NULL,
  `min_amount` decimal(20,10) NOT NULL,
  `max_amount` decimal(20,10) NOT NULL,
  `fixed_charge` decimal(20,10) NOT NULL,
  `percent_charge` decimal(5,2) NOT NULL,
  `user_data` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `currency_id`, `name`, `withdraw_instruction`, `min_amount`, `max_amount`, `fixed_charge`, `percent_charge`, `user_data`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'demo - BDT', '<p>vvvvvv</p>', 10.0000000000, 1000.0000000000, 2.0000000000, 4.00, NULL, 1, '2021-12-29 23:53:46', '2021-12-30 00:49:58'),
(2, 4, 'demo - euro', '<p>vvvvvv</p>', 10.0000000000, 1000.0000000000, 2.0000000000, 4.00, NULL, 1, '2021-12-29 23:53:46', '2021-12-30 00:49:58'),
(3, 4, 'demo - euro2', '<p>Please Provide your account no. your bank branch and your bank name to get withdraw perfectly.</p>', 10.0000000000, 2000.0000000000, 1.0000000000, 4.00, NULL, 1, '2021-12-29 23:53:46', '2021-12-30 05:01:20'),
(4, 9, 'demo - btc', '<p>vvvvvv</p>', 0.0021000000, 1.0000000000, 1.0000000000, 4.00, NULL, 1, '2021-12-29 23:53:46', '2021-12-30 00:49:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_symbol_unique` (`symbol`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_contents`
--
ALTER TABLE `site_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3976;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2001;

--
-- AUTO_INCREMENT for table `site_contents`
--
ALTER TABLE `site_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
