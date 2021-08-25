-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 25 2021 г., 12:11
-- Версия сервера: 5.5.67-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news_service`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Москва', NULL, NULL),
(2, 'Нижний Новгород', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2021_08_24_093847_create_news_table', 2),
(3, '2021_08_24_093901_create_tags_table', 2),
(4, '2021_08_24_093910_create_cities_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbranoe` tinyint(1) NOT NULL DEFAULT '0',
  `id_tags` int(11) NOT NULL,
  `id_city` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `text`, `image`, `isbranoe`, `id_tags`, `id_city`, `created_at`, `updated_at`) VALUES
(1, 'Нобель Арустамян объявил об уходе с «Матч ТВ»', 'Арустамян работал на «Матч ТВ» с 2016 года. Причиной своего ухода журналист называет свое интервью с футболистом Павлом Мамаевым, недавно анонсированное на канале.', 'Арустамян работал на «Матч ТВ» с 2016 года. Причиной своего ухода журналист называет свое интервью с футболистом Павлом Мамаевым, недавно анонсированное на канале.\r\n\r\n    «Я получил редакционное задание: как мне сообщили, Павел хочет дать интервью именно и только мне. Ехал в Ростов на честный разговор с футболистом. А оказался соучастником нового пиар-перфоманса и получил заранее подготовленного героя для программы вроде «Пусть говорят» или «Окна». До последнего убеждал руководство «Матч ТВ»: такой контент не должен появляться в эфире спортивного канала. Мои доводы не нашли отклика, что вынудило меня сегодня написать заявление об увольнении по собственному желанию», — написал Арустамян.\r\n\r\nТем не менее журналист выразил благодарность каналу за многолетнее сотрудничество. Интервью Мамаева Арустамяну выйдет на «Матч ТВ» 24 августа в 21:00 по московскому времени.', 'public/scale.jpeg', 1, 1, 0, NULL, NULL),
(2, 'Путин поручил найти генерального спонсора для футбольного клуба «Нижний Новгород»', '\r\nПрезидент РФ Владимир Путин поручил среди государственных корпораций найти генерального спонсора для футбольного клуба «Нижний Новгород». Об этом, как сообщает «Коммерсант-Приволжье», стало известно на заседании комитета регионального парламента по бюджету и налогам. Информация о словах главы государства исходит из местного спортивного ведомства.\r\n', '\r\n\r\nПрезидент РФ Владимир Путин поручил среди государственных корпораций найти генерального спонсора для футбольного клуба «Нижний Новгород». Об этом, как сообщает «Коммерсант-Приволжье», стало известно на заседании комитета регионального парламента по бюджету и налогам. Информация о словах главы государства исходит из местного спортивного ведомства.\r\n\r\nКак поясняет источник, до тех пор, пока спонсор не будет найден, ФК «НН» будет частично финансироваться из бюджета Нижегородской области. В текущем году депутаты одобрили выделить на эти цели дополнительно 350 млн рублей.\r\n\r\nТакже на заседании стало известно, что 73 млн получит нижегородское «Торпедо».\r\n\r\nРанее спонсорами «горожан» стали крупный федеральный девелопер и букмекерская контора.\r\n', 'public/footbol2.jpg', 1, 1, 2, NULL, NULL),
(3, 'Песков заявил об отсутствии планов по новым допвыплатам россиянам', '«В воскресенье речь шла о всех пенсионерах, о военных пенсионерах различных ведомств силового блока. О других категориях сейчас речи не идёт», — цитирует представителя Кремля ТАСС.\r\n', '«В воскресенье речь шла о всех пенсионерах, о военных пенсионерах различных ведомств силового блока. О других категориях сейчас речи не идёт», — цитирует представителя Кремля ТАСС.\r\n\r\nОн призвал не забывать про выплаты, которые только что прошли для большой категории граждан с детьми.\r\n\r\n22 августа российский лидер Владимир Путин предложил разово выплатить всем пенсионерам страны в 2021 году по 10 тыс. рублей. Позднее он подписал соответствующий указ.\r\n\r\nЭкономист, преподаватель РАНХиГС Владислав Гинько в беседе с RT назвал эту меру логичной и отметил, что её нужно рассматривать как часть комплекса поддержки различных социальных групп населения.\r\n\r\nКроме того, глава государства выступил с инициативой по итогам года осуществить единовременную выплату военнослужащим по 15 тыс. рублей.', 'public/news1.jpg', 0, 2, 0, NULL, NULL),
(5, 'Семак высказался о предстоящем матче «Зенит» — ЦСКА', 'Главный тренер «Зенита» Сергей Семак высказался по поводу предстоящего матча сине-бело-голубых с московским ЦСКА. Встреча 6-го тура Российской Премьер-Лиги состоится 26 августа на стадионе «Газпром Арена» в Санкт-Петербурге. Стартовый свисток арбитра прозвучит в 20:45 мск.', 'Главный тренер «Зенита» Сергей Семак высказался по поводу предстоящего матча сине-бело-голубых с московским ЦСКА. Встреча 6-го тура Российской Премьер-Лиги состоится 26 августа на стадионе «Газпром Арена» в Санкт-Петербурге. Стартовый свисток арбитра прозвучит в 20:45 мск.\r\n\r\n«После Уфы выходного не было. Короткий перерыв, конечно, план скорректировал. Одно дело недельный цикл, совсем другое — четыре дня. У нас есть определённое видение того, как мы готовим команду, когда у нас два, три или четыре дня между играми. Конечно, тренировочных дней не так много, и нагрузка поэтому меньше, но ничего странного или необычного для нас в этом нет.\r\n\r\nДействительно, календарь у нас непростой: домашние матчи с командами, претендующими на победу в чемпионате, и сложные выездные матчи. Нам хотелось бы достойно завершить этот цикл перед матчами сборных. Что касается ЦСКА, то армейцы выиграли два последних матча, набирают форму. И состав, и амбиции у клуба самые высокие. Нам предстоит очень сложный матч с одним из соискателей чемпионства в нашей лиге.\r\n\r\nЕсть ли изменения в игре ЦСКА при Березцуком? Что касается последних матчей, то они действовали достаточно уверенно. Может быть, они не так много прессингуют, как при том же Гончаренко, но и рисунок, и почерк, и то, чего хочет команда — всё это видно. Качественные исполнители — есть, есть лидеры, которые играют очень большую роль для команды, и от их состояния зависит её результат», — приводит слова Семака официальный сайт «Зенита».\r\n\r\nПодробнее на «Чемпионате»:\r\nhttps://www.championat.com/football/news-4436905-semak-vyskazalsya-o-predstoyaschem-matche-zenit-cska.html?utm_source=yxsport&utm_medium=desktop?utm_source=copypaste', 'public/footbol.jpg', 0, 1, 1, NULL, NULL),
(6, 'Минобороны подписало контракт на поставку партии танков Т-90М «Прорыв»', 'ПАРК \"ПАТРИОТ\" /Московская область/, 24 августа. / ТАСС/. Минобороны России и \"Уралвагонзавод\" подписали на форуме \"Армия-2021\" контракт на поставку очередной партии танков Т-90М \"Прорыв\", а также на модернизацию до уровня Т-90М строевых танков Т-90, сообщили журналистам в министерстве.\r\n', 'ПАРК \"ПАТРИОТ\" /Московская область/, 24 августа. / ТАСС/. Минобороны России и \"Уралвагонзавод\" подписали на форуме \"Армия-2021\" контракт на поставку очередной партии танков Т-90М \"Прорыв\", а также на модернизацию до уровня Т-90М строевых танков Т-90, сообщили журналистам в министерстве.\r\n\r\n\"Подписаны государственные контракты на поставку танков Т-90М и на капитальный ремонт танков Т-90 с модернизацией до уровня Т-90М\", - сказали в ведомстве.\r\n\r\nКроме того, ведомство заключило контракт с \"Ремдизелем\" на поставку защищенных авиадесантируемых автомобилей спецназначения, бронированных санитарных автомобилей, а также на капремонт легких бронированных тягачей МТ-ЛБ, на которые установят пулеметы \"Корд\".\r\n\r\nГенеральный директор \"Уралвагонзавода\" Александр Потапов сообщил журналистам, что в отличие от предшествующих эти контракты заключаются не на один год. \"Это не мелкие контракты, которые по пять-семь контрактов на одну и ту же модель или модификацию, а это достаточно крупные контракты, что очень удобно для промышленности. Мы можем нормально комплектовать с комплектантами, мы можем нормально планировать свои закупки и нормально планировать свою продукцию, выпуск\", - пояснил он.\r\n\r\n\"Мы абсолютно уверены, что и в следующем году - а там в контракте есть уже обязательства поставки и в другие года - мы это все выполним. Для нас этот контракт важный, и мы его обязательно сделаем\", - сказал Потапов.\r\n', 'public/placeholder-man.png', 0, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Спорт', NULL, NULL),
(2, 'Политика', NULL, NULL),
(3, 'в мире', NULL, NULL),
(4, 'новости города', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$DI9Afwi8X.L5nOw5/wAlAO4EH7sME2MjGensYFhohgFp.aL4.lkOC', NULL, '2021-08-25 03:54:25', '2021-08-25 03:54:25');

-- --------------------------------------------------------

--
-- Структура таблицы `users_news`
--

CREATE TABLE `users_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_news`
--

INSERT INTO `users_news` (`id`, `user_id`, `news_id`, `created_at`, `updated_at`) VALUES
(12, 1, 5, '2021-08-25 06:00:46', '2021-08-25 06:00:46'),
(14, 1, 1, '2021-08-25 06:11:03', '2021-08-25 06:11:03'),
(15, 1, 2, '2021-08-25 06:11:10', '2021-08-25 06:11:10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_news`
--
ALTER TABLE `users_news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users_news`
--
ALTER TABLE `users_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
