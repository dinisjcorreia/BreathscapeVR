-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: sql.freedb.tech
-- Tempo de geração: 22-Maio-2024 às 18:48
-- Versão do servidor: 8.0.36-0ubuntu0.22.04.1
-- versão do PHP: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `freedb_breathscapevr`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `id`
--

CREATE TABLE `id` (
  `id` int NOT NULL DEFAULT '0',
  `uniqueid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(55) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `pp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `id`
--

INSERT INTO `id` (`id`, `uniqueid`, `username`, `pp`) VALUES
(936991, 'aa454b8dde8804314a1cb524027030b32e5c8130', '0', 30),
(641125, '9BEA7A71-49E3-5906-9785-8FA54627DBB6', '0', 32),
(164388, '', '0', 33),
(0, '2883ff3acc0a0bd60761d115b03d4188', 'expocolgaia', 44),
(0, '8247E336-5CF0-5262-B5A8-4CB3386C5862', 'expocolgaia', 45);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id_login` int NOT NULL,
  `email` varchar(60) NOT NULL,
  `username` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) NOT NULL,
  `criado_em` datetime NOT NULL,
  `salt` varchar(100) NOT NULL,
  `numsessoes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '5'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id_login`, `email`, `username`, `password`, `criado_em`, `salt`, `numsessoes`) VALUES
(50, 'doesntmatter@gmail.com', 'kodin', '$5$round=5000$7rHG2b5WvEZtIGCt5HV6BVby12eP1FlDWSu3MXp6rhC', '2024-02-22 16:19:59', '$5$round=5000$3PO2UbxOqgkodin$', '22'),
(47, 'doesntmatter@gmail.com', 'enzoenzo', '$5$round=5000$TqGIZa/8gjBGenP7SrUxXNJRUZwtCRcPDk1lMHxuj6C', '2024-02-09 09:37:15', '$5$round=5000$jBeTXqTjssenzoenzo$', '0'),
(51, 'doesntmatter@gmail.com', 'kodin2', '$5$round=5000$cpqDoddNQmN1I.WyBVBcl2GcS4jQgNvPDsUEaIiCwvC', '2024-03-20 10:24:47', '$5$round=5000$1JPo1PX4Fwkodin2$', '1'),
(52, 'doesntmatter@gmail.com', 'biocas', '$5$round=5000$WVec7eisH1sppYDQY09k6QwpDVVreNt/VPi1R4/ooq1', '2024-03-21 09:13:29', '$5$round=5000$tPUKEWTl1fbiocas$', '5'),
(53, 'doesntmatter@gmail.com', 'Oii', '$5$round=5000$8WhqBbMM1PnOyQkmDiVVTgpUwp0ckFifvbVqgZWa0y9', '2024-03-21 09:52:40', '$5$round=5000$UoN621r7SzOii$', '5'),
(54, 'doesntmatter@gmail.com', 'jpjp', '$5$round=5000$FNXYfVPK7Dt/uawAztSeiojwiYV5j6CVv1QILxeo/ZD', '2024-03-21 11:58:20', '$5$round=5000$41zSG47XERjpjp$', '5'),
(56, 'doesntmatter@gmail.com', 'joaofaria', '$5$round=5000$Yyz/IsMEpLepo1xLtq9HvNQEorqDhMn74aOCdsb802B', '2024-03-21 12:13:16', '$5$round=5000$4zfgf4qGj4joaofaria$', '5'),
(57, 'doesntmatter@gmail.com', 'polar', '$5$round=5000$qz/KjEtXV1ty2CGunuM6ARFyvowBuRyISgJLRyTKAi.', '2024-03-21 12:22:27', '$5$round=5000$1AaHn3Gip5polar$', '5'),
(58, 'doesntmatter@gmail.com', 'Joana ', '$5$round=5000$oC0nVqXItphYl.uwFf2o/FVbc2iWGNmqnVSvuS7XOk7', '2024-03-21 12:32:20', '$5$round=5000$qscknOHqGdJoana $', '5'),
(59, 'doesntmatter@gmail.com', 'expocolgaia', '$5$round=5000$XBc8ev0Rsk4OgKCO2YhZhRsJYbRMKDkfzlIDS3IHG.0', '2024-03-21 13:57:12', '$5$round=5000$QgQMr2PtcVexpocolgaia$', '12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id` int NOT NULL,
  `username` varchar(55) NOT NULL,
  `temposessao` varchar(5) NOT NULL,
  `conclui` varchar(1) NOT NULL,
  `data` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`id`, `username`, `temposessao`, `conclui`, `data`) VALUES
