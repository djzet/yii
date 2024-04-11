-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 11 2024 г., 14:57
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `confibe`
--
CREATE DATABASE IF NOT EXISTS `confibe` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `confibe`;

-- --------------------------------------------------------

--
-- Структура таблицы `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `addresses`
--

INSERT INTO `addresses` (`id`, `city`, `address`) VALUES
(1, 'Наро-Фоминск', 'наб. Гагарина, 65'),
(2, 'Домодедово', 'проезд Ломоносова, 18'),
(3, 'Москва', 'проезд Косиора, 71'),
(4, 'Дорохово', 'въезд Гоголя, 75'),
(5, 'Луховицы', 'пл. Гоголя, 60'),
(6, 'Одинцово', 'шоссе 1905 года, 18'),
(7, 'Мытищи', 'въезд Ладыгина, 92'),
(8, 'Щёлково', 'пр. Бухарестская, 25'),
(9, 'Люберцы', 'ул. Славы, 32'),
(10, 'Раменское', 'пр. Гагарина, 77');

-- --------------------------------------------------------

--
-- Структура таблицы `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `commissions`
--

INSERT INTO `commissions` (`id`, `title`) VALUES
(1, 'Dr.'),
(2, 'Dr.');

-- --------------------------------------------------------

--
-- Структура таблицы `competences`
--

CREATE TABLE `competences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `competences`
--

INSERT INTO `competences` (`id`, `title`) VALUES
(1, 'Dr.'),
(2, 'Mr.');

-- --------------------------------------------------------

--
-- Структура таблицы `conferences`
--

CREATE TABLE `conferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_conference` datetime NOT NULL,
  `end_conference` datetime NOT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `speaker_rating` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `remaining_tickets` int(11) DEFAULT NULL,
  `sold_tickets` int(11) DEFAULT NULL,
  `qr` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `platform_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `conferences`
--

