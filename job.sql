-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.2
-- Время создания: Ноя 28 2024 г., 06:35
-- Версия сервера: 8.2.0
-- Версия PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `job`
--

-- --------------------------------------------------------

--
-- Структура таблицы `apply`
--

CREATE TABLE `apply` (
  `id` int NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `link` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_vac` int DEFAULT NULL,
  `vac_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `apply`
--

INSERT INTO `apply` (`id`, `name`, `email`, `link`, `id_vac`, `vac_name`, `user_id`, `file`, `description`) VALUES
(8, 'name', 'sthol680@gmail.com', 'dscdsc', 8, 'job_2', 1, NULL, 'llll555'),
(9, 'name', 'sthol680@gmail.com', '', 6, 'job_2', 2, NULL, 'hhhh888'),
(10, 'category_4', 'andrusonokivan@gmail.com', 'dsvdsvds', 7, 'vacancy_2', 2, NULL, 'pppp9'),
(11, 'name', 'sthol680@gmail.com', 'sdf', 9, 'vacancy_1', 2, NULL, 'ff'),
(12, 'name', 'email@assfdfds', 'dsvdsv', 12, 'vacancy_2.2', 1, NULL, 'dvdfbdfbdf');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_popular` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `is_popular`) VALUES
(1, 'cat_1', 1),
(2, 'cat_2', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `crud`
--

CREATE TABLE `crud` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `skill_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `user_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `experience` tinyint(1) NOT NULL,
  `type_of_employment` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `crud`
--

INSERT INTO `crud` (`id`, `name`, `slug`, `price`, `category_id`, `skill_level`, `description`, `active`, `user_id`, `cat_id`, `experience`, `type_of_employment`) VALUES
(9, 'vacancy_1', '', 200000, 1, 'csdcsdc', 'sacsadcsc', NULL, 2, 1, 1, 1),
(10, 'vacancy_1.2', '', 3324123, 2, 'csdcsdc', 'sacsadcsc', NULL, 2, 2, 0, 1),
(11, 'vacancy_2', 'dsv', 324324321, 2, 'csdcsdc', 'sacsadcsc', NULL, 1, 2, 1, 0),
(12, 'vacancy_2.2', '', 111111, 2, 'csdcsdc', 'sacsadcsc', NULL, 1, 2, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `company_name`, `email`, `pass`, `image`) VALUES
(1, 'company_1', '1', '1', '/uploads/spectiv.png'),
(2, 'company_2', '2', '2', '/uploads/i.ico');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `apply`
--
ALTER TABLE `apply`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
