-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 23 2017 г., 14:59
-- Версия сервера: 5.7.13
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `helpdesk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'IT', NULL, NULL),
(2, 'Cars', NULL, NULL),
(3, 'Scince', NULL, NULL),
(4, 'Web', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `ticket_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `ticket_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'Hello!', '2017-04-23 08:52:28', '2017-04-23 08:52:28'),
(2, 3, 1, 'Ohh... Im tired too...', '2017-04-23 08:53:09', '2017-04-23 08:53:09'),
(3, 1, 1, 'Ok, how can i help you?', '2017-04-23 08:54:56', '2017-04-23 08:54:56'),
(4, 1, 3, 'Morbi iaculis lectus magna, in aliquet nunc blandit a. Maecenas eu ante a velit fringilla ultricies ac ac dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget eros vitae leo vestibulum consectetur a sit amet lorem. Nulla malesuada condimentum urna egestas efficitur.', '2017-04-23 08:56:27', '2017-04-23 08:56:27'),
(5, 4, 3, 'Aenean finibus sagittis orci, in sodales nibh laoreet quis. Quisque ante ipsum, maximus ut aliquam quis, sollicitudin sed massa. Donec ac nisi placerat, placerat justo a, ullamcorper eros. Proin id hendrerit turpis.', '2017-04-23 08:57:00', '2017-04-23 08:57:00'),
(6, 2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt velit at nisi semper eleifend. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus in interdum odio. Proin in turpis nibh. Maecenas feugiat dolor a aliquet tincidunt. Suspendisse volutpat commodo libero, ac commodo velit placerat nec.', '2017-04-23 08:58:57', '2017-04-23 08:58:57'),
(7, 2, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt velit at nisi semper eleifend. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus in interdum odio. Proin in turpis nibh. Maecenas feugiat dolor a aliquet tincidunt. Suspendisse volutpat commodo libero, ac commodo velit placerat nec.', '2017-04-23 08:59:23', '2017-04-23 08:59:23');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2017_04_21_150833_create_tickets_table', 1),
(14, '2017_04_21_151815_create_categories_table', 1),
(15, '2017_04_21_185834_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `ticket_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_src` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `category_id`, `ticket_id`, `title`, `priority`, `message`, `status`, `file_src`, `created_at`, `updated_at`) VALUES
(1, 3, 4, '5FOU7L1GSC', 'Testtest', 'medium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt velit at nisi semper eleifend. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus in interdum odio. Proin in turpis nibh. Maecenas feugiat dolor a aliquet tincidunt. Suspendisse volutpat commodo libero, ac commodo velit placerat nec. Duis eget mattis mauris. Maecenas accumsan, est vitae ultrices blandit, dolor ante ultrices nulla, sit amet efficitur velit lorem quis purus. Morbi lacinia sem quis nisl efficitur, ac malesuada orci pharetra. Proin volutpat ipsum vulputate nisl fringilla, quis lacinia ante pellentesque.', 'Open', 'f4ef94d62af71befa0e8b410cf73a18c_view.jpg', '2017-04-23 08:44:46', '2017-04-23 08:44:46'),
(2, 3, 4, 'CP0VTGZUVO', 'New trouble', 'high', 'Morbi iaculis lectus magna, in aliquet nunc blandit a. Maecenas eu ante a velit fringilla ultricies ac ac dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget eros vitae leo vestibulum consectetur a sit amet lorem. Nulla malesuada condimentum urna egestas efficitur. Morbi accumsan vehicula erat, a sollicitudin elit iaculis eget. Fusce sed accumsan nulla. Pellentesque hendrerit lorem ipsum, quis gravida turpis volutpat at. Donec leo metus, sagittis ac finibus vulputate, porta venenatis eros. Nam congue molestie orci vitae ', 'Open', 'images 2.jpg', '2017-04-23 08:45:10', '2017-04-23 08:45:10'),
(3, 3, 1, 'UAZFH2WXRC', 'Ohh.. im really tired...', 'low', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt velit at nisi semper eleifend. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus in interdum odio. Proin in turpis nibh. Maecenas feugiat dolor a aliquet tincidunt. Suspendisse volutpat commodo libero, ac commodo velit placerat nec. Duis eget mattis mauris. Maecenas accumsan, est vitae ultrices blandit, dolor ante ultrices nulla, sit amet efficitur velit lorem quis purus. Morbi lacinia sem quis nisl efficitur, ac malesuada orci pharetra. Proin volutpat ipsum vulputate nisl fringilla, quis lacinia ante pellentesque.', 'Open', 'images.jpg', '2017-04-23 08:46:29', '2017-04-23 08:46:29'),
(4, 3, 2, 'WPA4HWNZUR', 'This is troubleshoot without file', 'high', 'Hi!', 'Open', NULL, '2017-04-23 08:47:04', '2017-04-23 08:47:04');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(10) unsigned NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$5kxEvjN03T9Hf6Ix2MjVTexTzhsRUjvSHBctFb8cfKRxGIOFYmvKG', 1, 'mDLXkXtvWdUqexxo7UKlvjns5o9zjhRZIMCnJgzh2a0q9nGfNHFtmm3log5B', '2017-04-21 18:00:22', '2017-04-21 18:00:22'),
(2, 'Vova', 'vovik1@gmail.com', '$2y$10$uif.LKO9IYVrr4rMewOj7.f4OPfwHBtEwJdSNZ.USybHNENqg/4NC', 0, 'ScZyiglwCtoAIlBLM7TXioMUqZzgjShBYc9FPTkoVdVT8EFZafcxkmyxlBHe', '2017-04-21 18:04:20', '2017-04-21 18:04:20'),
(3, 'Test', 'test@test.com', '$2y$10$/Z9mwFhR4FRHMN1NfHmJY.4ftHwvGap19ZESblhNPNMp4238eS.IG', 0, 'dVbTZtK1VuLW0wwsYharR5O9jooLwyu2E0anefW3WFLLNABGtO4e5XwuoyaK', '2017-04-21 18:04:38', '2017-04-21 18:04:38');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