(34, 'Oii', '106,1', '0', '21/03/2024 09:55:50'),
(35, 'Oii', '43,49', '0', '21/03/2024 09:57:00'),
(36, 'Oii', '19,31', '0', '21/03/2024 09:59:04'),
(37, 'Oii', '31,55', '0', '21/03/2024 10:01:11'),
(38, 'Oii', '9,132', '0', '21/03/2024 11:29:00'),
(39, 'Oii', '104,6', '0', '21/03/2024 12:04:34'),
(40, 'joaofaria', '101,8', '0', '21/03/2024 12:16:45'),
(41, 'polar', '79,48', '0', '21/03/2024 12:26:17'),
(42, 'polar', '19,40', '0', '21/03/2024 12:27:04'),
(43, 'polar', '1,838', '0', '21/03/2024 12:27:08'),
(44, 'polar', '2,879', '0', '21/03/2024 12:27:16'),
(45, 'expocolgaia', '165,2', '0', '21/03/2024 02:09:16'),
(46, 'kodin2', '8.710', '0', '21/03/2024 02:15:33'),
(47, 'expocolgaia', '82,65', '0', '21/03/2024 02:31:31'),
(48, 'expocolgaia', '2,914', '0', '21/03/2024 02:39:13'),
(49, 'expocolgaia', '81,15', '0', '21/03/2024 02:42:51'),
(50, 'expocolgaia', '70,60', '0', '21/03/2024 02:45:42'),
(51, 'expocolgaia', '65,98', '0', '21/03/2024 02:49:39'),
(52, 'expocolgaia', '3,764', '0', '21/03/2024 02:49:51'),
(53, 'expocolgaia', '60,67', '0', '21/03/2024 02:52:59'),
(54, 'expocolgaia', '25,57', '0', '21/03/2024 02:53:56'),
(55, 'expocolgaia', '51,49', '0', '21/03/2024 03:00:31'),
(56, 'expocolgaia', '67,68', '0', '21/03/2024 03:03:28'),
(57, 'expocolgaia', '44,84', '0', '21/03/2024 03:05:32'),
(58, 'expocolgaia', '17,52', '0', '21/03/2024 03:07:44'),
(59, 'expocolgaia', '59,52', '0', '21/03/2024 03:10:15'),
(60, 'expocolgaia', '27,35', '0', '21/03/2024 03:11:48'),
(61, 'expocolgaia', '42,00', '0', '21/03/2024 03:13:56'),
(62, 'expocolgaia', '1,892', '0', '21/03/2024 03:14:09'),
(63, 'expocolgaia', '27,59', '0', '21/03/2024 03:15:36'),
(64, 'expocolgaia', '38,87', '0', '21/03/2024 03:17:34'),
(65, 'expocolgaia', '5,584', '0', '21/03/2024 03:21:32'),
(66, 'expocolgaia', '45,76', '0', '21/03/2024 03:24:37'),
(67, 'expocolgaia', '23,66', '0', '21/03/2024 03:25:57'),
(68, 'expocolgaia', '46,86', '0', '21/03/2024 03:31:09'),
(69, 'expocolgaia', '40,40', '0', '21/03/2024 03:35:08'),
(70, 'expocolgaia', '31,42', '0', '21/03/2024 03:36:52'),
(71, 'expocolgaia', '88,72', '0', '21/03/2024 03:42:18'),
(72, 'expocolgaia', '56,78', '0', '21/03/2024 03:47:35'),
(73, 'expocolgaia', '87,44', '0', '21/03/2024 03:51:38'),
(74, 'expocolgaia', '27,69', '0', '21/03/2024 03:55:44'),
(75, 'expocolgaia', '81,43', '0', '21/03/2024 04:05:47'),
(76, 'expocolgaia', '47,49', '0', '21/03/2024 04:08:09'),
(77, 'expocolgaia', '36,21', '0', '21/03/2024 04:12:02'),
(78, 'expocolgaia', '59,00', '0', '21/03/2024 04:15:47'),
(79, 'expocolgaia', '53,99', '0', '21/03/2024 04:19:23'),
(80, 'expocolgaia', '166,9', '0', '21/03/2024 04:24:18'),
(81, 'expocolgaia', '53,90', '0', '21/03/2024 04:30:37'),
(82, 'expocolgaia', '64,06', '0', '21/03/2024 04:45:31'),
(83, 'expocolgaia', '2,724', '0', '21/03/2024 04:46:25'),
(84, 'expocolgaia', '2,505', '0', '21/03/2024 04:46:33'),
(85, 'expocolgaia', '2,194', '0', '21/03/2024 04:47:25'),
(86, 'expocolgaia', '29,66', '0', '21/03/2024 04:48:30'),
(87, 'expocolgaia', '23,29', '0', '21/03/2024 05:01:08'),
(88, 'expocolgaia', '37,12', '0', '21/03/2024 05:07:35'),
(89, 'expocolgaia', '34,59', '0', '21/03/2024 05:09:24'),
(90, 'expocolgaia', '72,40', '0', '21/03/2024 05:15:16'),
(91, 'expocolgaia', '0,834', '0', '21/03/2024 05:15:27'),
(92, 'expocolgaia', '50,68', '0', '21/03/2024 05:16:38'),
(93, 'expocolgaia', '42,65', '0', '21/03/2024 05:19:04'),
(94, 'expocolgaia', '21,43', '0', '21/03/2024 05:19:52'),
(95, 'expocolgaia', '38,18', '0', '21/03/2024 05:21:55'),
(96, 'expocolgaia', '30,73', '0', '21/03/2024 05:22:49'),
(97, 'expocolgaia', '43,41', '0', '21/03/2024 05:37:03'),
(98, 'expocolgaia', '26,45', '0', '21/03/2024 05:39:14'),
(99, 'expocolgaia', '48,22', '0', '21/03/2024 05:44:14'),
(100, 'expocolgaia', '39,02', '0', '21/03/2024 05:45:52'),
(101, 'expocolgaia', '41,64', '0', '21/03/2024 06:07:03'),
(102, 'expocolgaia', '4,707', '0', '21/03/2024 06:07:36'),
(103, 'expocolgaia', '30,74', '0', '21/03/2024 06:08:35'),
(104, 'expocolgaia', '1.934', '0', '22/03/2024 08:35:39'),
(105, 'expocolgaia', '1.354', '0', '22/03/2024 08:36:09'),
(106, 'expocolgaia', '1.494', '0', '22/03/2024 08:36:44'),
(107, 'expocolgaia', '168,3', '1', '22/03/2024 09:54:38'),
(108, 'expocolgaia', '168,1', '1', '22/03/2024 10:01:24'),
(109, 'expocolgaia', '41,53', '0', '22/03/2024 10:37:46'),
(110, 'expocolgaia', '2,663', '0', '22/03/2024 10:37:56'),
(111, 'expocolgaia', '29,62', '0', '22/03/2024 10:38:59'),
(112, 'expocolgaia', '62,05', '0', '22/03/2024 10:41:24'),
(113, 'expocolgaia', '36,08', '0', '22/03/2024 10:42:23'),
(114, 'expocolgaia', '9,092', '0', '22/03/2024 10:51:17'),
(115, 'expocolgaia', '99,54', '0', '22/03/2024 10:53:07'),
(116, 'expocolgaia', '89,52', '0', '22/03/2024 11:02:09'),
(117, 'expocolgaia', '50,34', '0', '22/03/2024 11:05:44'),
(118, 'expocolgaia', '41,14', '0', '22/03/2024 11:10:01'),
(119, 'expocolgaia', '30,09', '0', '22/03/2024 11:10:50'),
(120, 'expocolgaia', '19,89', '0', '22/03/2024 11:19:32'),
(121, 'expocolgaia', '49,42', '0', '22/03/2024 11:25:10'),
(122, 'expocolgaia', '88,04', '0', '22/03/2024 11:28:47'),
(123, 'expocolgaia', '57,42', '0', '22/03/2024 11:30:25'),
(124, 'expocolgaia', '40,00', '0', '22/03/2024 11:47:11'),
(125, 'expocolgaia', '26,88', '0', '22/03/2024 11:48:05'),
(126, 'expocolgaia', '91,45', '0', '22/03/2024 11:50:32'),
(127, 'expocolgaia', '49,83', '0', '22/03/2024 11:55:29'),
(128, 'expocolgaia', '168,1', '1', '22/03/2024 14:30:12'),
(129, 'expocolgaia', '168,1', '1', '22/03/2024 14:35:22'),
(130, 'expocolgaia', '42,99', '0', '22/03/2024 14:37:48'),
(131, 'expocolgaia', '1,712', '0', '22/03/2024 14:37:58'),
(132, 'expocolgaia', '24,24', '0', '22/03/2024 14:38:43'),
(133, 'expocolgaia', '64,99', '0', '22/03/2024 14:49:12'),
(134, 'expocolgaia', '2,974', '0', '22/03/2024 14:49:35'),
(135, 'expocolgaia', '35,04', '0', '22/03/2024 14:50:35'),
(136, 'expocolgaia', '82,34', '0', '22/03/2024 14:53:30'),
(137, 'expocolgaia', '140,2', '0', '22/03/2024 15:06:32'),
(138, 'expocolgaia', '52,43', '0', '22/03/2024 15:10:35'),
(139, 'expocolgaia', '48,58', '0', '22/03/2024 15:15:40'),
(140, 'expocolgaia', '25,54', '0', '22/03/2024 15:16:37'),
(141, 'expocolgaia', '25,34', '0', '22/03/2024 15:18:47'),
(142, 'expocolgaia', '67,67', '0', '22/03/2024 15:22:59'),
(143, 'expocolgaia', '58,90', '0', '22/03/2024 15:25:17'),
(144, 'expocolgaia', '55,06', '0', '22/03/2024 15:35:37'),
(145, 'expocolgaia', '35,68', '0', '22/03/2024 15:36:44'),
(146, 'expocolgaia', '25,79', '0', '22/03/2024 15:38:41'),
(147, 'expocolgaia', '0,835', '0', '22/03/2024 15:38:45'),
(148, 'expocolgaia', '20,56', '0', '22/03/2024 15:39:24'),
(149, 'expocolgaia', '76,83', '0', '22/03/2024 15:45:22'),
(150, 'expocolgaia', '66,70', '0', '22/03/2024 15:47:49'),
(151, 'expocolgaia', '9,117', '0', '22/03/2024 15:49:15'),
(152, 'expocolgaia', '71,81', '0', '22/03/2024 15:51:09'),
(153, 'expocolgaia', '34,07', '0', '22/03/2024 16:00:21'),
(154, 'expocolgaia', '75,17', '0', '22/03/2024 16:03:08'),
(155, 'expocolgaia', '48,87', '0', '22/03/2024 16:16:29'),
(156, 'expocolgaia', '39,63', '0', '22/03/2024 16:17:37'),
(157, 'expocolgaia', '107,3', '0', '22/03/2024 16:25:25'),
(158, 'expocolgaia', '66,75', '0', '22/03/2024 16:31:23'),
(159, 'expocolgaia', '45,51', '0', '22/03/2024 16:40:08'),
(160, 'expocolgaia', '106,0', '0', '22/03/2024 16:42:42'),
(161, 'expocolgaia', '45,85', '0', '22/03/2024 16:49:47'),
(162, 'expocolgaia', '56,23', '0', '22/03/2024 16:51:23'),
(163, 'expocolgaia', '58,15', '0', '22/03/2024 16:59:31'),
(164, 'expocolgaia', '56,74', '0', '22/03/2024 17:01:35'),
(165, 'expocolgaia', '57,82', '0', '22/03/2024 17:07:58'),
(166, 'expocolgaia', '47,27', '0', '22/03/2024 17:10:13'),
(167, 'expocolgaia', '40,18', '0', '22/03/2024 17:12:11'),
(168, 'expocolgaia', '49,88', '0', '22/03/2024 17:20:27'),
(169, 'expocolgaia', '46,04', '0', '22/03/2024 17:21:44'),
(170, 'expocolgaia', '42,77', '0', '22/03/2024 17:23:18'),
(171, 'expocolgaia', '38,07', '0', '22/03/2024 17:24:18'),
(172, 'expocolgaia', '24,20', '0', '22/03/2024 17:26:20'),
(173, 'expocolgaia', '37,75', '0', '22/03/2024 17:31:56'),
(174, 'expocolgaia', '47,01', '0', '22/03/2024 17:46:24'),
(175, 'expocolgaia', '68,55', '0', '22/03/2024 17:47:59'),
(176, 'expocolgaia', '110,3', '0', '22/03/2024 18:21:34'),
(177, 'expocolgaia', '37,15', '0', '22/03/2024 18:22:42'),
(178, 'expocolgaia', '115,7', '0', '22/03/2024 18:47:24'),
(179, 'expocolgaia', '55,62', '0', '23/03/2024 09:20:25'),
(180, 'expocolgaia', '66,78', '0', '23/03/2024 09:34:03'),
(181, 'expocolgaia', '60,45', '0', '23/03/2024 09:35:29'),
(182, 'expocolgaia', '56,58', '0', '23/03/2024 09:38:12'),
(183, 'expocolgaia', '2,335', '0', '23/03/2024 09:38:23'),
(184, 'expocolgaia', '61,60', '0', '23/03/2024 09:39:45'),
(185, 'expocolgaia', '14,76', '0', '23/03/2024 09:44:40'),
(186, 'expocolgaia', '27,06', '0', '23/03/2024 09:47:45'),
(187, 'expocolgaia', '66,27', '0', '23/03/2024 09:50:58'),
(188, 'expocolgaia', '73,67', '0', '23/03/2024 09:53:08'),
(189, 'expocolgaia', '65,44', '0', '23/03/2024 09:56:49'),
(190, 'expocolgaia', '76,09', '0', '23/03/2024 10:35:59'),
(191, 'expocolgaia', '114,1', '0', '23/03/2024 10:39:44'),
(192, 'expocolgaia', '47,69', '0', '23/03/2024 10:45:21'),
(193, 'expocolgaia', '131,9', '0', '23/03/2024 10:51:02'),
(194, 'expocolgaia', '79,23', '0', '23/03/2024 10:54:38'),
(195, 'expocolgaia', '96,89', '0', '23/03/2024 10:56:43'),
(196, 'expocolgaia', '61,10', '0', '23/03/2024 11:01:38'),
(197, 'expocolgaia', '121,7', '0', '23/03/2024 11:04:54'),
(198, 'expocolgaia', '29,06', '0', '23/03/2024 11:08:02'),
(199, 'expocolgaia', '48,14', '0', '23/03/2024 11:17:51'),
(200, 'expocolgaia', '38,78', '0', '23/03/2024 11:20:03'),
(201, 'expocolgaia', '64,04', '0', '23/03/2024 11:23:52'),
(202, 'expocolgaia', '58,68', '0', '23/03/2024 11:26:37'),
(203, 'expocolgaia', '51,37', '0', '23/03/2024 11:29:09'),
(204, 'expocolgaia', '37,56', '0', '23/03/2024 11:32:28'),
(205, 'expocolgaia', '154,7', '0', '23/03/2024 11:48:05'),
(206, 'expocolgaia', '168,2', '1', '23/03/2024 11:56:26'),
(207, 'expocolgaia', '81,24', '0', '23/03/2024 11:59:14'),
(208, 'expocolgaia', '168,1', '1', '23/03/2024 12:16:51'),
(209, 'expocolgaia', '168,1', '1', '23/03/2024 12:20:20'),
(210, 'expocolgaia', '89,24', '0', '23/03/2024 12:25:44'),
(211, 'expocolgaia', '77,59', '0', '23/03/2024 12:27:31'),
(212, 'expocolgaia', '66,33', '0', '23/03/2024 12:36:11'),
(213, 'expocolgaia', '76,21', '0', '23/03/2024 12:38:05'),
(214, 'expocolgaia', '79,36', '0', '23/03/2024 12:41:30'),
(215, 'expocolgaia', '59,94', '0', '23/03/2024 12:43:07'),
(216, 'expocolgaia', '41,04', '0', '23/03/2024 12:45:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `opinioes`
--

CREATE TABLE `opinioes` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `nome` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `classificacao` int DEFAULT NULL,
  `data_hora` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `comentario` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `opinioes`
--

INSERT INTO `opinioes` (`id`, `user_id`, `nome`, `email`, `classificacao`, `data_hora`, `comentario`) VALUES
(80, 51, NULL, NULL, 4, '21/03/2024 02:15:38', NULL),
(81, 59, NULL, NULL, 5, '21/03/2024 02:23:24', NULL),
(82, 59, NULL, NULL, 5, '21/03/2024 02:23:24', NULL),
(83, 59, NULL, NULL, 5, '21/03/2024 02:23:53', NULL),
(84, 59, NULL, NULL, 5, '21/03/2024 02:39:16', NULL),
(85, 59, NULL, NULL, 5, '21/03/2024 02:42:55', NULL),
(86, 59, NULL, NULL, 5, '21/03/2024 02:45:45', NULL),
(87, 59, NULL, NULL, 5, '21/03/2024 02:49:38', NULL),
(88, 59, NULL, NULL, 5, '21/03/2024 02:49:39', NULL),
(89, 59, NULL, NULL, 5, '21/03/2024 02:49:40', NULL),
(90, 59, NULL, NULL, 5, '21/03/2024 02:49:41', NULL),
(91, 59, NULL, NULL, 5, '21/03/2024 02:49:41', NULL),
(92, NULL, NULL, NULL, NULL, '21/03/2024 02:51:36', 'Foi fixe, fiquei calmo ????'),
(93, 59, NULL, NULL, 5, '21/03/2024 02:53:01', NULL),
(94, 59, NULL, NULL, 5, '21/03/2024 02:53:57', NULL),
(95, NULL, NULL, NULL, NULL, '21/03/2024 02:54:58', 'fixolas ???? '),
(96, 59, NULL, NULL, 5, '21/03/2024 03:00:43', NULL),
(97, 59, NULL, NULL, 5, '21/03/2024 03:03:31', NULL),
(98, 59, NULL, NULL, 5, '21/03/2024 03:03:32', NULL),
(99, 59, NULL, NULL, 4, '21/03/2024 03:05:32', NULL),
(100, NULL, NULL, NULL, NULL, '21/03/2024 03:06:33', 'Muito bem feito, parabéns '),
(101, 59, NULL, NULL, 5, '21/03/2024 03:07:47', NULL),
(102, 59, NULL, NULL, 5, '21/03/2024 03:07:48', NULL),
(103, NULL, NULL, NULL, NULL, '21/03/2024 03:08:49', 'O melhor'),
(104, 59, NULL, NULL, 5, '21/03/2024 03:10:16', NULL),
(105, 59, NULL, NULL, 5, '21/03/2024 03:10:43', NULL),
(106, 59, NULL, NULL, 5, '21/03/2024 03:10:44', NULL),
(107, 59, NULL, NULL, 5, '21/03/2024 03:11:50', NULL),
(108, 59, NULL, NULL, 5, '21/03/2024 03:11:56', NULL),
(109, NULL, NULL, NULL, NULL, '21/03/2024 03:13:03', 'Experiência top, daria um 20 numa hipótese de PAP'),
(110, 59, NULL, NULL, 5, '21/03/2024 03:14:00', NULL),
(111, 59, NULL, NULL, 5, '21/03/2024 03:14:02', NULL),
(112, 59, NULL, NULL, 5, '21/03/2024 03:15:38', NULL),
(113, 59, NULL, NULL, 5, '21/03/2024 03:15:40', NULL),
(114, NULL, NULL, NULL, NULL, '21/03/2024 03:16:47', 'Muito fixe mesmo, recomendo a experiência, parabéns ao desenvolvidor!'),
(115, 59, NULL, NULL, 5, '21/03/2024 03:17:36', NULL),
(116, 59, NULL, NULL, 5, '21/03/2024 03:21:32', NULL),
(117, 59, NULL, NULL, 5, '21/03/2024 03:21:33', NULL),
(118, 59, NULL, NULL, 5, '21/03/2024 03:24:38', NULL),
(119, 59, NULL, NULL, 5, '21/03/2024 03:26:01', NULL),
(120, 59, NULL, NULL, 5, '21/03/2024 03:31:12', NULL),
(121, 59, NULL, NULL, 5, '21/03/2024 03:35:09', NULL),
(122, 59, NULL, NULL, 5, '21/03/2024 03:36:51', NULL),
(123, 59, NULL, NULL, 5, '21/03/2024 03:36:52', NULL),
(124, 59, NULL, NULL, 5, '21/03/2024 03:40:44', NULL),
(125, 59, NULL, NULL, 5, '21/03/2024 03:40:46', NULL),
(126, 59, NULL, NULL, 4, '21/03/2024 03:51:53', NULL),
(127, 59, NULL, NULL, 3, '21/03/2024 03:51:55', NULL),
(128, 59, NULL, NULL, 5, '21/03/2024 03:56:06', NULL),
(129, 59, NULL, NULL, 5, '21/03/2024 03:56:07', NULL),
(130, 59, NULL, NULL, 5, '21/03/2024 04:02:47', NULL),
(131, 59, NULL, NULL, 5, '21/03/2024 04:02:48', NULL),
(132, 59, NULL, NULL, 5, '21/03/2024 04:02:49', NULL),
(133, 59, NULL, NULL, 5, '21/03/2024 04:02:49', NULL),
(134, 59, NULL, NULL, 5, '21/03/2024 04:02:50', NULL),
(135, 59, NULL, NULL, 5, '21/03/2024 04:05:53', NULL),
(136, 59, NULL, NULL, 3, '21/03/2024 04:08:16', NULL),
(137, 59, NULL, NULL, 5, '21/03/2024 04:12:18', NULL),
(138, 59, NULL, NULL, 5, '21/03/2024 04:12:18', NULL),
(139, 59, NULL, NULL, 5, '21/03/2024 04:12:19', NULL),
(140, 59, NULL, NULL, 5, '21/03/2024 04:12:20', NULL),
(141, 59, NULL, NULL, 5, '21/03/2024 04:15:55', NULL),
(142, 59, NULL, NULL, 5, '21/03/2024 04:15:55', NULL),
(143, 59, NULL, NULL, 5, '21/03/2024 04:19:26', NULL),
(144, 59, NULL, NULL, 5, '21/03/2024 04:24:21', NULL),
(145, 59, NULL, NULL, 5, '21/03/2024 04:30:44', NULL),
(146, 59, NULL, NULL, 5, '21/03/2024 04:30:45', NULL),
(147, 59, NULL, NULL, 5, '21/03/2024 04:30:45', NULL),
(148, 59, NULL, NULL, 5, '21/03/2024 04:30:46', NULL),
(149, 59, NULL, NULL, 5, '21/03/2024 04:30:47', NULL),
(150, 59, NULL, NULL, 5, '21/03/2024 04:30:47', NULL),
(151, 59, NULL, NULL, 5, '21/03/2024 04:46:11', NULL),
(152, 59, NULL, NULL, 5, '21/03/2024 04:46:12', NULL),
(153, 59, NULL, NULL, 5, '21/03/2024 04:46:13', NULL),
(154, 59, NULL, NULL, 5, '21/03/2024 04:46:13', NULL),
(155, 59, NULL, NULL, 5, '21/03/2024 04:46:27', NULL),
(156, 59, NULL, NULL, 5, '21/03/2024 04:46:27', NULL),
(157, 59, NULL, NULL, 5, '21/03/2024 04:46:28', NULL),
(158, 59, NULL, NULL, 5, '21/03/2024 04:46:35', NULL),
(159, 59, NULL, NULL, 5, '21/03/2024 04:47:26', NULL),
(160, 59, NULL, NULL, 5, '21/03/2024 04:47:27', NULL),
(161, 59, NULL, NULL, 5, '21/03/2024 04:48:32', NULL),
(162, 59, NULL, NULL, 5, '21/03/2024 04:48:33', NULL),
(163, 59, NULL, NULL, 5, '21/03/2024 05:01:07', NULL),
(164, 59, NULL, NULL, 5, '21/03/2024 05:01:08', NULL),
(165, 59, NULL, NULL, 5, '21/03/2024 05:01:09', NULL),
(166, 59, NULL, NULL, 5, '21/03/2024 05:07:43', NULL),
(167, 59, NULL, NULL, 5, '21/03/2024 05:07:44', NULL),
(168, 59, NULL, NULL, 5, '21/03/2024 05:09:24', NULL),
(169, 59, NULL, NULL, 4, '21/03/2024 05:09:25', NULL),
(170, 59, NULL, NULL, 5, '21/03/2024 05:15:19', NULL),
(171, 59, NULL, NULL, 5, '21/03/2024 05:16:39', NULL),
(172, 59, NULL, NULL, 5, '21/03/2024 05:19:05', NULL),
(173, 59, NULL, NULL, 5, '21/03/2024 05:19:07', NULL),
(174, 59, NULL, NULL, 5, '21/03/2024 05:19:53', NULL),
(175, 59, NULL, NULL, 5, '21/03/2024 05:21:54', NULL),
(176, 59, NULL, NULL, 5, '21/03/2024 05:21:54', NULL),
(177, 59, NULL, NULL, 5, '21/03/2024 05:21:55', NULL),
(178, 59, NULL, NULL, 5, '21/03/2024 05:22:51', NULL),
(179, 59, NULL, NULL, 4, '21/03/2024 05:37:08', NULL),
(180, 59, NULL, NULL, 4, '21/03/2024 05:37:15', NULL),
(181, 59, NULL, NULL, 4, '21/03/2024 05:39:15', NULL),
(182, 59, NULL, NULL, 5, '21/03/2024 05:44:15', NULL),
(183, 59, NULL, NULL, 5, '21/03/2024 05:44:16', NULL),
(184, 59, NULL, NULL, 5, '21/03/2024 05:45:53', NULL),
(185, 59, NULL, NULL, 5, '21/03/2024 05:45:53', NULL),
(186, 59, NULL, NULL, 4, '21/03/2024 06:07:07', NULL),
(187, 59, NULL, NULL, 4, '21/03/2024 06:08:37', NULL),
(188, NULL, NULL, NULL, NULL, '21/03/2024 09:21:15', 'Muito bem feito, parabéns '),
(189, NULL, NULL, NULL, NULL, '22/03/2024 07:48:36', 'Muito fixe mesmo, recomendo a experiência, parabéns ao desenvolvidor!'),
(190, 59, NULL, NULL, 4, '22/03/2024 08:35:41', NULL),
(191, 59, NULL, NULL, 5, '22/03/2024 08:36:18', NULL),
(192, 59, NULL, NULL, 4, '22/03/2024 08:36:45', NULL),
(193, NULL, 'JP', 'doesntmatter@gmail.com', NULL, '22/03/2024 08:44:56', 'Gostei muito'),
(194, NULL, '', '', NULL, '22/03/2024 08:54:46', 'Muito fixe mesmo, recomendo a experiência, parabéns ao desenvolvidor!'),
(195, NULL, '', '', NULL, '22/03/2024 09:10:47', 'Muito bem feito, parabéns '),
(196, NULL, '', '', NULL, '22/03/2024 09:10:50', ''),
(197, 59, NULL, NULL, 5, '22/03/2024 09:55:08', NULL),
(198, 59, NULL, NULL, 5, '22/03/2024 09:55:08', NULL),
(199, 59, NULL, NULL, 5, '22/03/2024 10:01:31', NULL),
(200, 59, NULL, NULL, 5, '22/03/2024 10:37:48', NULL),
(201, 59, NULL, NULL, 5, '22/03/2024 10:37:57', NULL),
(202, 59, NULL, NULL, 5, '22/03/2024 10:38:59', NULL),
(203, 59, NULL, NULL, 5, '22/03/2024 10:39:00', NULL),
(204, 59, NULL, NULL, 5, '22/03/2024 10:39:01', NULL),
(205, 59, NULL, NULL, 5, '22/03/2024 10:39:01', NULL),
(206, 59, NULL, NULL, 5, '22/03/2024 10:39:02', NULL),
(207, 59, NULL, NULL, 5, '22/03/2024 10:39:02', NULL),
(208, 59, NULL, NULL, 5, '22/03/2024 10:39:03', NULL),
(209, 59, NULL, NULL, 5, '22/03/2024 10:39:04', NULL),
(210, 59, NULL, NULL, 5, '22/03/2024 10:39:04', NULL),
(211, 59, NULL, NULL, 5, '22/03/2024 10:39:05', NULL),
(212, 59, NULL, NULL, 5, '22/03/2024 10:39:06', NULL),
(213, 59, NULL, NULL, 5, '22/03/2024 10:39:06', NULL),
(214, 59, NULL, NULL, 5, '22/03/2024 10:39:07', NULL),
(215, 59, NULL, NULL, 5, '22/03/2024 10:41:25', NULL),
(216, NULL, 'Gustavo', 'doesntmatter@gmail.com', NULL, '22/03/2024 10:42:18', 'Foi muito divertido e relaxante'),
(217, NULL, '', '', NULL, '22/03/2024 10:42:20', ''),
(218, 59, NULL, NULL, 5, '22/03/2024 10:42:27', NULL),
(219, NULL, 'Rolando Caio da Rocha', 'doesntmatter@gmail.com', NULL, '22/03/2024 10:42:50', 'Fabuloso, gostei muito da experiência e da simpatia dos alunos.'),
(220, NULL, 'Isaac ', 'doesntmatter@gmail.com', NULL, '22/03/2024 10:43:31', 'é um jogo bom para relaxar com um cenário de relaxante'),
(221, 59, NULL, NULL, 4, '22/03/2024 10:53:17', NULL),
(222, 59, NULL, NULL, 4, '22/03/2024 10:53:18', NULL),
(223, 59, NULL, NULL, 5, '22/03/2024 11:02:08', NULL),
(224, 59, NULL, NULL, 5, '22/03/2024 11:02:09', NULL),
(225, 59, NULL, NULL, 5, '22/03/2024 11:02:10', NULL),
(226, 59, NULL, NULL, 5, '22/03/2024 11:02:11', NULL),
(227, 59, NULL, NULL, 5, '22/03/2024 11:05:45', NULL),
(228, 59, NULL, NULL, 5, '22/03/2024 11:05:45', NULL),
(229, 59, NULL, NULL, 5, '22/03/2024 11:05:46', NULL),
(230, NULL, 'Rafinha', '', NULL, '22/03/2024 11:07:38', 'top'),
(231, 59, NULL, NULL, 5, '22/03/2024 11:10:00', NULL),
(232, 59, NULL, NULL, 5, '22/03/2024 11:10:01', NULL),
(233, 59, NULL, NULL, 5, '22/03/2024 11:10:02', NULL),
(234, 59, NULL, NULL, 5, '22/03/2024 11:10:51', NULL),
(235, 59, NULL, NULL, 5, '22/03/2024 11:16:56', NULL),
(236, 59, NULL, NULL, 5, '22/03/2024 11:17:05', NULL),
(237, 59, NULL, NULL, 5, '22/03/2024 11:17:05', NULL),
(238, 59, NULL, NULL, 5, '22/03/2024 11:17:06', NULL),
(239, 59, NULL, NULL, 5, '22/03/2024 11:19:33', NULL),
(240, 59, NULL, NULL, 5, '22/03/2024 11:19:33', NULL),
(241, NULL, 'manu', 'doesntmatter@gmail.com', NULL, '22/03/2024 11:22:12', 'gostei muito da experiência, muito simpáticos.'),
(242, 59, NULL, NULL, 5, '22/03/2024 11:28:48', NULL),
(243, 59, NULL, NULL, 5, '22/03/2024 11:30:25', NULL),
(244, NULL, 'Manuel Correia', 'doesntmatter@gmail.com', NULL, '22/03/2024 11:31:47', '5*****'),
(245, 59, NULL, NULL, 5, '22/03/2024 11:47:13', NULL),
(246, 59, NULL, NULL, 5, '22/03/2024 11:47:14', NULL),
(247, 59, NULL, NULL, 5, '22/03/2024 11:47:14', NULL),
(248, 59, NULL, NULL, 5, '22/03/2024 11:47:15', NULL),
(249, 59, NULL, NULL, 5, '22/03/2024 11:48:07', NULL),
(250, 59, NULL, NULL, 5, '22/03/2024 11:50:36', NULL),
(251, 59, NULL, NULL, 4, '22/03/2024 11:55:29', NULL),
(252, 59, NULL, NULL, 5, '22/03/2024 14:37:52', NULL),
(253, 59, NULL, NULL, 5, '22/03/2024 14:38:01', NULL),
(254, 59, NULL, NULL, 5, '22/03/2024 14:38:02', NULL),
(255, 59, NULL, NULL, 5, '22/03/2024 14:38:03', NULL),
(256, 59, NULL, NULL, 5, '22/03/2024 14:38:03', NULL),
(257, 59, NULL, NULL, 5, '22/03/2024 14:38:45', NULL),
(258, 59, NULL, NULL, 5, '22/03/2024 14:49:13', NULL),
(259, 59, NULL, NULL, 5, '22/03/2024 14:50:36', NULL),
(260, 59, NULL, NULL, 5, '22/03/2024 14:53:42', NULL),
(261, 59, NULL, NULL, 5, '22/03/2024 14:53:43', NULL),
(262, NULL, 'Mariana', 'doesntmatter@gmail.com', NULL, '22/03/2024 02:56:12', 'Muito boa! Experiência incrível!'),
(263, 59, NULL, NULL, 5, '22/03/2024 15:16:39', NULL),
(264, 59, NULL, NULL, 5, '22/03/2024 15:16:41', NULL),
(265, 59, NULL, NULL, 5, '22/03/2024 15:18:50', NULL),
(266, 59, NULL, NULL, 5, '22/03/2024 15:23:11', NULL),
(267, 59, NULL, NULL, 5, '22/03/2024 15:35:40', NULL),
(268, 59, NULL, NULL, 5, '22/03/2024 15:35:41', NULL),
(269, 59, NULL, NULL, 5, '22/03/2024 15:36:46', NULL),
(270, 59, NULL, NULL, 5, '22/03/2024 15:45:24', NULL),
(271, 59, NULL, NULL, 4, '22/03/2024 15:47:57', NULL),
(272, 59, NULL, NULL, 5, '22/03/2024 15:49:24', NULL),
(273, 59, NULL, NULL, 5, '22/03/2024 15:51:11', NULL),
(274, 59, NULL, NULL, 5, '22/03/2024 15:51:12', NULL),
(275, 59, NULL, NULL, 5, '22/03/2024 16:00:35', NULL),
(276, 59, NULL, NULL, 5, '22/03/2024 16:00:36', NULL),
(277, 59, NULL, NULL, 5, '22/03/2024 16:03:18', NULL),
(278, 59, NULL, NULL, 5, '22/03/2024 16:16:32', NULL),
(279, 59, NULL, NULL, 5, '22/03/2024 16:17:38', NULL),
(280, 59, NULL, NULL, 3, '22/03/2024 16:25:29', NULL),
(281, 59, NULL, NULL, 5, '22/03/2024 16:31:24', NULL),
(282, 59, NULL, NULL, 5, '22/03/2024 16:31:25', NULL),
(283, 59, NULL, NULL, 5, '22/03/2024 16:49:48', NULL),
(284, 59, NULL, NULL, 5, '22/03/2024 16:51:31', NULL),
(285, 59, NULL, NULL, 5, '22/03/2024 16:51:33', NULL),
(286, 59, NULL, NULL, 5, '22/03/2024 16:59:41', NULL),
(287, 59, NULL, NULL, 5, '22/03/2024 17:01:36', NULL),
(288, 59, NULL, NULL, 5, '22/03/2024 17:01:37', NULL),
(289, 59, NULL, NULL, 5, '22/03/2024 17:08:01', NULL),
(290, 59, NULL, NULL, 5, '22/03/2024 17:10:17', NULL),
(291, 59, NULL, NULL, 5, '22/03/2024 17:10:18', NULL),
(292, 59, NULL, NULL, 5, '22/03/2024 17:12:13', NULL),
(293, 59, NULL, NULL, 5, '22/03/2024 17:12:13', NULL),
(294, 59, NULL, NULL, 5, '22/03/2024 17:20:34', NULL),
(295, 59, NULL, NULL, 5, '22/03/2024 17:20:35', NULL),
(296, 59, NULL, NULL, 5, '22/03/2024 17:20:35', NULL),
(297, 59, NULL, NULL, 5, '22/03/2024 17:20:36', NULL),
(298, 59, NULL, NULL, 5, '22/03/2024 17:21:45', NULL),
(299, 59, NULL, NULL, 5, '22/03/2024 17:21:46', NULL),
(300, 59, NULL, NULL, 5, '22/03/2024 17:21:47', NULL),
(301, 59, NULL, NULL, 5, '22/03/2024 17:21:48', NULL),
(302, 59, NULL, NULL, 5, '22/03/2024 17:23:20', NULL),
(303, 59, NULL, NULL, 5, '22/03/2024 17:24:19', NULL),
(304, 59, NULL, NULL, 5, '22/03/2024 17:26:22', NULL),
(305, 59, NULL, NULL, 5, '22/03/2024 17:32:02', NULL),
(306, 59, NULL, NULL, 5, '22/03/2024 17:46:27', NULL),
(307, 59, NULL, NULL, 5, '22/03/2024 17:48:00', NULL),
(308, 59, NULL, NULL, 5, '22/03/2024 17:48:01', NULL),
(309, NULL, 'Mariana', 'doesntmatter@gmail.com', NULL, '22/03/2024 06:09:09', 'Muito boa! Experiência incrível!'),
(310, 59, NULL, NULL, 5, '22/03/2024 18:21:43', NULL),
(311, 59, NULL, NULL, 5, '22/03/2024 18:21:43', NULL),
(312, 59, NULL, NULL, 5, '22/03/2024 18:47:46', NULL),
(313, 59, NULL, NULL, 5, '22/03/2024 18:47:48', NULL),
(314, 59, NULL, NULL, 5, '22/03/2024 18:47:48', NULL),
(315, 59, NULL, NULL, 4, '23/03/2024 09:34:04', NULL),
(316, 59, NULL, NULL, 5, '23/03/2024 09:35:31', NULL),
(317, 59, NULL, NULL, 5, '23/03/2024 09:51:14', NULL),
(318, 59, NULL, NULL, 5, '23/03/2024 09:56:51', NULL),
(319, 59, NULL, NULL, 5, '23/03/2024 09:56:51', NULL),
(320, 59, NULL, NULL, 5, '23/03/2024 10:36:07', NULL),
(321, 59, NULL, NULL, 5, '23/03/2024 10:39:43', NULL),
(322, 59, NULL, NULL, 5, '23/03/2024 10:39:43', NULL),
(323, 59, NULL, NULL, 5, '23/03/2024 10:51:01', NULL),
(324, 59, NULL, NULL, 5, '23/03/2024 10:51:01', NULL),
(325, 59, NULL, NULL, 5, '23/03/2024 10:51:02', NULL),
(326, 59, NULL, NULL, 5, '23/03/2024 10:54:41', NULL),
(327, 59, NULL, NULL, 4, '23/03/2024 10:56:45', NULL),
(328, 59, NULL, NULL, 4, '23/03/2024 10:56:46', NULL),
(329, 59, NULL, NULL, 5, '23/03/2024 11:17:52', NULL),
(330, 59, NULL, NULL, 5, '23/03/2024 11:17:52', NULL),
(331, 59, NULL, NULL, 5, '23/03/2024 11:17:53', NULL),
(332, 59, NULL, NULL, 5, '23/03/2024 11:29:17', NULL),
(333, 59, NULL, NULL, 5, '23/03/2024 11:29:17', NULL),
(334, 59, NULL, NULL, 5, '23/03/2024 11:29:18', NULL),
(335, 59, NULL, NULL, 5, '23/03/2024 11:33:59', NULL),
(336, 59, NULL, NULL, 4, '23/03/2024 11:48:07', NULL),
(337, 59, NULL, NULL, 5, '23/03/2024 11:59:14', NULL),
(338, 59, NULL, NULL, 5, '23/03/2024 12:20:24', NULL),
(339, 59, NULL, NULL, 5, '23/03/2024 12:25:48', NULL),
(340, 59, NULL, NULL, 5, '23/03/2024 12:27:32', NULL),
(341, 59, NULL, NULL, 5, '23/03/2024 12:27:33', NULL),
(342, 59, NULL, NULL, 5, '23/03/2024 12:36:19', NULL),
(343, 59, NULL, NULL, 5, '23/03/2024 12:38:05', NULL),
(344, 59, NULL, NULL, 5, '23/03/2024 12:38:06', NULL),
(345, NULL, 'manu', 'doesntmatter@gmail.com', NULL, '23/03/2024 09:52:32', 'gostei muito da experiência, muito simpáticos.'),
(346, NULL, '', '', NULL, '21/05/2024 03:17:31', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `id`
--
ALTER TABLE `id`
  ADD PRIMARY KEY (`pp`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `opinioes`
--
ALTER TABLE `opinioes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `id`
--
ALTER TABLE `id`
  MODIFY `pp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de tabela `opinioes`
--
ALTER TABLE `opinioes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
