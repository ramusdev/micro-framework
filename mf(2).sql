-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 30 2018 г., 14:16
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
('weather', 'GrabWeather::grabWeather', '10 minutes', '2018-07-30 14:09:34');

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `review`
--

INSERT INTO `review` (`id`, `name`, `email`, `message`, `add_date`) VALUES
(3, 'name', 'r@g.com', 'message', '2018-07-30 11:57:46'),
(4, 'name', 'r@g.com', 'message', '2018-07-30 11:58:11'),
(5, 'name', 'r@g.com', 'message', '2018-07-30 12:06:02'),
(6, 'Name from', 'r@g.com', 'Message', '2018-07-30 12:33:44'),
(7, 'Jon', 'jon@gmail.com', 'Message', '2018-07-30 12:40:11');

-- --------------------------------------------------------

--
-- Структура таблицы `weather`
--

CREATE TABLE `weather` (
  `id` int(11) NOT NULL,
  `weather` text NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `weather`
--

INSERT INTO `weather` (`id`, `weather`, `last_update`) VALUES
(1, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 09:41:39'),
(2, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 09:43:30'),
(3, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 09:45:14'),
(4, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 09:48:02'),
(5, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 09:51:51'),
(6, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 09:54:51'),
(7, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 09:57:17'),
(8, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 10:07:41'),
(9, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 10:19:48'),
(10, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 10:45:22'),
(11, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 10:56:09'),
(12, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 11:35:33'),
(13, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 11:57:23'),
(14, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 12:13:04'),
(15, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 12:25:50'),
(16, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"4\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"747\";s:3:\"hum\";s:2:\"58\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 12:37:12'),
(17, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"5\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"748\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 14:09:34');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cron`
--
ALTER TABLE `cron`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
