-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 05 2018 г., 21:52
-- Версия сервера: 5.6.37
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
('weather', 'GrabWeather::grabWeather', '10 minutes', '2018-08-05 18:09:48');

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
  `password` text NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `gender`, `birthday`, `password`, `token`) VALUES
(3, 'roman', 'qwegwqg', 'r@g.com', 'weg', 'qweg', '$2y$10$nBx2HH3QLuNR1sVpaL9DWOj3oHCEy10ybTeTQcbNH0uZwuqJQhZG6', '2c790e0f42462eadbc872711fcd3f6048fe899528de1d4edabd2dc658c753b510e9bc2e257701e98e87d8f211557394534f054f4404d7c92443e62c699a5ca3a'),
(5, 'qegf', 'qweg', 'r2@gmail.com', 'wqeg', 'qeg', '$2y$10$xlDKhkHzN.S2Lxfk3AK3jehluvzRdFhxRFDIOvJOWhdabg5ovsvWa', '3cb3a618532752d5d88fed92fb2ea6d450d83f06fc026b05f12f8a3ff1186f3248d4391467c9a4cf94483c28d11712700d1303bb49755bdc614ff16399b85c87'),
(6, 'ewg', 'qwegwqg', 'r@g.com', 'ewgw', 'weg', '$2y$10$OD4yn0rZNurv5gEQQPFJXOcgZVO6WjzS.cLatvz.lcRJ4r/6C/L8u', '06ff836c7bad287ccb1f1146d6b10460e4243a80307ef00884b14f2923770d70dc659ff8a38899a5f22d6176019186a7da6a57eba90da0fc804506f66bcae9fd'),
(7, 'ewg', 'qwegwqg', 'rfwegfw@g.com', 'ewgw', 'weg', '$2y$10$piBLbugFDFiG4rQVKtqL6uZ03rmOpYBimsQEOXSjQJzXfPRHCBpQG', '84af4af6f4ef2dbd00b6f2492ae6ab3fae1cf86ebba59a9d0ad5943595b0a7b1cef6df9208f2ded9d7015dfdbce50aad0f16007b6d92c8473c678e03541f36da'),
(8, 'ewg', 'qwegwqg', 'rfwegfw@g.com', 'ewgw', 'weg', '$2y$10$ttFc37MfehSnRv00F.mG8.IEotyhQj9qSoASgVQRelU67K7yilWDa', 'a6683387d232dadd3311d8b99d9b39c15b485fba94865d98069b10fdb81aae5761a477485330863fa84f41808aeaaa5220f0c5cb1d01f9969dc70bf3aa5f994c'),
(9, 'roman', 'ewqgwg', 'roman@gmail.com', 'ewgw', 'wegwg', '$2y$10$Fs3W6QxYbMI8D4u6F0i0sOcFYBR4DS7WQHfd4gBZvthJVyVVnGBXK', 'b2e7cd54b7b628b6163480e0114f292fdc63b12c3f3579861b8102f9ef6e1f6bade2c46991dea8bd84917fa8cf72ea6ef7714baf215431a76ad683ac1eeda41c');

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
(17, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"5\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"748\";s:3:\"hum\";s:2:\"52\";s:5:\"water\";s:2:\"25\";}', '2018-07-30 14:09:34'),
(18, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"6\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"749\";s:3:\"hum\";s:2:\"35\";s:5:\"water\";s:2:\"25\";}', '2018-08-04 19:18:11'),
(19, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"6\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"749\";s:3:\"hum\";s:2:\"35\";s:5:\"water\";s:2:\"25\";}', '2018-08-04 20:14:58'),
(20, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"6\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"749\";s:3:\"hum\";s:2:\"35\";s:5:\"water\";s:2:\"25\";}', '2018-08-04 20:30:31'),
(21, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"23\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"57\";s:5:\"water\";s:2:\"25\";}', '2018-08-04 22:17:01'),
(22, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"23\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"57\";s:5:\"water\";s:2:\"25\";}', '2018-08-04 22:31:25'),
(23, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"23\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"57\";s:5:\"water\";s:2:\"25\";}', '2018-08-04 22:43:42'),
(24, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"23\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"57\";s:5:\"water\";s:2:\"25\";}', '2018-08-04 23:10:49'),
(25, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"23\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"57\";s:5:\"water\";s:2:\"25\";}', '2018-08-04 23:38:31'),
(26, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 10:28:45'),
(27, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 11:10:35'),
(28, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 11:20:45'),
(29, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 11:41:04'),
(30, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"2\";s:4:\"temp\";s:2:\"26\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"62\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 11:51:44'),
(31, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"46\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 12:38:19'),
(32, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"46\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 12:56:23'),
(33, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"46\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 13:37:26'),
(34, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"46\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 14:06:33'),
(35, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"30\";s:5:\"press\";s:3:\"750\";s:3:\"hum\";s:2:\"46\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 14:38:37'),
(36, 'O:8:\"stdClass\":5:{s:4:\"wind\";s:1:\"3\";s:4:\"temp\";s:2:\"32\";s:5:\"press\";s:3:\"749\";s:3:\"hum\";s:2:\"38\";s:5:\"water\";s:2:\"25\";}', '2018-08-05 18:09:48');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
