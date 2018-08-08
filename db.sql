-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 08 2018 г., 16:08
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
('weather', 'GrabWeather::grabWeather', '5 minutes', '2018-08-08 16:07:00');

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
(7, 'Jon', 'jon@gmail.com', 'Message', '2018-07-30 12:40:11'),
(8, 'wegerwg', 'r@g.com', 'wehgerh', '2018-08-04 20:35:19');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL,
  `gender` text NOT NULL,
  `birthday` text NOT NULL,
  `role` text NOT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `gender`, `birthday`, `role`, `password`, `token`) VALUES
(12, 'roman', 'wegewr', 'r@g.com', 'wegweg', 'weggweg', 'user', '$2y$10$ZAw4R45DuvkS9tYPds.7ieQXKuKvqfZmG.DFegHHWgtC90e4GDdGG', '89f96335c91f306701626e7438e2614d848df95799fcfe2bfa66959a7e82643c0d0dfd4fdf255e3888b83cf3044cc268e8e60a0c304dcc84be2cca8bfc3e0738');

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
(130, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"6\";s:4:\"temp\";s:2:\"29\";s:5:\"press\";s:3:\"752\";s:3:\"hum\";s:2:\"33\";s:5:\"water\";s:2:\"25\";}', '2018-08-08 16:01:52'),
(131, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"6\";s:4:\"temp\";s:2:\"29\";s:5:\"press\";s:3:\"752\";s:3:\"hum\";s:2:\"33\";s:5:\"water\";s:2:\"25\";}', '2018-08-08 16:07:00');

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
-- Индексы таблицы `user`
--
ALTER TABLE `user`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