INSERT INTO `conferences` (`id`, `title`, `start_conference`, `end_conference`, `likes`, `dislikes`, `photo`, `speaker_rating`, `description`, `remaining_tickets`, `sold_tickets`, `qr`, `status`, `platform_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Mrs.', '2024-05-20 06:29:43', '2024-07-09 23:51:36', 36, 56, 'Mr.', 4, 'Prof.', 90, 65, 'Prof.', 'Закрыта', 1, 2, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(2, 'Prof.', '2024-04-04 11:59:30', '2024-07-05 06:47:44', 42, 60, 'Prof.', 83, 'Dr.', 12, 58, 'Ms.', 'Закрыта', 2, 5, '2024-04-04 12:05:44', '2024-04-04 04:59:30'),
(3, 'Prof.', '2024-05-15 07:35:59', '2024-07-20 18:14:00', 55, 5, 'Miss', 92, 'Mr.', 95, 36, 'Dr.', 'Открыта', 3, 10, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(4, 'Mrs.', '2024-06-04 05:40:44', '2024-07-18 03:34:42', 61, 37, 'Miss', 71, 'Dr.', 20, 37, 'Prof.', 'Закрыта', 4, 12, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(5, 'Dr.', '2024-04-07 23:37:42', '2024-07-22 17:29:10', 93, 55, 'Mrs.', 45, 'Mrs.', 89, 98, 'Prof.', 'Закрыта', 5, 14, '2024-04-07 09:06:33', '2024-04-04 04:59:30'),
(6, 'Dr.', '2024-04-07 23:37:42', '2024-07-26 13:32:17', 80, 43, 'Prof.', 8, 'Prof.', 42, 96, 'Mr.', 'Закрыта', 6, 16, '2024-04-07 09:06:33', '2024-04-04 04:59:30'),
(7, 'Prof.', '2024-04-04 11:59:30', '2024-07-15 13:04:26', 61, 10, 'Mr.', 81, 'Ms.', 94, 9, 'Mr.', 'Неопределена', 7, 18, '2024-04-04 12:05:44', '2024-04-04 04:59:30'),
(8, 'Dr.', '2024-05-20 09:09:58', '2024-07-16 04:16:33', 55, 44, 'Prof.', 14, 'Dr.', 94, 44, 'Dr.', 'Открыта', 8, 21, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(9, 'Mr.', '2024-05-31 22:14:49', '2024-07-28 18:00:05', 74, 6, 'Prof.', 68, 'Prof.', 96, 29, 'Mrs.', 'Закрыта', 9, 24, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(10, 'Prof.', '2024-04-07 23:37:42', '2024-07-27 05:51:16', 89, 74, 'Mrs.', 8, 'Mr.', 12, 44, 'Mr.', 'Открыта', 10, 26, '2024-04-07 09:06:33', '2024-04-04 04:59:30');

-- --------------------------------------------------------

--
-- Структура таблицы `conference_organizers`
--

CREATE TABLE `conference_organizers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conference_id` bigint(20) UNSIGNED NOT NULL,
  `organizer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `conference_organizers`
--

INSERT INTO `conference_organizers` (`id`, `conference_id`, `organizer_id`) VALUES
(1, 7, 1),
(2, 8, 2),
(3, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `conference_sectors`
--

CREATE TABLE `conference_sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conference_id` bigint(20) UNSIGNED NOT NULL,
  `sector_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `conference_sectors`
--

INSERT INTO `conference_sectors` (`id`, `conference_id`, `sector_id`) VALUES
(1, 3, 1),
(2, 4, 2),
(3, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `conference_speakers`
--

CREATE TABLE `conference_speakers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conference_id` bigint(20) UNSIGNED NOT NULL,
  `speaker_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `conference_speakers`
--

INSERT INTO `conference_speakers` (`id`, `conference_id`, `speaker_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `dates`
--

CREATE TABLE `dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `dates`
--

INSERT INTO `dates` (`id`, `date`, `section_id`) VALUES
(1, '2024-04-05 09:56:24', 1),
(2, '2024-04-04 15:23:12', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mark` tinyint(1) NOT NULL,
  `favourite_id` int(11) NOT NULL,
  `favourite_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_01_105650_create_promotions_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2024_02_07_052037_create_roles_table', 1),
(4, '2024_02_07_052137_create_user_roles_table', 1),
(5, '2024_02_07_054633_create_speakers_table', 1),
(6, '2024_02_07_062017_create_competences_table', 1),
(7, '2024_02_07_062322_create_speaker_competences_table', 1),
(8, '2024_02_07_062330_create_addresses_table', 1),
(9, '2024_02_07_062340_create_platforms_table', 1),
(10, '2024_02_07_062424_create_conferences_table', 1),
(11, '2024_02_07_063454_create_conference_speakers_table', 1),
(12, '2024_02_07_063534_create_sectors_table', 1),
(13, '2024_02_07_063609_create_conference_sectors_table', 1),
(14, '2024_02_07_063704_create_sections_table', 1),
(15, '2024_02_07_063829_create_dates_table', 1),
(16, '2024_02_07_063910_create_themes_table', 1),
(17, '2024_02_07_064031_create_organizers_table', 1),
(18, '2024_02_07_064256_create_conference_organizers_table', 1),
(19, '2024_02_07_064411_create_commissions_table', 1),
(20, '2024_02_07_064446_create_tickets_table', 1),
(21, '2024_02_07_064547_create_usefuls_table', 1),
(22, '2024_02_07_065212_create_favourites_table', 1),
(23, '2024_04_01_101257_create_speaker_ratings_table', 1),
(24, '2024_04_01_105712_create_promotion_transactions_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `organizers`
--

CREATE TABLE `organizers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `held_conferences` int(11) DEFAULT NULL,
  `best_conference` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `inn` varchar(255) NOT NULL,
  `name_organization` varchar(255) NOT NULL,
  `bik` varchar(255) NOT NULL,
  `current_account` varchar(255) NOT NULL,
  `agreement` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `organizers`
--

INSERT INTO `organizers` (`id`, `title`, `held_conferences`, `best_conference`, `phone`, `email`, `photo`, `inn`, `name_organization`, `bik`, `current_account`, `agreement`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Prof.', 77, 'Dr.', '(812) 647-37-00', 'egrigoreva@inbox.ru', 'Dr.', '355773624980', 'Валентина', '153700518', '56844231212971900496', 'Prof.', 19, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(2, 'Miss', 4, 'Dr.', '(495) 100-3643', 'rsavin@danilov.org', 'Dr.', '790596960671', 'Пётр', '914031832', '82530642953179255212', 'Mr.', 22, '2024-04-04 04:59:30', '2024-04-04 04:59:30');

-- --------------------------------------------------------

--
-- Структура таблицы `platforms`
--

CREATE TABLE `platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `capacity_people` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `agreement` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `platforms`
--

INSERT INTO `platforms` (`id`, `title`, `phone`, `email`, `photo`, `capacity_people`, `description`, `status`, `agreement`, `user_id`, `address_id`, `created_at`, `updated_at`) VALUES
(1, 'Mr.', '(812) 720-42-74', 'kolobova.vladlen@agafonova.org', 'Mr.', 66, 'Adipisci ipsa quisquam voluptatum recusandae et nostrum. Quidem velit voluptate dicta id.', 'Открыта', 'Prof.', 1, 1, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(2, 'Prof.', '(35222) 71-0501', 'dementev.illarion@list.ru', 'Prof.', 26, 'Omnis consequatur vitae est quis animi nostrum architecto. Dolore voluptates veniam nihil deserunt. Velit dolores nemo libero neque debitis aliquam. Recusandae esse quidem sed inventore.', 'Закрыта', 'Prof.', 4, 2, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(3, 'Prof.', '8-800-619-3986', 'titova.rodion@bk.ru', 'Ms.', 74, 'Vel nemo laborum soluta dolorem ut est sint. Sed consequuntur sunt aliquam nostrum beatae est odio. Illo dolor quis aut perspiciatis tempore ipsa quia. Laboriosam saepe distinctio nobis.', 'Неопределена', 'Miss', 9, 3, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(4, 'Ms.', '8-800-649-5336', 'nikita.nikitina@kononova.net', 'Mrs.', 64, 'Reprehenderit necessitatibus et iusto facilis mollitia. Dolorum quia nihil excepturi. Odit sit facere dolor culpa consequatur.', 'Закрыта', 'Prof.', 11, 4, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(5, 'Prof.', '(812) 140-37-66', 'regina.ykuseva@ya.ru', 'Mr.', 64, 'Optio beatae nostrum laudantium consequuntur saepe voluptates et. Beatae vel placeat ex repellendus quia voluptas. Et est nisi inventore ea cupiditate iusto. Ipsum autem esse quo. Ut et earum ratione nam qui neque iste.', 'Неопределена', 'Dr.', 13, 5, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(6, 'Mr.', '(35222) 86-9826', 'agafonova.ruslan@bk.ru', 'Ms.', 57, 'Et unde quidem rerum dicta impedit in at. Nihil qui repudiandae ex culpa. Id eos sunt cumque neque laboriosam repellendus nihil.', 'Неопределена', 'Miss', 15, 6, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(7, 'Dr.', '8-800-729-8219', 'rostislav.kudrysova@rambler.ru', 'Ms.', 52, 'Temporibus dolores voluptates deserunt. Sint consequatur nobis reprehenderit itaque libero beatae quam. Maxime atque quasi harum consequuntur. Quae qui qui consequuntur eum earum. Alias est eius est autem blanditiis.', 'Неопределена', 'Miss', 17, 7, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(8, 'Mr.', '(35222) 01-5745', 'klavdiy30@gmail.com', 'Ms.', 54, 'Sed dolorum est magni laudantium amet. Omnis et beatae sint vel. Quas quaerat et ut non voluptates.', 'Открыта', 'Dr.', 20, 8, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(9, 'Miss', '+7 (922) 381-2635', 'yroslava.pestov@gerasimova.com', 'Prof.', 42, 'Mollitia ratione eligendi perspiciatis repellendus quae id. Ea qui voluptatem sunt. Vel et quaerat in. Sunt nobis veniam eveniet consequatur placeat perspiciatis.', 'Неопределена', 'Dr.', 23, 9, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(10, 'Dr.', '(495) 285-7681', 'ksergeev@eliseev.ru', 'Prof.', 31, 'Nobis eaque quo ut quis repudiandae dolor minima at. Enim molestiae fuga consectetur corrupti. Illum consequatur sapiente impedit et itaque. Asperiores praesentium quos dolore necessitatibus aliquam.', 'Неопределена', 'Prof.', 25, 10, '2024-04-04 04:59:30', '2024-04-04 04:59:30');

-- --------------------------------------------------------

--
-- Структура таблицы `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `price`) VALUES
(1, 'Рекомендуемые Спикеры на сутки', 2000.00),
(2, 'Рекомендуемые Спикеры на неделю', 5000.00),
(3, 'Спикер дня на сутки', 5000.00),
(4, 'Рекомендуемые Спикеры на сутки', 3000.00),
(5, 'Спикер дня на сутки', 5000.00),
(6, 'Рекомендуемые Спикеры на сутки', 2000.00),
(7, 'Рекомендуемые Спикеры на сутки', 2000.00);

-- --------------------------------------------------------

--
-- Структура таблицы `promotion_transactions`
--

CREATE TABLE `promotion_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `speaker_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `title`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `conference_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id`, `title`, `conference_id`) VALUES
(1, 'Prof.', 9),
(2, 'Dr.', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `sectors`
--

CREATE TABLE `sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sectors`
--

INSERT INTO `sectors` (`id`, `title`) VALUES
(1, 'Mrs.'),
(2, 'Miss');

-- --------------------------------------------------------

--
-- Структура таблицы `speakers`
--

CREATE TABLE `speakers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `patronymic` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `work` varchar(255) NOT NULL,
  `vk` varchar(255) NOT NULL,
  `telegram` varchar(255) NOT NULL,
  `qr` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `number_rating` int(11) NOT NULL,
  `expertise` int(11) NOT NULL,
  `charisma` int(11) NOT NULL,
  `eloquence` int(11) NOT NULL,
  `influencer` tinyint(1) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `speakers`
--

INSERT INTO `speakers` (`id`, `surname`, `name`, `patronymic`, `photo`, `description`, `work`, `vk`, `telegram`, `qr`, `rating`, `number_rating`, `expertise`, `charisma`, `eloquence`, `influencer`, `user_id`, `promotion_id`, `created_at`, `updated_at`) VALUES
(1, 'Василиса', 'Лилия', 'Субботина', 'Dr.', 'Ut totam doloribus ratione sit et quasi delectus ad. Harum fuga ullam nihil mollitia recusandae sapiente incidunt accusantium. Eum velit rerum ea quam pariatur doloremque. Odit et repellendus alias aut.', 'Бизнес-аналитик', 'http://www.mikailov.ru/', 'http://www.tikonova.com/minima-magni-et-dolores-quas.html', 'Miss', 32, 31, 20, 52, 21, 0, 3, 1, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(2, 'Кузьма', 'Ростислав', 'Дроздова', 'Ms.', 'Enim voluptatem tenetur nesciunt ducimus maxime adipisci voluptatum. Est voluptas et voluptatibus facilis aspernatur ipsa. Et ipsa odio velit harum laborum et.', 'Диджей', 'http://www.lavrenteva.ru/', 'http://www.tvetkova.ru/ea-quaerat-ullam-eligendi-quia-dolorem.html', 'Dr.', 40, 90, 43, 79, 92, 0, 6, 2, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(3, 'Розалина', 'Марк', 'Потапов', 'Mr.', 'Esse et eaque eum libero. A ut dolor ipsum dolor omnis sequi quo dolorum. Quas voluptas dolorem praesentium incidunt alias.', 'Бестиарий (гладиатор)', 'http://www.kuzmina.com/', 'http://www.filatova.com/eos-labore-quo-assumenda-quia-non-cumque-libero.html', 'Dr.', 10, 84, 27, 91, 18, 0, 7, 3, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(4, 'Людмила', 'Назар', 'Кононов', 'Dr.', 'Ut cumque est tenetur vitae id. Optio repellendus dolor repellat itaque quaerat illum. Rerum sed sint totam omnis.', 'Дипломат', 'http://sokolova.net/quae-deserunt-ut-aperiam-atque-quo-occaecati-et-quam.html', 'http://www.moiseeva.org/distinctio-ea-adipisci-voluptatum-esse.html', 'Dr.', 36, 90, 58, 74, 1, 1, 8, 4, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(5, 'Тимур', 'Лидия', 'Яковлев', 'Ms.', 'Voluptas corrupti et dolores voluptatum. Voluptatum autem voluptatem impedit impedit qui quam. Laborum dolores magnam suscipit eos.', 'Жокей', 'http://ignateva.ru/', 'http://kapustina.ru/sunt-placeat-et-illum-illum-dignissimos-fugiat-voluptas', 'Miss', 34, 40, 93, 14, 32, 0, 29, 5, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(6, 'Эдуард', 'Алла', 'Владимиров', 'Mr.', 'Vitae sit sit consequatur fugit quis aspernatur deserunt. Doloremque corporis expedita omnis nesciunt. Perferendis eos velit vitae nam ratione ipsam nemo.', 'Абразивоструйщик', 'http://www.bobylev.org/corrupti-cumque-aut-ipsum-quam', 'http://ykovleva.org/assumenda-modi-est-quo-nostrum-quidem-enim-aut', 'Dr.', 32, 28, 94, 92, 72, 1, 30, 6, '2024-04-04 04:59:30', '2024-04-04 04:59:30');

-- --------------------------------------------------------

--
-- Структура таблицы `speaker_competences`
--

CREATE TABLE `speaker_competences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `speaker_id` bigint(20) UNSIGNED NOT NULL,
  `competence_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `speaker_competences`
--

INSERT INTO `speaker_competences` (`id`, `speaker_id`, `competence_id`) VALUES
(1, 3, 1),
(2, 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `speaker_ratings`
--

CREATE TABLE `speaker_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `speaker_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `speaker_ratings`
--

INSERT INTO `speaker_ratings` (`id`, `rating`, `speaker_id`, `created_at`, `updated_at`) VALUES
(1, 85, 5, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(2, 43, 6, '2024-04-04 04:59:30', '2024-04-04 04:59:30');

-- --------------------------------------------------------

--
-- Структура таблицы `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `topic_participants` text NOT NULL,
  `date_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `themes`
--

INSERT INTO `themes` (`id`, `time`, `topic_participants`, `date_id`) VALUES
(1, '04:12:22', 'Voluptas labore cum et. Sed sunt corrupti distinctio libero alias. Accusantium suscipit perferendis neque animi quisquam temporibus quis eos. Reprehenderit nobis ipsam enim nulla.', 1),
(2, '20:27:15', 'Fugiat consequuntur quo laboriosam quia aliquam. Et est aut aspernatur voluptas totam. Possimus molestiae blanditiis labore laborum eligendi fugit quaerat. Iure magni nostrum doloribus voluptas ut.', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `number_tickets` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `conference_id` bigint(20) UNSIGNED NOT NULL,
  `commission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `number_tickets`, `price`, `conference_id`, `commission_id`) VALUES
(1, 'Dr.', 94, 4, 5, 1),
(2, 'Dr.', 11, 38, 6, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `usefuls`
--

CREATE TABLE `usefuls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `useful_id` text NOT NULL,
  `useful_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_confirmation` tinyint(1) DEFAULT NULL,
  `email_confirmation` tinyint(1) DEFAULT NULL,
  `vk_authorization` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `phone`, `email`, `phone_confirmation`, `email_confirmation`, `vk_authorization`, `created_at`, `updated_at`) VALUES
(1, '+7 (922) 087-1924', 'nnazarov@safonova.com', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(2, '(812) 217-07-09', 'tsergeev@inbox.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(3, '8-800-298-0581', 'hvladimirova@ermakov.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(4, '(812) 067-92-67', 'arkadii76@rambler.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(5, '8-800-661-5223', 'dobryny58@vorontova.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(6, '8-800-819-8229', 'prokor.simonova@tvetkov.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(7, '(495) 874-0459', 'levseeva@koroleva.org', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(8, '8-800-644-9739', 'umironov@list.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(9, '8-800-214-8116', 'erik99@sokolov.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(10, '8-800-970-0860', 'vil.bykov@medvedev.net', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(11, '+7 (922) 465-5990', 'nelli83@rambler.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(12, '(812) 836-81-15', 'veronika.kazakova@guseva.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(13, '8-800-891-1705', 'dbelousov@gmail.com', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(14, '+7 (922) 516-2911', 'lapin.german@rambler.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(15, '(495) 674-3533', 'lysy78@isakova.com', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(16, '8-800-151-5737', 'nadezda.strelkov@rambler.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(17, '+7 (922) 944-8121', 'avgust.ersov@dementev.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(18, '(495) 329-2726', 'ydin.kristina@egorov.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(19, '+7 (922) 185-1044', 'itimofeeva@mamontova.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(20, '(35222) 10-9360', 'aleksei.bogdanov@mail.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(21, '8-800-659-7089', 'czakarov@rozkov.com', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(22, '8-800-179-5086', 'boris68@ya.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(23, '(812) 838-50-07', 'ylii53@mail.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(24, '+7 (922) 312-1351', 'raisa75@mail.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(25, '(35222) 22-3784', 'vlasov.nika@yandex.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(26, '+7 (922) 606-7301', 'lev36@inbox.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(27, '+7 (922) 897-6299', 'sofy15@rambler.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(28, '8-800-057-1556', 'xmukina@list.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(29, '8-800-637-5264', 'elizaveta.lytkin@gmail.com', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30'),
(30, '(35222) 81-1243', 'inna.teterina@polykova.ru', NULL, NULL, NULL, '2024-04-04 04:59:30', '2024-04-04 04:59:30');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 27, 1),
(2, 28, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `conferences`
--
ALTER TABLE `conferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conferences_platform_id_foreign` (`platform_id`),
  ADD KEY `conferences_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `conference_organizers`
--
ALTER TABLE `conference_organizers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conference_organizers_conference_id_foreign` (`conference_id`),
  ADD KEY `conference_organizers_organizer_id_foreign` (`organizer_id`);

--
-- Индексы таблицы `conference_sectors`
--
ALTER TABLE `conference_sectors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conference_sectors_conference_id_foreign` (`conference_id`),
  ADD KEY `conference_sectors_sector_id_foreign` (`sector_id`);

--
-- Индексы таблицы `conference_speakers`
--
ALTER TABLE `conference_speakers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conference_speakers_conference_id_foreign` (`conference_id`),
  ADD KEY `conference_speakers_speaker_id_foreign` (`speaker_id`);

--
-- Индексы таблицы `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dates_section_id_foreign` (`section_id`);

--
-- Индексы таблицы `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `organizers`
--
ALTER TABLE `organizers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organizers_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `platforms_user_id_foreign` (`user_id`),
  ADD KEY `platforms_address_id_foreign` (`address_id`);

--
-- Индексы таблицы `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `promotion_transactions`
--
ALTER TABLE `promotion_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotion_transactions_speaker_id_foreign` (`speaker_id`),
  ADD KEY `promotion_transactions_promotion_id_foreign` (`promotion_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_conference_id_foreign` (`conference_id`);

--
-- Индексы таблицы `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speakers_user_id_foreign` (`user_id`),
  ADD KEY `speakers_promotion_id_foreign` (`promotion_id`);

--
-- Индексы таблицы `speaker_competences`
--
ALTER TABLE `speaker_competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speaker_competences_speaker_id_foreign` (`speaker_id`),
  ADD KEY `speaker_competences_competence_id_foreign` (`competence_id`);

--
-- Индексы таблицы `speaker_ratings`
--
ALTER TABLE `speaker_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speaker_ratings_speaker_id_foreign` (`speaker_id`);

--
-- Индексы таблицы `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `themes_date_id_foreign` (`date_id`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_conference_id_foreign` (`conference_id`),
  ADD KEY `tickets_commission_id_foreign` (`commission_id`);

--
-- Индексы таблицы `usefuls`
--
ALTER TABLE `usefuls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `competences`
--
ALTER TABLE `competences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `conferences`
--
ALTER TABLE `conferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `conference_organizers`
--
ALTER TABLE `conference_organizers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `conference_sectors`
--
ALTER TABLE `conference_sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `conference_speakers`
--
ALTER TABLE `conference_speakers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `dates`
--
ALTER TABLE `dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `organizers`
--
ALTER TABLE `organizers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `promotion_transactions`
--
ALTER TABLE `promotion_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `speaker_competences`
--
ALTER TABLE `speaker_competences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `speaker_ratings`
--
ALTER TABLE `speaker_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `usefuls`
--
ALTER TABLE `usefuls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `conferences`
--
ALTER TABLE `conferences`
  ADD CONSTRAINT `conferences_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conferences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `conference_organizers`
--
ALTER TABLE `conference_organizers`
  ADD CONSTRAINT `conference_organizers_conference_id_foreign` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conference_organizers_organizer_id_foreign` FOREIGN KEY (`organizer_id`) REFERENCES `organizers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `conference_sectors`
--
ALTER TABLE `conference_sectors`
  ADD CONSTRAINT `conference_sectors_conference_id_foreign` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conference_sectors_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `conference_speakers`
--
ALTER TABLE `conference_speakers`
  ADD CONSTRAINT `conference_speakers_conference_id_foreign` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conference_speakers_speaker_id_foreign` FOREIGN KEY (`speaker_id`) REFERENCES `speakers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `dates`
--
ALTER TABLE `dates`
  ADD CONSTRAINT `dates_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `organizers`
--
ALTER TABLE `organizers`
  ADD CONSTRAINT `organizers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `platforms`
--
ALTER TABLE `platforms`
  ADD CONSTRAINT `platforms_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `platforms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `promotion_transactions`
--
ALTER TABLE `promotion_transactions`
  ADD CONSTRAINT `promotion_transactions_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotion_transactions_speaker_id_foreign` FOREIGN KEY (`speaker_id`) REFERENCES `speakers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_conference_id_foreign` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `speakers`
--
ALTER TABLE `speakers`
  ADD CONSTRAINT `speakers_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `speakers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `speaker_competences`
--
ALTER TABLE `speaker_competences`
  ADD CONSTRAINT `speaker_competences_competence_id_foreign` FOREIGN KEY (`competence_id`) REFERENCES `competences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `speaker_competences_speaker_id_foreign` FOREIGN KEY (`speaker_id`) REFERENCES `speakers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `speaker_ratings`
--
ALTER TABLE `speaker_ratings`
  ADD CONSTRAINT `speaker_ratings_speaker_id_foreign` FOREIGN KEY (`speaker_id`) REFERENCES `speakers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `themes`
--
ALTER TABLE `themes`
  ADD CONSTRAINT `themes_date_id_foreign` FOREIGN KEY (`date_id`) REFERENCES `dates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_commission_id_foreign` FOREIGN KEY (`commission_id`) REFERENCES `commissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_conference_id_foreign` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- База данных: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Структура таблицы `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Дамп данных таблицы `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Дамп данных таблицы `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"yii2basic\",\"table\":\"request\"},{\"db\":\"yii2basic\",\"table\":\"user\"},{\"db\":\"yii2basic\",\"table\":\"category\"},{\"db\":\"yii2basic\",\"table\":\"migration\"},{\"db\":\"yii2basic\",\"table\":\"post\"},{\"db\":\"confibe\",\"table\":\"conferences\"},{\"db\":\"confibe\",\"table\":\"conference_sectors\"},{\"db\":\"confibe\",\"table\":\"conference_organizers\"},{\"db\":\"confibe\",\"table\":\"addresses\"},{\"db\":\"confibe\",\"table\":\"platforms\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Дамп данных таблицы `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'confibe', 'conferences', '{\"sorted_col\":\"`likes` DESC\"}', '2024-04-07 09:06:33');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Дамп данных таблицы `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-11 08:52:47', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ru\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Индексы таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Индексы таблицы `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Индексы таблицы `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Индексы таблицы `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Индексы таблицы `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Индексы таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Индексы таблицы `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Индексы таблицы `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Индексы таблицы `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Индексы таблицы `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Индексы таблицы `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- База данных: `yii2basic`
--
CREATE DATABASE IF NOT EXISTS `yii2basic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `yii2basic`;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'qwe'),
(2, 'asd'),
(3, 'zxc');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1712826569),
('m240411_090408_create_user_table', 1712826571),
('m240411_090417_create_category_table', 1712826571),
('m240411_090539_create_request_table', 1712826571);

-- --------------------------------------------------------

--
-- Структура таблицы `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo_to` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `description_denied` text DEFAULT NULL,
  `photo_after` varchar(255) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `request`
--

INSERT INTO `request` (`id`, `user_id`, `category_id`, `name`, `description`, `photo_to`, `status`, `description_denied`, `photo_after`, `datetime`) VALUES
(2, 1, 1, 'qwe', 'qwe', 'web/uploads/photo_to/ХУХУХУQxdePzM_.png', 2, 'qweeqeqwe', NULL, '2024-04-11 12:21:07'),
(4, 1, 2, 'qwe', 'qwe', 'web/uploads/photo_to/ХУХУХУdSBYHs1J.png', 1, NULL, 'web/uploads/photo_after/Снимок экрана9GFx6DeU.png', '2024-04-11 11:54:04'),
(5, 1, 3, 'qwe', 'qwe', 'web/uploads/photo_to/ХУХУХУBhtZWwf0.png', 0, NULL, NULL, '2024-04-11 12:55:09');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `full_name`, `username`, `email`, `password`, `role`) VALUES
(1, 'йцу', 'qwe', 'qwe@qwe.qwe', '76d80224611fc919a5d54f0ff9fba446', 0),
(2, 'фыв', 'asd', 'asd', '7815696ecbf1c96e6894b779456d330e', 1),
(4, 'Егор Силаев', 'qweqwe', 'silaevegor2003@mail.ru', '76d80224611fc919a5d54f0ff9fba446', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-request-user_id` (`user_id`),
  ADD KEY `idx-request-category_id` (`category_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `fk-request-category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-request-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
