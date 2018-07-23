-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 23 2018 г., 16:57
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
('wether', 'WetherTask::parseWether', '1 minutes', '2018-07-20 18:03:47');

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
(4, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"744\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"24\";}', '2018-07-23 12:01:02'),
(5, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"744\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"24\";}', '2018-07-23 12:03:40'),
(6, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"744\";s:3:\"hum\";s:2:\"65\";s:5:\"water\";s:2:\"24\";}', '2018-07-23 12:07:10'),
(7, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"9\";s:4:\"temp\";s:2:\"25\";s:5:\"press\";s:3:\"743\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"24\";}', '2018-07-23 15:56:14'),
(8, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"9\";s:4:\"temp\";s:2:\"25\";s:5:\"press\";s:3:\"743\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"24\";}', '2018-07-23 15:57:20'),
(9, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"9\";s:4:\"temp\";s:2:\"25\";s:5:\"press\";s:3:\"743\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"24\";}', '2018-07-23 15:58:05'),
(10, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"9\";s:4:\"temp\";s:2:\"25\";s:5:\"press\";s:3:\"743\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"24\";}', '2018-07-23 15:58:57'),
(11, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"9\";s:4:\"temp\";s:2:\"25\";s:5:\"press\";s:3:\"743\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"24\";}', '2018-07-23 15:59:02');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
