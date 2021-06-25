-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: akon00.mysql.ukraine.com.ua
-- Время создания: Июн 25 2021 г., 15:58
-- Версия сервера: 5.7.33-36-log
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `akon00_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `nomenclatures_table_2`
--

CREATE TABLE `nomenclatures_table_2` (
  `ID` int(11) NOT NULL COMMENT '#',
  `NAME` varchar(64) NOT NULL COMMENT 'Диапазон'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Диапазоны' ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `nomenclatures_table_2`
--

INSERT INTO `nomenclatures_table_2` (`ID`, `NAME`) VALUES
(1, '0..15 мВ'),
(2, '0..30 мВ'),
(3, '0..60 мВ'),
(4, '0..125 мВ'),
(5, '0..250 мВ'),
(6, '0..500 мВ'),
(7, '0..1 В'),
(8, '0..2 В'),
(9, '0..5 В'),
(10, '0..10 В'),
(11, '0..20 В'),
(12, '0..40 В'),
(13, '0..80 В'),
(14, '0..160 В'),
(15, '0..300 В'),
(16, '0..600 В'),
(17, '0..15 Ом'),
(18, '0..30 Ом'),
(19, '0..60 Ом'),
(20, '0..125 Ом'),
(21, '0..250 Ом'),
(22, '0..500 Ом'),
(23, '0..1 кОм'),
(24, '0..2 кОм'),
(25, 'Тип B (ТПР)'),
(26, 'Тип E (ТХКн)'),
(27, 'Тип J (ТЖК)'),
(28, 'Тип K (ТХА)'),
(29, 'Тип N (ТНН)'),
(30, 'Тип R (ТПП13)'),
(31, 'Тип S (ТПП10)'),
(32, 'Тип T (ТМКн)'),
(33, '50М (ТСМ50)'),
(34, '100М (ТСМ100)'),
(35, '50П (ТСП50)'),
(36, '100П (ТСП100)'),
(37, '0..1 мА'),
(38, '0..2 мА'),
(39, '0..5 мА'),
(40, '1..5 мА'),
(41, '0..10 мА'),
(42, '0..20 мА'),
(43, '4..20 мА'),
(44, '0..50 мА'),
(45, '0..100 мА'),
(46, '0..200 мА'),
(47, '0..500 мА'),
(48, '0..1 А'),
(49, '0..2 А'),
(50, '0..5 А'),
(51, '-10..+10 В'),
(52, '-1..+1 В'),
(53, '-2..+2 В'),
(54, '-5..+5 В'),
(55, '0..5 кОм'),
(56, 'Taсho'),
(57, 'Tenso'),
(58, '160-270В AC/DC'),
(59, '100mA-270V'),
(60, '+ /- 15 В'),
(61, '+/- 30 В'),
(62, 'Запитка 12В'),
(63, '10-30В АС/DC '),
(64, 'Запитка 24В'),
(65, '100mA-30V'),
(66, '5А-270V'),
(67, '0,5 А'),
(68, '5 А'),
(69, '8 А'),
(70, '16 А'),
(71, '0-20 кОм'),
(72, ' Запитка 3,3 В'),
(75, 'Pt100'),
(76, '0..25 мВ'),
(77, '0..75 мВ'),
(78, '1хDS18B20'),
(79, '1хDS18B20/1хDHT11/1хDHT22'),
(80, '8хDS18B20'),
(81, '16хDS18B20'),
(82, '24хDS18B20'),
(83, '32хDS18B20'),
(84, '50хDS18B20'),
(85, '+/- 6.8V'),
(86, 'Тип L (ТХК)'),
(87, '-300...+300 В'),
(88, '100mA-300V'),
(89, '160-270В AC'),
(90, '0..400 В'),
(91, '16-27B AC/DC'),
(92, '-600...+600 В'),
(93, '~250В AC'),
(94, '0-15 кОм'),
(95, '-750..+750 В'),
(96, ' -150..+150 мВ'),
(97, 'Pt1000'),
(98, '16-27В DC'),
(99, '-20..0 В'),
(101, 'NTC2k'),
(102, 'NTC5k'),
(103, 'NTC20k'),
(104, 'NTC50k'),
(105, '-75...+75 мВ'),
(106, '-300...+300 В'),
(107, '-60... +60 мВ'),
(108, '0..-10В'),
(109, '-20...+20 В'),
(110, '-250...+250 мВ'),
(111, '-5...+5 А'),
(112, '10-30В DC '),
(113, '14хDS18B20'),
(114, '-500... +500 мА'),
(115, '0..10 Гц'),
(116, '0..100 Гц'),
(117, '0..1 кГц'),
(118, '0..10 кГц'),
(119, '0..100 кГц'),
(120, '0..1 МГц'),
(121, '250мА-400В'),
(122, '0..10000 лк');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `nomenclatures_table_2`
--
ALTER TABLE `nomenclatures_table_2`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `nomenclatures_table_2`
--
ALTER TABLE `nomenclatures_table_2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '#', AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
