-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Мар 25 2018 г., 17:22
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u348087550_main`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sites`
--

INSERT INTO `sites` (`id`, `url`, `reason`) VALUES
(2, 'Test', '123'),
(3, 'google.ru', 'Test'),
(4, 'vk.com', 'Social network'),
(5, 'vkantakte.ru', '???? ?????????? ????'),
(6, 'vkantakte.ru', 'Test Fish Site'),
(7, 'ya.ru', 'test'),
(8, 'ya.ru', 'Test'),
(9, 'mail.ru', 'Test 22'),
(10, 'ya.ru', '111');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
