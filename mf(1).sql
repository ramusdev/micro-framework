-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 27 2018 г., 17:55
-- Версия сервера: 5.6.34
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mf`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cron`
--

CREATE TABLE `cron` (
  `name` varchar(200) NOT NULL,
  `action` longtext NOT NULL,
  `frequency` longtext NOT NULL,
  `last` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cron`
--

INSERT INTO `cron` (`name`, `action`, `frequency`, `last`) VALUES
('wether_1', 'GrabWether::grabWether', '10 minutes', '2018-07-27 17:50:48');

-- --------------------------------------------------------

--
-- Структура таблицы `wether`
--

CREATE TABLE `wether` (
  `id` int(11) NOT NULL,
  `wether` text NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wether`
--

INSERT INTO `wether` (`id`, `wether`, `last_update`) VALUES
(23, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 10:36:47'),
(24, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 10:43:06'),
(25, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 10:52:28'),
(26, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 11:01:37'),
(27, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 11:11:08'),
(28, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 11:15:40'),
(29, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 11:24:05'),
(30, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 11:28:03'),
(31, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 11:38:23'),
(32, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 12:00:25'),
(33, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 12:14:22'),
(34, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"27\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 12:25:00'),
(35, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"31\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"54\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 12:48:43'),
(36, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"31\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"54\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 12:58:49'),
(37, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"31\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"54\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 14:04:52'),
(38, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"31\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"54\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 14:18:35'),
(39, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"31\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"54\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 14:28:36'),
(40, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"31\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"54\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 14:38:38'),
(41, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"31\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"54\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 14:50:06'),
(42, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"31\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"54\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 15:03:10'),
(43, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"31\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"54\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 15:18:34'),
(44, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 15:29:16'),
(45, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 15:43:22'),
(46, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 15:58:08'),
(47, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 16:08:36'),
(48, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 16:33:03'),
(49, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 16:43:47'),
(50, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 17:04:01'),
(51, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 17:15:36'),
(52, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 17:29:39'),
(53, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 17:40:16'),
(54, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-27 17:50:49');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cron`
--
ALTER TABLE `cron`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `wether`
--
ALTER TABLE `wether`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wether`
--
ALTER TABLE `wether`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
