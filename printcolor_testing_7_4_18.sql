-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2018 a las 13:31:56
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `printcolor_testing`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_xs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_xs`, `image`, `category_is_active`, `deleted_at`, `deleted_by_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tarjetas de visita', 'Tarj. de Visita', '7497cd8a95788b8a8b4bc5565133dd47.jpeg', 1, NULL, NULL, '2017-01-12 17:37:04', '2017-01-12 17:37:04'),
(2, 'Flyers / Folletos Doblados', 'Flyers', 'flyers.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(3, 'Carteles', 'Carteles', 'carteles.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(4, 'Artículos Personalizados', 'Artículos', 'articulos.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(5, 'Expositores / Roll-up', 'Expositores', 'roll_up_expositor.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(6, 'Carpetas', 'Carpetas', 'carpetas.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(7, 'Talonarios Autocopiativos', 'Talonarios', 'talonarios.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(8, 'Libros/ Revistas/ Catálogos', 'Libros', 'libros.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(9, 'Entradas/ Rifas numeradas', 'Entradas', 'entradas_numeradas.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(10, 'Calendarios', 'Calendarios', 'calendarios.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(11, 'Libretas Personalizadas', 'Libretas', 'libretas.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(12, 'Etiquetas Adhesivas', 'Etiquetas', 'etiquetas_adhesivas.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(13, 'Vinilo x metro/ Adhesivo', 'Vinilo x metro', 'vinil_metro.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(14, 'Lonas/ Pancartas', 'Lonas', 'lonas.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(15, 'Cartas/Manteles Hostelería', 'Cartas', 'cartas_bar.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(16, 'Fotolienzo / Carteles', 'Carteles', 'fotolienzo.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(17, 'Rotulación de Vehículos', 'Rot. Vehículos', 'rotulacion.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(18, 'Murales', 'Murales', 'mural.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(19, 'Placas Metacrilato', 'Placas', 'placa_metacrilato.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(20, 'Documentos', 'Documentos', 'documentos.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(21, 'Trofeos y Placas', 'Trofeos', 'trofeos.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(22, 'Diseño Gráfico', 'Dis. Gráfico', 'diseno_grafico.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-09-09 16:55:47'),
(23, 'Letras Corpóreas', 'Letras Cor.', 'letras_corporeas.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(24, 'Sobres', 'Sobres', 'sobres.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(25, 'Camisetas Personalizadas', 'Camisetas', 'camisetas_personalizada.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(26, 'Rotulos - Letreros', 'Rotulos - Letreros', '8dd50114b394279fe53bdec357cd49b1.jpeg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-09-03 15:15:56'),
(27, 'Textil', 'Textil', 'textil.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(28, 'Regalos Publicitarios', 'Reg. Publicitarios', 'regalos_publicitarios.jpg', 1, NULL, NULL, '2017-01-12 17:42:19', '2017-01-12 17:42:19'),
(29, 'Ofertas', 'Ofertas', 'ogmES1HAx4WgPCBYEeBcOlw40DM2NE9nGvImrgac.jpeg', 1, NULL, NULL, '2017-10-28 15:41:15', '2017-10-28 15:41:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` text COLLATE utf8_unicode_ci NOT NULL,
  `enterprise` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nif_cif` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `poblation` text COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` text COLLATE utf8_unicode_ci NOT NULL,
  `provence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `observations` mediumtext COLLATE utf8_unicode_ci,
  `session_id` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `full_name`, `enterprise`, `phone`, `nif_cif`, `address`, `poblation`, `postal_code`, `provence`, `email`, `observations`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Antonio Extremera Marquez', '1991', '695898807', '1414125', 'Pintor Murillo, 9 Escalera A 4B', 'Granada', '', 'Granada', 'nonoillora@gmail.com', NULL, 'iR1MMhc6svL7CB8qFlKudNeNp2teqPEk9eWHhrpD', '2017-09-17 10:56:00', '2017-09-17 10:56:00'),
(2, 'Antonio Extremera Marquez', '1991', '695898807', '1414125', 'Pintor Murillo, 9 Escalera A 4B', 'Granada', '', 'Granada', 'nonoillora@gmail.com', 'esto es pa leerlo en el pedido', 'iR1MMhc6svL7CB8qFlKudNeNp2teqPEk9eWHhrpD', '2017-09-17 10:57:54', '2017-09-17 10:57:54'),
(3, 'Antonio Extremera Marquez', '1991', '695898807', '1414125', 'Pintor Murillo, 9 Escalera A 4B', 'Granada', '', 'Granada', 'nonoillora@gmail.com', 'esto es pa leerlo en el pedido', 'zo6e2gboXhCs9Wsme4BaREVMRqkrQDCzPnL5nSeX', '2017-09-17 10:58:56', '2017-09-17 10:58:56'),
(4, 'Antonio Extremera Marquez', '1991', '695898807', '1414125', 'Pintor Murillo, 9 Escalera A 4B', 'Granada', '', 'Granada', 'nonoillora@gmail.com', 'esto es pa leerlo en el pedido', 'yQjLl9tq4E7m7iTUEBCIaZiTRX97c8SBcvMnTaQi', '2017-09-17 11:00:56', '2017-09-17 11:00:56'),
(5, 'Antonio Extremera Marquez', '1991', '695898807', '1414125', 'Pintor Murillo, 9 Escalera A 4B', 'Granada', '', 'Granada', 'nonoillora@gmail.com', 'esto es pa leerlo en el pedido', 'yTKDfhlq96vP2OfZW8Z4Y2k5RuMWflXAnSBgKO6a', '2017-09-17 11:01:16', '2017-09-17 11:01:16'),
(6, 'Antonio Extremera Marquez', 'mi empresa', '695898807', '1452632154', 'Pintor Murillo, 3 Escalera A 4 Derecha', 'Illora', '', 'Granada', 'nonoillora@gmail.com', 'adad', 'mWdLgZGaj7Db6EHWZd9N0WArvKFAtxTTZ0eCbq5S', '2017-09-17 14:31:20', '2017-09-17 14:31:20'),
(7, 'Antonio Extremera Marquez', 'mi empresa', '695898807', '1452632154', 'Pintor Murillo, 3 Escalera A 4 Derecha', 'Illora', '', 'Granada', 'nonoillora@gmail.com', 'adad', 'UMWOQSjBSBkk06xXHPj6RlkgMy1nK5xrYCkVe9O4', '2017-09-17 14:32:01', '2017-09-17 14:32:01'),
(8, 'Antonio Extremera Marquez', '1991', '695898807', '7415241', 'Pintor Murillo, 9 Escalera A 4B', 'Granada', '', 'Granada', 'nonoillora@gmailcom', 'aaa', 'nTli3MqeQX9wOcKpE2jVKJQOuOfXUDvULXxxwnP5', '2017-09-17 16:53:56', '2017-09-17 16:53:56'),
(9, 'Antonio Extremera Marquez', '1991', '695898807', '123131', 'Pintor Murillo, 9 Escalera A 4B', 'asdad', '18004', 'Granada', 'nonoillora@gmailcom', 'adad', 'rbmVP1efdMOyTFArfEfX6M3FexA4jsSfKIZg4R1r', '2017-09-18 18:30:20', '2017-09-18 18:30:20'),
(10, 'Herminia Extremera Marquez', '1991', '645487649', '21313', 'Ancha,1, 18293, 1ºB Oficina 3', '1', '18293', 'Granada', 'nonoillora@gmailcom', 'adadadad', 'b9oJxuGXDMzbxm6Cmb1AL8f1OV6TK8D6I6gMHigE', '2017-09-18 20:38:10', '2017-09-18 20:38:10'),
(11, 'Herminia Extremera Marquez', '1991', '645487649', '21313', 'Ancha,1, 18293, 1ºB Oficina 3', '1', '18293', 'Granada', 'nonoillora@gmailcom', 'adadadad', 'y3MESPgVgbDjNbpnXxYvieESgt0tMpCmBAJIUqK9', '2017-09-18 20:38:28', '2017-09-18 20:38:28'),
(12, 'Herminia Extremera Marquez', '1991', '645487649', 'adad', 'Ancha,1, 18293, 1ºB Oficina 3', 'adada', '18293', 'Granada', 'adad@asdadadad.dadadaxa', 'adadad', 'aszFCV03QYS425b4y5CoTIw3Gk5IJ3ITh6cZjD3p', '2017-09-18 20:55:49', '2017-09-18 20:55:49'),
(13, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', 'Granada', '18004', 'Granada', 'nonoillora@gmail.com', '', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', '2017-10-07 17:28:19', '2017-10-07 17:28:19'),
(14, 'Antonio Extremera Márquez', '14152', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', 'Granada', '18002', 'Granada', 'nonoillora@gmail.com', '', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', '2017-10-07 17:31:01', '2017-10-07 17:31:01'),
(15, 'Antonio Extremera Márquez', '14152', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', 'Granada', '18002', 'Granada', 'nonoillora@gmail.com', '', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', '2017-10-07 17:38:58', '2017-10-07 17:38:58'),
(16, 'Antonio Extremera Márquez', '14152', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', 'Granada', '18002', 'Granada', 'nonoillora@gmail.com', '', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', '2017-10-07 17:41:45', '2017-10-07 17:41:45'),
(17, 'Antonio Extremera Márquez', '14152', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', 'Granada', '18002', 'Granada', 'nonoillora@gmail.com', '', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', '2017-10-07 17:54:47', '2017-10-07 17:54:47'),
(18, 'Antonio Extremera Márquez', '14152', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', 'Granada', '18002', 'Granada', 'nonoillora@gmail.com', '', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', '2017-10-07 17:56:57', '2017-10-07 17:56:57'),
(19, 'Antonio Extremera Márquez', '14152', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', 'Granada', '18002', 'Granada', 'nonoillora@gmail.com', '', '7J3m9WDhjGjGR8xMz6ckMY0UNHwInbcAfmMHJbco', '2017-10-07 18:48:56', '2017-10-07 18:48:56'),
(20, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '14', '18004', 'Granada', 'nonoillora@gmail.com', 'ad', 'FMjdCXslfXYg7cp8qZ6nLjQbGYSHp9TD25Vwu1u1', '2017-10-13 19:18:16', '2017-10-13 19:18:16'),
(21, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '12', '18004', 'Granada', 'nonoillora@gmail.com', 'ad', 'HSHcVBWUxYUz7Scg9JVwOcKOSE1Q5PNBQJdEcPTL', '2017-10-13 19:22:02', '2017-10-13 19:22:02'),
(22, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'DLQvWOn7QbiOS9GxEID6IB2hhlBnBOFT9K9fd4Xq', '2017-11-01 21:29:16', '2017-11-01 21:29:16'),
(23, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'xdvnHNxig4LcHqE43AQL1JTBlBhPTHR9oTXoZLsd', '2017-11-02 17:38:06', '2017-11-02 17:38:06'),
(24, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'c7w0yfKRQ6WdPmHFnMQKNGSajcV5SgJAklatW2lB', '2017-11-02 17:39:03', '2017-11-02 17:39:03'),
(25, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', '2017-11-02 17:39:28', '2017-11-02 17:39:28'),
(26, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', '2017-11-02 17:41:50', '2017-11-02 17:41:50'),
(27, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', '2017-11-02 17:43:14', '2017-11-02 17:43:14'),
(28, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', '2017-11-02 17:48:00', '2017-11-02 17:48:00'),
(29, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', '2017-11-02 17:50:52', '2017-11-02 17:50:52'),
(30, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', '2017-11-02 18:04:44', '2017-11-02 18:04:44'),
(31, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'NZDdcUu8hV4EQ93S806RdVojyJKyTklwineKeMA3', '2017-11-02 18:05:21', '2017-11-02 18:05:21'),
(32, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'NZDdcUu8hV4EQ93S806RdVojyJKyTklwineKeMA3', '2017-11-02 18:06:06', '2017-11-02 18:06:06'),
(33, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'NZDdcUu8hV4EQ93S806RdVojyJKyTklwineKeMA3', '2017-11-02 18:06:58', '2017-11-02 18:06:58'),
(34, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'NZDdcUu8hV4EQ93S806RdVojyJKyTklwineKeMA3', '2017-11-02 18:23:00', '2017-11-02 18:23:00'),
(35, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'mzXTgGjZ13oirauk3v9Cy186oaDepHtMwXGdsTWz', '2017-11-02 20:15:17', '2017-11-02 20:15:17'),
(36, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'jxqt7DN0GzilFnyOpvUreVSHmIFy2WQhUj7RMAmm', '2017-11-02 20:29:35', '2017-11-02 20:29:35'),
(37, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'XuU4e0xqTLi4pPZgIAHECpaMsxaGE8Af3g6KKcfA', '2017-11-04 19:14:27', '2017-11-04 19:14:27'),
(38, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'zW99xLMUfWqPO7AHYiUTNCZYGQciZJXLwUYBpsQV', '2017-11-04 22:27:20', '2017-11-04 22:27:20'),
(39, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'd6LLOcHYT7jaIN0VC5wumwZObBkkHqFsvHBLOIrM', '2017-11-05 18:11:38', '2017-11-05 18:11:38'),
(40, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'Tk6Ut4ggE2XnNW9Mpo3wMqVKztdq3kZkaxuEzYsI', '2017-11-05 18:35:17', '2017-11-05 18:35:17'),
(41, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'PyLlKW8TawD1RXb0uASCmxwVbDivmVj7UKqquFTF', '2017-11-05 18:36:16', '2017-11-05 18:36:16'),
(42, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '1', 'vptDnk9I5o1F4aq0U84sfDhhoApNXp12hZgbHsMl', '2017-11-07 18:39:46', '2017-11-07 18:39:46'),
(43, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '1', 'ZsWKPzny69nss51x1NjBwXOMwrKdMKVz2I669r8d', '2017-11-07 18:41:19', '2017-11-07 18:41:19'),
(44, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'd8IhKE8B6tzPwK6EidL2niavdcGTWXk5R4w8hiJq', '2017-11-07 19:14:31', '2017-11-07 19:14:31'),
(45, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'IrUVDaQP5xQzIoOQzzrmuS1OJRPDNKRdiNmgSmUe', '2017-11-07 19:16:44', '2017-11-07 19:16:44'),
(46, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'XAtCkTSMDfc0f2bi2K4h8XBHpfO50CL4ohwSvqA5', '2017-11-07 19:20:43', '2017-11-07 19:20:43'),
(47, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'bZnmKLKoNadgkzNIOx86sNUHbcYvGkhMXbLWYJ4J', '2017-11-07 19:23:02', '2017-11-07 19:23:02'),
(48, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'lCBttdZygWwRXBwtXI3NQJjIgzq2FmtmFXPf2R7F', '2017-11-08 19:11:15', '2017-11-08 19:11:15'),
(49, 'Antonio Extremera Marquez', '1', '695898807', '', 'Pintor Murillo, 3 Escalera A 4 Derecha', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'cCGqzr1tMzxtO8h8SOFNr4wED4ubZSSGkMkd9y5t', '2017-11-08 19:12:23', '2017-11-08 19:12:23'),
(50, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'fZYg7ixYNUJzN9udep15cdxzvqKL58jwz8cet0hW', '2017-11-08 19:23:33', '2017-11-08 19:23:33'),
(51, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', '6ZgEzv51BtQZgvQQpRrTIpUB0hCwfbe1vZ46301p', '2017-11-08 19:26:06', '2017-11-08 19:26:06'),
(52, 'Antonio Extremera Márquez', '', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', 'Granada', '18002', 'Granada', 'info@printcolorillora.com', '', '6YEIdZpkApPFam9YI4ZlEFzhILKieZw9B8xDJlw7', '2017-11-08 19:35:18', '2017-11-08 19:35:18'),
(53, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', 'Granada', '18004', 'Granada', 'info@printcolorillora.com', '', 'NriYf104as8uADVeRjjp6uEyGVpD1kYOxTdGxw0P', '2017-11-08 21:31:02', '2017-11-08 21:31:02'),
(54, 'Antonio Extremera Marquez', '1991', '695898807', '', 'Pintor Murillo, 9 Escalera A 4B', '1', '18004', 'Granada', 'info@printcolorillora.com', '', 'KNd8HoTB0QjnEao78wKC4BAm6mo6DVI5Fq24owHW', '2017-11-08 21:33:33', '2017-11-08 21:33:33'),
(55, 'Antonio Extremera Márquez', '1', '695898807', '', 'Neptuno,2 18002 OKN, 1ºB Oficina 3', 'gr', '18002', 'Granada', 'info@printcolorillora.com', '', 'IOXzEACy4RYV2jhu3T78vqWuVNpTx0DWf0dR69VM', '2017-11-11 22:50:38', '2017-11-11 22:50:38'),
(56, 'Antonio Extremera Marquez', '', '695898807', '', 'Pintor Murillo, 3 Escalera A 4 Derecha', '1', '18002', 'Granada', 'info@printcolorillora.com', '', 'x1as0yM2Por3DZdfD4KrkR1BobclS5nuipYYPfVP', '2017-11-12 12:37:11', '2017-11-12 12:37:11'),
(57, 'Angel', '', '657 46 41 68', '', 'Olivo,4', 'Illora', '18260', 'Granada', 'info@printcolorillora.com', '', 'CiBnQPr4eeiscyBGo5kMgnMEMwftMavHfHg9ztyF', '2017-11-12 12:43:03', '2017-11-12 12:43:03'),
(58, 'a', '1', '1', '', 'fuego, 1', 'illlora', '18260', 'grana', 'info@printcolorillora.com', '', 'wiowiZG5rkLEUny66ShCNrJpClyHAZyPLPC0T12M', '2017-11-18 18:57:22', '2017-11-18 18:57:22'),
(59, 'Ana', 'asa', '695236524', '', 'cielo, 4', 'asa', '18210', 'Granada', 'info@printcolorillora.com', 'asda', 'goP2vZH84Pek1U56Cm6iwlUrwsVVIh04wxkVsZ5R', '2017-12-04 22:22:25', '2017-12-04 22:22:25'),
(60, 'Ana', 'asa', '695236524', '', 'cielo, 4', 'asa', '18210', 'Granada', 'info@printcolorillora.com', '', 't4KzAC5MPzep2mflzMBflRj6hRAy62bwbP5OzoqI', '2017-12-04 22:23:36', '2017-12-04 22:23:36'),
(61, 'Ana', 'asa', '695236524', '', 'cielo, 4', 'asa', '18210', 'Granada', 'info@printcolorillora.com', '', 'Qx8UUvhJe5kNgU6IY1hTcWaKMjH2fQyOLtyrcWQM', '2017-12-04 22:27:16', '2017-12-04 22:27:16'),
(62, 'Ana', 'asa', '695236524', '', 'cielo, 4', 'asa', '18210', 'Granada', 'info@printcolorillora.com', '', 'j7TRyxktJZOgndKHNdDnr1Kef0SxJP9RNvqDK2MQ', '2017-12-04 22:30:40', '2017-12-04 22:30:40'),
(63, 'Ana', 'asa', '695236524', '', 'cielo, 4', 'asa', '18210', 'Granada', 'info@printcolorillora.com', '', 'Zq2Se7HEeYr6yfcghlsRfsC7zwwRqOEwbhEWCUGr', '2017-12-04 22:37:02', '2017-12-04 22:37:02'),
(64, 'Ana', 'asa', '695236524', '', 'cielo, 4', 'asa', '18210', 'Granada', 'info@printcolorillora.com', '', 'dsszFJtQZoVNnZjvE4F4KL7GEP4QYChGhSekf3VI', '2017-12-04 22:58:44', '2017-12-04 22:58:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company_shippings`
--

CREATE TABLE `company_shippings` (
  `idCompany` int(10) UNSIGNED NOT NULL,
  `name_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `totalShipping` int(11) NOT NULL DEFAULT '0',
  `url_company` text COLLATE utf8_unicode_ci,
  `url_follow_package` text COLLATE utf8_unicode_ci,
  `company_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `company_shipping_deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `company_shippings`
--

INSERT INTO `company_shippings` (`idCompany`, `name_company`, `address`, `phone`, `totalShipping`, `url_company`, `url_follow_package`, `company_is_active`, `company_shipping_deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'a12', 'b1', 'c1', 0, 'd1', 'e', 0, '2017-11-18 18:29:57', '2017-09-15 21:50:35', '2017-11-18 18:29:57'),
(2, 'Tourline Express', NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, '2017-11-16 19:42:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configs`
--

CREATE TABLE `configs` (
  `idConfig` int(10) UNSIGNED NOT NULL,
  `config_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `config_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `config_deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `configs`
--

INSERT INTO `configs` (`idConfig`, `config_key`, `type`, `value`, `description`, `config_is_active`, `config_deleted_at`, `created_at`, `updated_at`) VALUES
(1, '_NAME_BANK_TRANSFER_PAY', 'string', 'Caja Rural', 'Variable usada para definir el nombre del banco usado en las transferencias bancarias', 1, NULL, '2017-10-15 10:55:41', '2017-10-15 12:36:36'),
(2, '_ACCOUNT_BANK_TRANSFER_PAY', 'string', 'xxxx', 'Variable usada para definir el número de cuenta del banco para las transferencias', 1, NULL, '2017-10-15 12:42:06', '2017-10-15 12:42:06'),
(3, '_PRICE_IMPRESS_TYPE_BLACK_WHITE', 'float', '0.06', 'Precio de tipo de impresión con acabado en blanco y negro, se puede ver en documento online', 1, NULL, '2017-10-15 18:59:45', '2017-10-15 18:59:45'),
(5, '_PRICE_IMPRESS_TYPE_COLOR', 'float', '0.20', 'Precio de tipo de impresión con acabado en color, se puede ver en documento online', 1, NULL, '2017-10-15 19:10:50', '2017-10-15 19:10:50'),
(6, '_EMAIL_SEND_NOTIFICATION_OWN', 'email', 'printcolor@printcolorillora.com', 'Variable usada para definir el correo al que se enviaran las notificaciones de la plataforma (nuevos pedidos, presupuestos, contactos..)', 1, NULL, '2017-10-17 14:57:30', '2017-10-17 14:57:30'),
(7, '_MAIL_TO_SEND_PHOTOS_FROM_ORDER', 'email', 'mail@printcolorillora.com', 'Variable usada para definir el correo al que se enviaran las imágenes de los pedidos, se usa en la vista que se le manda al usuario al finalizar el pedido.', 1, NULL, '2017-11-07 18:12:54', '2017-11-07 18:12:54'),
(8, '_PHONE_SHOP_INDEX', 'integer', '657 46 41 68', 'Variable usada para definir el teléfono que se mostrara en la cabecera del index.', 1, NULL, '2017-11-11 18:30:28', '2017-11-11 18:30:28'),
(9, '_MAIL_SHOP_INDEX', 'email', 'info@printcolorillora.com', 'Variable usada para definir el correo que se mostrara en la cabecera del index.', 1, NULL, '2017-11-11 18:39:10', '2017-11-11 18:39:10'),
(10, '_MAIL_VIEW_UPLOAD_FILES', 'email', 'printcolor@printcolorillora.com', 'Variable usada para definir el correo que se mostrara en la vista subida de ficheros.', 1, NULL, '2017-11-11 19:21:23', '2017-11-11 19:21:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mensaje` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `telefono`, `email`, `mensaje`, `created_at`, `updated_at`) VALUES
(1, 'adadadsad', 'adadadsad', 'favenitwoh@hotmail.com', 'adadadsad', '2017-01-21 18:07:37', '2017-01-21 18:07:37'),
(2, 'adadadsad', 'adadadsad', 'favenitwoh@hotmail.com', 'adadadsad', '2017-01-21 18:08:13', '2017-01-21 18:08:13'),
(3, 'dadadadada', 'http://www.cuatro.com/informacionPublicidad.html', 'favenitwoh@hotmail.com', 'adad', '2017-01-21 18:14:04', '2017-01-21 18:14:04'),
(4, 'dadadadada', 'adadad', 'nonoillora@gmail.com', 'asdadadad', '2017-01-21 18:24:00', '2017-01-21 18:24:00'),
(5, 'dadadadada', 'adadad', 'nonoillora@gmail.com', 'asdadadad', '2017-01-21 18:25:14', '2017-01-21 18:25:14'),
(6, 'asdadad', 'adadad', 'edu@edu.com', 'adadad', '2017-01-21 18:25:37', '2017-01-21 18:25:37'),
(7, 'adadad', 'adadad', 'adadad@asdad.com', 'adadad', '2017-01-21 18:35:03', '2017-01-21 18:35:03'),
(8, 'adadad', 'adadadad', 'adadadad@asda.com', 'adadadadad', '2017-01-21 18:38:09', '2017-01-21 18:38:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cron_logs`
--

CREATE TABLE `cron_logs` (
  `idLog` int(10) UNSIGNED NOT NULL,
  `result` text COLLATE utf8_unicode_ci NOT NULL,
  `cron_launch_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cron_logs`
--

INSERT INTO `cron_logs` (`idLog`, `result`, `cron_launch_at`, `created_at`, `updated_at`) VALUES
(1, 'a:2:{s:4:"year";b:0;s:5:"month";b:1;}', '2017-11-06 20:02:41', '2017-11-06 20:02:41', '2017-11-06 20:02:41'),
(2, 'a:2:{s:4:"year";b:1;s:5:"month";b:1;}', '2017-12-07 20:07:40', '2017-12-07 20:07:40', '2017-12-07 20:07:40'),
(3, 'a:2:{s:4:"year";b:1;s:5:"month";b:1;}', '2017-12-07 20:35:54', '2017-12-07 20:35:54', '2017-12-07 20:35:54'),
(4, 'a:2:{s:4:"year";b:1;s:5:"month";b:1;}', '2017-12-07 20:50:26', '2017-12-07 20:50:26', '2017-12-07 20:50:26'),
(5, 'a:2:{s:4:"year";b:1;s:5:"month";b:1;}', '2017-12-07 20:52:45', '2017-12-07 20:52:45', '2017-12-07 20:52:45'),
(6, 'a:2:{s:4:"year";b:0;s:5:"month";b:1;}', '2017-12-07 21:22:51', '2017-12-07 21:22:51', '2017-12-07 21:22:51'),
(7, 'a:2:{s:4:"year";b:0;s:5:"month";b:1;}', '2017-12-07 21:23:00', '2017-12-07 21:23:00', '2017-12-07 21:23:00'),
(8, 'a:2:{s:4:"year";b:0;s:5:"month";b:1;}', '2017-12-07 21:23:13', '2017-12-07 21:23:13', '2017-12-07 21:23:13'),
(9, 'a:2:{s:4:"year";b:0;s:5:"month";b:0;}', '2017-12-07 21:26:50', '2017-12-07 21:26:50', '2017-12-07 21:26:50'),
(10, 'a:2:{s:4:"year";b:0;s:5:"month";b:0;}', '2017-12-07 21:27:17', '2017-12-07 21:27:17', '2017-12-07 21:27:17'),
(11, 'a:2:{s:4:"year";b:0;s:5:"month";b:0;}', '2017-12-07 21:27:32', '2017-12-07 21:27:32', '2017-12-07 21:27:32'),
(12, 'a:2:{s:4:"year";b:0;s:5:"month";b:0;}', '2017-12-07 21:28:49', '2017-12-07 21:28:49', '2017-12-07 21:28:49'),
(13, 'a:2:{s:4:"year";b:0;s:5:"month";b:0;}', '2017-12-07 21:29:19', '2017-12-07 21:29:19', '2017-12-07 21:29:19'),
(14, 'a:2:{s:4:"year";b:0;s:5:"month";b:0;}', '2017-12-07 21:29:39', '2017-12-07 21:29:39', '2017-12-07 21:29:39'),
(15, 'a:2:{s:4:"year";b:0;s:5:"month";b:1;}', '2017-12-07 21:33:25', '2017-12-07 21:33:25', '2017-12-07 21:33:25'),
(16, 'a:2:{s:4:"year";b:0;s:5:"month";b:0;}', '2017-12-07 21:34:12', '2017-12-07 21:34:12', '2017-12-07 21:34:12'),
(17, 'a:2:{s:4:"year";b:0;s:5:"month";b:1;}', '2017-12-07 21:44:34', '2017-12-07 21:44:34', '2017-12-07 21:44:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `idFactura` int(10) UNSIGNED NOT NULL,
  `idPedido` int(10) UNSIGNED NOT NULL,
  `numeracionFactura` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`idFactura`, `idPedido`, `numeracionFactura`, `created_at`, `updated_at`) VALUES
(2, 59, '0/17', '2017-12-04 22:23:36', '2017-12-04 22:23:36'),
(3, 60, '0/17', '2017-12-04 22:27:16', '2017-12-04 22:27:16'),
(4, 61, '0/17', '2017-12-04 22:30:40', '2017-12-04 22:30:40'),
(5, 62, '46/17', '2017-12-04 22:37:02', '2017-12-04 22:37:02'),
(6, 63, '47/17', '2017-12-04 22:58:44', '2017-12-04 22:58:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_pedidos`
--

CREATE TABLE `linea_pedidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idProduct` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `session_id` text COLLATE utf8_unicode_ci NOT NULL,
  `lineaPedido_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `linea_pedidos`
--

INSERT INTO `linea_pedidos` (`id`, `idProduct`, `description`, `price`, `options`, `session_id`, `lineaPedido_is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'a:2:{s:4:"name";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";}', 24.60, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:34:"Diseño de una cara (+12,00&euro;)";}', 'iR1MMhc6svL7CB8qFlKudNeNp2teqPEk9eWHhrpD', 1, NULL, '2017-09-17 10:55:09', '2017-09-17 10:55:09'),
(2, 1, 'a:2:{s:4:"name";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"500";}', 51.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:34:"Diseño de una cara (+12,00&euro;)";}', 'iR1MMhc6svL7CB8qFlKudNeNp2teqPEk9eWHhrpD', 1, NULL, '2017-09-17 10:55:15', '2017-09-17 10:55:15'),
(3, 1, 'a:2:{s:4:"name";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:4:"1000";}', 89.85, 'a:3:{s:7:"Acabado";s:4:"Mate";s:8:"Urgencia";s:24:"Lo antes posible (+4.95)";s:7:"Diseño";s:37:"Diseño de las 2 caras (+20.00&euro;)";}', 'iR1MMhc6svL7CB8qFlKudNeNp2teqPEk9eWHhrpD', 1, NULL, '2017-09-17 10:55:23', '2017-09-17 10:55:23'),
(4, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"250";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 41.85, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:24:"Lo antes posible (+4.95)";s:7:"Diseño";s:34:"Diseño de una cara (+12,00&euro;)";}', 'mWdLgZGaj7Db6EHWZd9N0WArvKFAtxTTZ0eCbq5S', 1, NULL, '2017-09-17 14:29:17', '2017-09-17 14:29:17'),
(5, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 17.55, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:24:"Lo antes posible (+4.95)";s:7:"Diseño";s:11:"No requiere";}', 'nTli3MqeQX9wOcKpE2jVKJQOuOfXUDvULXxxwnP5', 1, NULL, '2017-09-17 16:52:17', '2017-09-17 16:52:17'),
(6, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"250";s:12:"Tipo Acabado";s:17:"Simples - 2 Caras";}', 43.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:34:"Diseño de una cara (+12,00&euro;)";}', 'nTli3MqeQX9wOcKpE2jVKJQOuOfXUDvULXxxwnP5', 1, NULL, '2017-09-17 16:52:24', '2017-09-17 16:52:24'),
(7, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"250";s:12:"Tipo Acabado";s:16:"Laminado 2 caras";}', 48.90, 'a:3:{s:7:"Acabado";s:4:"Mate";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:34:"Diseño de una cara (+12,00&euro;)";}', 'nTli3MqeQX9wOcKpE2jVKJQOuOfXUDvULXxxwnP5', 1, NULL, '2017-09-17 16:52:41', '2017-09-17 16:52:41'),
(8, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 17.55, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:24:"Lo antes posible (+4.95)";s:7:"Diseño";s:11:"No requiere";}', 'H6ldfkovzTlIBVJqgHwV28tBBUxaNUY4xsRmJPnE', 1, NULL, '2017-09-24 13:49:47', '2017-09-24 13:49:47'),
(9, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"250";s:12:"Tipo Acabado";s:17:"Simples - 2 Caras";}', 43.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:34:"Diseño de una cara (+12,00&euro;)";}', 'H6ldfkovzTlIBVJqgHwV28tBBUxaNUY4xsRmJPnE', 1, NULL, '2017-09-24 13:50:23', '2017-09-24 13:50:23'),
(10, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"250";s:12:"Tipo Acabado";s:16:"Laminado 2 caras";}', 48.90, 'a:3:{s:7:"Acabado";s:4:"Mate";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:34:"Diseño de una cara (+12,00&euro;)";}', 'H6ldfkovzTlIBVJqgHwV28tBBUxaNUY4xsRmJPnE', 1, NULL, '2017-09-24 13:51:09', '2017-09-24 13:51:09'),
(11, 5, 'a:3:{s:8:"producto";s:6:"Flyers";s:21:"Cantidad seleccionada";s:4:"2500";s:12:"Tipo Acabado";s:3:"A-6";}', 95.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', 1, NULL, '2017-10-07 17:26:53', '2017-10-07 17:26:53'),
(12, 27, 'a:3:{s:8:"producto";s:34:"Vinilo adhesivo económico impreso";s:21:"Cantidad seleccionada";s:6:"200 cm";s:12:"Tipo Acabado";s:17:"Ancho hasta 50 cm";}', 30.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', 1, NULL, '2017-10-07 17:27:04', '2017-10-07 17:27:04'),
(13, 27, 'a:3:{s:8:"producto";s:34:"Vinilo adhesivo económico impreso";s:21:"Cantidad seleccionada";s:6:"100 cm";s:12:"Tipo Acabado";s:18:"Ancho hasta 130 cm";}', 36.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', 1, NULL, '2017-10-07 17:27:11', '2017-10-07 17:27:11'),
(14, 37, 'a:3:{s:8:"producto";s:27:"Fotocuadro en cartón pluma";s:21:"Cantidad seleccionada";s:28:"70 x 100 cm Laminado Premium";s:12:"Tipo Acabado";s:8:"1 unidad";}', 49.00, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:19:"Retoque fotografico";s:2:"No";s:8:"Cantidad";s:1:"1";}', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', 1, NULL, '2017-10-07 17:27:29', '2017-10-07 17:27:29'),
(15, 13, 'a:3:{s:8:"producto";s:35:"Talonario Autcopiativo A4 Duplicado";s:21:"Cantidad seleccionada";s:13:"5 (250juegos)";s:12:"Tipo Acabado";s:15:"DUPLICADO NEGRO";}', 93.00, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:10:"Numeracion";s:2:"No";}', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', 1, NULL, '2017-10-07 17:27:44', '2017-10-07 17:27:44'),
(16, 13, 'a:3:{s:8:"producto";s:35:"Talonario Autcopiativo A4 Duplicado";s:21:"Cantidad seleccionada";s:16:"40 (2000 juegos)";s:12:"Tipo Acabado";s:15:"DUPLICADO NEGRO";}', 280.00, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:10:"Numeracion";s:2:"No";}', 'cm4Y9gDAK7u0nzoPpYxI87RhPmXNKN7i09LHlVss', 1, NULL, '2017-10-07 17:27:53', '2017-10-07 17:27:53'),
(17, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 12.60, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'FMjdCXslfXYg7cp8qZ6nLjQbGYSHp9TD25Vwu1u1', 1, NULL, '2017-10-13 19:17:49', '2017-10-13 19:17:49'),
(18, 5, 'a:3:{s:8:"producto";s:6:"Flyers";s:21:"Cantidad seleccionada";s:4:"1000";s:12:"Tipo Acabado";s:3:"A-6";}', 58.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'HSHcVBWUxYUz7Scg9JVwOcKOSE1Q5PNBQJdEcPTL', 1, NULL, '2017-10-13 19:21:46', '2017-10-13 19:21:46'),
(19, 39, 'a:3:{s:8:"producto";s:23:"Impresión - Fotocopias";s:21:"Cantidad seleccionada";i:1;s:12:"Tipo Acabado";N;}', 5.55, 'a:6:{s:14:"Tipo Impresion";s:3:"b/n";s:12:"Num. Paginas";s:2:"10";s:10:"Doble Cara";s:2:"no";s:12:"Encuadernado";s:15:"no_encuadernado";s:15:"Num. Ejemplares";s:1:"1";s:10:"Tipo Envio";s:5:"envio";}', 'xSLmNSrnE9fNPfNt4PPjYSSlu8y7ekGEA0LGYXdd', 1, NULL, '2017-10-15 21:15:25', '2017-10-15 21:15:25'),
(20, 39, 'a:3:{s:8:"producto";s:23:"Impresión - Fotocopias";s:21:"Cantidad seleccionada";i:1;s:12:"Tipo Acabado";N;}', 0.00, 'a:6:{s:14:"Tipo Impresion";s:23:"B/N - 0.06€ / página";s:12:"Num. Paginas";s:2:"10";s:10:"Doble Cara";s:2:"No";s:12:"Encuadernado";s:2:"No";s:15:"Num. Ejemplares";s:1:"2";s:10:"Tipo Envio";s:34:"Recojo en vuestra oficina (Gratis)";}', 'VPWrwk2irSGCB8r3146LTCboizl8PwW8Qircq0uk', 1, NULL, '2017-10-16 17:58:11', '2017-10-16 17:58:11'),
(21, 39, 'a:3:{s:8:"producto";s:23:"Impresión - Fotocopias";s:21:"Cantidad seleccionada";i:1;s:12:"Tipo Acabado";N;}', 0.00, 'a:6:{s:14:"Tipo Impresion";s:23:"B/N - 0.06€ / página";s:12:"Num. Paginas";s:2:"10";s:10:"Doble Cara";s:2:"No";s:12:"Encuadernado";s:2:"No";s:15:"Num. Ejemplares";s:1:"2";s:10:"Tipo Envio";s:34:"Recojo en vuestra oficina (Gratis)";}', 'VPWrwk2irSGCB8r3146LTCboizl8PwW8Qircq0uk', 1, NULL, '2017-10-16 17:58:34', '2017-10-16 17:58:34'),
(22, 39, 'a:3:{s:8:"producto";s:23:"Impresión - Fotocopias";s:21:"Cantidad seleccionada";i:1;s:12:"Tipo Acabado";N;}', 1.20, 'a:5:{s:14:"Tipo Impresion";s:23:"B/N - 0.06€ / página";s:12:"Num. Paginas";s:2:"10";s:10:"Doble Cara";s:2:"No";s:12:"Encuadernado";s:2:"No";s:15:"Num. Ejemplares";s:1:"2";}', 'VPWrwk2irSGCB8r3146LTCboizl8PwW8Qircq0uk', 1, NULL, '2017-10-16 17:58:47', '2017-10-16 17:58:47'),
(23, 39, 'a:3:{s:8:"producto";s:23:"Impresión - Fotocopias";s:21:"Cantidad seleccionada";i:1;s:12:"Tipo Acabado";N;}', 6.15, 'a:6:{s:14:"Tipo Impresion";s:23:"B/N - 0.06€ / página";s:12:"Num. Paginas";s:2:"10";s:10:"Doble Cara";s:2:"No";s:12:"Encuadernado";s:2:"No";s:15:"Num. Ejemplares";s:1:"2";s:10:"Tipo Envio";s:59:"Enviadlo a mi domicilio (+ 4,95 € ) - (Envío peninsular)";}', 'VPWrwk2irSGCB8r3146LTCboizl8PwW8Qircq0uk', 1, NULL, '2017-10-16 18:05:06', '2017-10-16 18:05:06'),
(24, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"250";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 24.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'c7npG8bQ7TTf8ec83wN3o692i2s0Ee1FCQAQNOcI', 1, NULL, '2017-10-28 14:40:07', '2017-10-28 14:40:07'),
(25, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'c7npG8bQ7TTf8ec83wN3o692i2s0Ee1FCQAQNOcI', 1, NULL, '2017-10-28 20:48:49', '2017-10-28 20:48:49'),
(26, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 12.60, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'X71ECuQcSyTdMnYN0BjEH2I6dUejKqm7lYO2dgdy', 1, NULL, '2017-11-01 18:53:19', '2017-11-01 18:53:19'),
(27, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 12.60, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'xdvnHNxig4LcHqE43AQL1JTBlBhPTHR9oTXoZLsd', 1, NULL, '2017-11-02 17:37:32', '2017-11-02 17:37:32'),
(28, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:17:"Simples - 2 Caras";}', 19.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'xdvnHNxig4LcHqE43AQL1JTBlBhPTHR9oTXoZLsd', 1, NULL, '2017-11-02 17:37:39', '2017-11-02 17:37:39'),
(29, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:15:"Laminado 1 cara";}', 18.50, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'xdvnHNxig4LcHqE43AQL1JTBlBhPTHR9oTXoZLsd', 1, NULL, '2017-11-02 17:37:46', '2017-11-02 17:37:46'),
(30, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 12.60, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:42:31', '2017-11-02 17:42:31'),
(31, 5, 'a:3:{s:8:"producto";s:6:"Flyers";s:21:"Cantidad seleccionada";s:4:"5000";s:12:"Tipo Acabado";s:3:"A-6";}', 130.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:42:40', '2017-11-02 17:42:40'),
(32, 13, 'a:3:{s:8:"producto";s:35:"Talonario Autcopiativo A4 Duplicado";s:21:"Cantidad seleccionada";s:13:"5 (250juegos)";s:12:"Tipo Acabado";s:15:"DUPLICADO NEGRO";}', 93.00, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:10:"Numeracion";s:2:"No";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:42:50', '2017-11-02 17:42:50'),
(33, 11, 'a:3:{s:8:"producto";s:17:"Carpetas normales";s:21:"Cantidad seleccionada";s:2:"10";s:12:"Tipo Acabado";s:28:" 1 cara - Carpetas Normales ";}', 16.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:42:59', '2017-11-02 17:42:59'),
(34, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"500";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 34.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:49:45', '2017-11-02 17:49:45'),
(35, 38, 'a:3:{s:8:"producto";s:18:"Placas Metacrilato";s:21:"Cantidad seleccionada";s:10:"15 x 21 cm";s:12:"Tipo Acabado";s:11:"5 mm Grosor";}', 24.00, 'a:3:{s:8:"Urgencia";s:2:"No";s:7:"Diseño";s:11:"No requiere";s:9:"Sujeccion";s:2:"No";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:50:08', '2017-11-02 17:50:08'),
(36, 42, 'a:3:{s:8:"producto";s:17:"Sobres Americanos";s:21:"Cantidad seleccionada";s:16:"1 caja (500 uds)";s:12:"Tipo Acabado";s:11:"Sin ventana";}', 65.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:50:23', '2017-11-02 17:50:23'),
(37, 25, 'a:3:{s:8:"producto";s:54:"Vinilo adhesivo formas personalizadas entrega en rollo";s:21:"Cantidad seleccionada";s:2:"50";s:12:"Tipo Acabado";s:9:"3 X 3 cm.";}', 29.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:50:32', '2017-11-02 17:50:32'),
(38, 75, 'a:3:{s:8:"producto";s:19:"Calendarios De mesa";s:21:"Cantidad seleccionada";s:2:"50";s:12:"Tipo Acabado";s:16:"CALENDARIOS MESA";}', 74.90, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:56:34', '2017-11-02 17:56:34'),
(39, 54, 'a:3:{s:8:"producto";s:13:"Tazas Blancas";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:7:"Blancas";}', 12.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:56:43', '2017-11-02 17:56:43'),
(40, 8, 'a:3:{s:8:"producto";s:25:"Carteles pequeño formato";s:21:"Cantidad seleccionada";s:2:"25";s:12:"Tipo Acabado";s:17:"A4 ( 21 X 29,7cm)";}', 15.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 17:56:51', '2017-11-02 17:56:51'),
(41, 8, 'a:3:{s:8:"producto";s:25:"Carteles pequeño formato";s:21:"Cantidad seleccionada";s:3:"200";s:12:"Tipo Acabado";s:20:"A3 PLUS ( 32 X 45cm)";}', 79.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'JO5U8Jmytt4q5B9c3zty6vMx0sRRDqhLs7rNeoO5', 1, NULL, '2017-11-02 18:04:28', '2017-11-02 18:04:28'),
(42, 5, 'a:3:{s:8:"producto";s:6:"Flyers";s:21:"Cantidad seleccionada";s:4:"1000";s:12:"Tipo Acabado";s:10:"10 X 21 cm";}', 80.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'NZDdcUu8hV4EQ93S806RdVojyJKyTklwineKeMA3', 1, NULL, '2017-11-02 18:22:35', '2017-11-02 18:22:35'),
(43, 5, 'a:3:{s:8:"producto";s:6:"Flyers";s:21:"Cantidad seleccionada";s:4:"1000";s:12:"Tipo Acabado";s:3:"A-6";}', 58.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'NZDdcUu8hV4EQ93S806RdVojyJKyTklwineKeMA3', 1, NULL, '2017-11-02 18:22:40', '2017-11-02 18:22:40'),
(44, 6, 'a:3:{s:8:"producto";s:17:"Folletos Doblados";s:21:"Cantidad seleccionada";s:4:"1000";s:12:"Tipo Acabado";s:20:"TRPTICO (A4 CERRADO)";}', 154.95, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'NZDdcUu8hV4EQ93S806RdVojyJKyTklwineKeMA3', 1, NULL, '2017-11-02 18:22:47', '2017-11-02 18:22:47'),
(45, 6, 'a:3:{s:8:"producto";s:17:"Folletos Doblados";s:21:"Cantidad seleccionada";s:4:"1000";s:12:"Tipo Acabado";s:20:"DIPTICO (A4 CERRADO)";}', 154.95, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'mzXTgGjZ13oirauk3v9Cy186oaDepHtMwXGdsTWz', 1, NULL, '2017-11-02 20:14:55', '2017-11-02 20:14:55'),
(46, 6, 'a:3:{s:8:"producto";s:17:"Folletos Doblados";s:21:"Cantidad seleccionada";s:4:"1000";s:12:"Tipo Acabado";s:20:"TRPTICO (A4 CERRADO)";}', 154.95, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'mzXTgGjZ13oirauk3v9Cy186oaDepHtMwXGdsTWz', 1, NULL, '2017-11-02 20:15:00', '2017-11-02 20:15:00'),
(47, 5, 'a:3:{s:8:"producto";s:6:"Flyers";s:21:"Cantidad seleccionada";s:4:"1000";s:12:"Tipo Acabado";s:3:"A-6";}', 58.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'jxqt7DN0GzilFnyOpvUreVSHmIFy2WQhUj7RMAmm', 1, NULL, '2017-11-02 20:28:55', '2017-11-02 20:28:55'),
(48, 9, 'a:3:{s:8:"producto";s:21:"Carteles gran formato";s:21:"Cantidad seleccionada";s:1:"2";s:12:"Tipo Acabado";s:11:"50 x 70 cm ";}', 17.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'jxqt7DN0GzilFnyOpvUreVSHmIFy2WQhUj7RMAmm', 1, NULL, '2017-11-02 20:29:05', '2017-11-02 20:29:05'),
(49, 9, 'a:3:{s:8:"producto";s:21:"Carteles gran formato";s:21:"Cantidad seleccionada";s:1:"4";s:12:"Tipo Acabado";s:16:"A-2 42 X 59,4 cm";}', 25.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'jxqt7DN0GzilFnyOpvUreVSHmIFy2WQhUj7RMAmm', 1, NULL, '2017-11-02 20:29:17', '2017-11-02 20:29:17'),
(50, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'XuU4e0xqTLi4pPZgIAHECpaMsxaGE8Af3g6KKcfA', 1, NULL, '2017-11-04 19:13:52', '2017-11-04 19:13:52'),
(51, 8, 'a:3:{s:8:"producto";s:25:"Carteles pequeño formato";s:21:"Cantidad seleccionada";s:3:"250";s:12:"Tipo Acabado";s:10:"50 x 70 cm";}', 199.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'XuU4e0xqTLi4pPZgIAHECpaMsxaGE8Af3g6KKcfA', 1, NULL, '2017-11-04 19:14:05', '2017-11-04 19:14:05'),
(52, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 12.60, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'zW99xLMUfWqPO7AHYiUTNCZYGQciZJXLwUYBpsQV', 1, NULL, '2017-11-04 22:26:52', '2017-11-04 22:26:52'),
(53, 9, 'a:3:{s:8:"producto";s:21:"Carteles gran formato";s:21:"Cantidad seleccionada";s:1:"5";s:12:"Tipo Acabado";s:16:"A-1 59,4 x 84 cm";}', 38.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'zW99xLMUfWqPO7AHYiUTNCZYGQciZJXLwUYBpsQV', 1, NULL, '2017-11-04 22:27:05', '2017-11-04 22:27:05'),
(54, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"500";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 34.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'd6LLOcHYT7jaIN0VC5wumwZObBkkHqFsvHBLOIrM', 1, NULL, '2017-11-05 18:10:54', '2017-11-05 18:10:54'),
(55, 5, 'a:3:{s:8:"producto";s:6:"Flyers";s:21:"Cantidad seleccionada";s:4:"1000";s:12:"Tipo Acabado";s:3:"A-6";}', 58.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'd6LLOcHYT7jaIN0VC5wumwZObBkkHqFsvHBLOIrM', 1, NULL, '2017-11-05 18:11:03', '2017-11-05 18:11:03'),
(56, 7, 'a:3:{s:8:"producto";s:23:"Flyers papel de colores";s:21:"Cantidad seleccionada";s:3:"500";s:12:"Tipo Acabado";s:38:"A6 ( 14,8 x 10,5 cm) IMPRESIÓN 1 CARA";}', 33.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:5:"Color";s:31:"Colores mezclados (por defecto)";}', 'd6LLOcHYT7jaIN0VC5wumwZObBkkHqFsvHBLOIrM', 1, NULL, '2017-11-05 18:11:24', '2017-11-05 18:11:24'),
(57, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"250";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 24.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'Tk6Ut4ggE2XnNW9Mpo3wMqVKztdq3kZkaxuEzYsI', 1, NULL, '2017-11-05 18:34:42', '2017-11-05 18:34:42'),
(58, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'Tk6Ut4ggE2XnNW9Mpo3wMqVKztdq3kZkaxuEzYsI', 1, NULL, '2017-11-05 18:34:47', '2017-11-05 18:34:47'),
(59, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 12.60, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'PyLlKW8TawD1RXb0uASCmxwVbDivmVj7UKqquFTF', 1, NULL, '2017-11-05 18:36:02', '2017-11-05 18:36:02'),
(60, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 12.60, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'vptDnk9I5o1F4aq0U84sfDhhoApNXp12hZgbHsMl', 1, NULL, '2017-11-07 18:39:18', '2017-11-07 18:39:18'),
(61, 8, 'a:3:{s:8:"producto";s:25:"Carteles pequeño formato";s:21:"Cantidad seleccionada";s:2:"50";s:12:"Tipo Acabado";s:20:"A3 PLUS ( 32 X 45cm)";}', 30.00, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'vptDnk9I5o1F4aq0U84sfDhhoApNXp12hZgbHsMl', 1, NULL, '2017-11-07 18:39:29', '2017-11-07 18:39:29'),
(62, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 12.60, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'ZsWKPzny69nss51x1NjBwXOMwrKdMKVz2I669r8d', 1, NULL, '2017-11-07 18:40:40', '2017-11-07 18:40:40'),
(63, 10, 'a:3:{s:8:"producto";s:14:"Expositor Lona";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:11:"85 x 200 cm";}', 59.90, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'ZsWKPzny69nss51x1NjBwXOMwrKdMKVz2I669r8d', 1, NULL, '2017-11-07 18:40:53', '2017-11-07 18:40:53'),
(64, 11, 'a:3:{s:8:"producto";s:17:"Carpetas normales";s:21:"Cantidad seleccionada";s:2:"10";s:12:"Tipo Acabado";s:28:" 1 cara - Carpetas Normales ";}', 16.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'ZsWKPzny69nss51x1NjBwXOMwrKdMKVz2I669r8d', 1, NULL, '2017-11-07 18:41:03', '2017-11-07 18:41:03'),
(65, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"100";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 12.60, 'a:3:{s:7:"Acabado";s:4:"Mate";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'd8IhKE8B6tzPwK6EidL2niavdcGTWXk5R4w8hiJq', 1, NULL, '2017-11-07 19:14:02', '2017-11-07 19:14:02'),
(66, 1, 'a:3:{s:8:"producto";s:26:"Tarjetas de visita simples";s:21:"Cantidad seleccionada";s:3:"250";s:12:"Tipo Acabado";s:16:"Simples - 1 Cara";}', 24.90, 'a:3:{s:7:"Acabado";s:6:"Brillo";s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'd8IhKE8B6tzPwK6EidL2niavdcGTWXk5R4w8hiJq', 1, NULL, '2017-11-07 19:14:08', '2017-11-07 19:14:08'),
(67, 36, 'a:3:{s:8:"producto";s:32:"Fotocuadro en bastidor de madera";s:21:"Cantidad seleccionada";s:10:"50 x 50 cm";s:12:"Tipo Acabado";s:8:"CUADRADO";}', 45.50, 'a:2:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";}', 'd8IhKE8B6tzPwK6EidL2niavdcGTWXk5R4w8hiJq', 1, NULL, '2017-11-07 19:14:18', '2017-11-07 19:14:18'),
(68, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'IrUVDaQP5xQzIoOQzzrmuS1OJRPDNKRdiNmgSmUe', 1, NULL, '2017-11-07 19:16:26', '2017-11-07 19:16:26'),
(69, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'XAtCkTSMDfc0f2bi2K4h8XBHpfO50CL4ohwSvqA5', 1, NULL, '2017-11-07 19:20:26', '2017-11-07 19:20:26'),
(70, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'bZnmKLKoNadgkzNIOx86sNUHbcYvGkhMXbLWYJ4J', 1, NULL, '2017-11-07 19:22:44', '2017-11-07 19:22:44'),
(71, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'lCBttdZygWwRXBwtXI3NQJjIgzq2FmtmFXPf2R7F', 1, NULL, '2017-11-08 19:10:55', '2017-11-08 19:10:55'),
(72, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'cCGqzr1tMzxtO8h8SOFNr4wED4ubZSSGkMkd9y5t', 1, NULL, '2017-11-08 19:12:05', '2017-11-08 19:12:05'),
(73, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'fZYg7ixYNUJzN9udep15cdxzvqKL58jwz8cet0hW', 1, NULL, '2017-11-08 19:23:15', '2017-11-08 19:23:15'),
(74, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', '6ZgEzv51BtQZgvQQpRrTIpUB0hCwfbe1vZ46301p', 1, NULL, '2017-11-08 19:25:51', '2017-11-08 19:25:51'),
(75, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', '6YEIdZpkApPFam9YI4ZlEFzhILKieZw9B8xDJlw7', 1, NULL, '2017-11-08 19:34:57', '2017-11-08 19:34:57'),
(76, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'NriYf104as8uADVeRjjp6uEyGVpD1kYOxTdGxw0P', 1, NULL, '2017-11-08 21:30:38', '2017-11-08 21:30:38'),
(77, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'KNd8HoTB0QjnEao78wKC4BAm6mo6DVI5Fq24owHW', 1, NULL, '2017-11-08 21:33:15', '2017-11-08 21:33:15'),
(78, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'IOXzEACy4RYV2jhu3T78vqWuVNpTx0DWf0dR69VM', 1, NULL, '2017-11-11 22:50:23', '2017-11-11 22:50:23'),
(79, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'x1as0yM2Por3DZdfD4KrkR1BobclS5nuipYYPfVP', 1, NULL, '2017-11-12 12:36:48', '2017-11-12 12:36:48'),
(80, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'CiBnQPr4eeiscyBGo5kMgnMEMwftMavHfHg9ztyF', 1, NULL, '2017-11-12 12:42:25', '2017-11-12 12:42:25'),
(81, 81, 'a:3:{s:8:"producto";s:8:"Oferta A";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:6:"Precio";}', 59.90, 'a:0:{}', 'wiowiZG5rkLEUny66ShCNrJpClyHAZyPLPC0T12M', 1, NULL, '2017-11-18 18:56:45', '2017-11-18 18:56:45'),
(82, 54, 'a:3:{s:8:"producto";s:13:"Tazas Blancas";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:7:"Blancas";}', 12.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 'goP2vZH84Pek1U56Cm6iwlUrwsVVIh04wxkVsZ5R', 1, NULL, '2017-12-04 22:21:21', '2017-12-04 22:21:21'),
(83, 54, 'a:3:{s:8:"producto";s:13:"Tazas Blancas";s:21:"Cantidad seleccionada";s:1:"3";s:12:"Tipo Acabado";s:7:"Blancas";}', 28.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 'goP2vZH84Pek1U56Cm6iwlUrwsVVIh04wxkVsZ5R', 1, NULL, '2017-12-04 22:21:30', '2017-12-04 22:21:30'),
(84, 55, 'a:3:{s:8:"producto";s:14:"Tazas De Color";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:8:"De Color";}', 13.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 't4KzAC5MPzep2mflzMBflRj6hRAy62bwbP5OzoqI', 1, NULL, '2017-12-04 22:23:12', '2017-12-04 22:23:12'),
(85, 55, 'a:3:{s:8:"producto";s:14:"Tazas De Color";s:21:"Cantidad seleccionada";s:2:"25";s:12:"Tipo Acabado";s:8:"De Color";}', 174.95, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 't4KzAC5MPzep2mflzMBflRj6hRAy62bwbP5OzoqI', 1, NULL, '2017-12-04 22:23:20', '2017-12-04 22:23:20'),
(86, 54, 'a:3:{s:8:"producto";s:13:"Tazas Blancas";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:7:"Blancas";}', 12.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 'Qx8UUvhJe5kNgU6IY1hTcWaKMjH2fQyOLtyrcWQM', 1, NULL, '2017-12-04 22:26:58', '2017-12-04 22:26:58'),
(87, 54, 'a:3:{s:8:"producto";s:13:"Tazas Blancas";s:21:"Cantidad seleccionada";s:1:"2";s:12:"Tipo Acabado";s:7:"Blancas";}', 19.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 'Qx8UUvhJe5kNgU6IY1hTcWaKMjH2fQyOLtyrcWQM', 1, NULL, '2017-12-04 22:27:04', '2017-12-04 22:27:04'),
(88, 54, 'a:3:{s:8:"producto";s:13:"Tazas Blancas";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:7:"Blancas";}', 12.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 'j7TRyxktJZOgndKHNdDnr1Kef0SxJP9RNvqDK2MQ', 1, NULL, '2017-12-04 22:30:17', '2017-12-04 22:30:17'),
(89, 54, 'a:3:{s:8:"producto";s:13:"Tazas Blancas";s:21:"Cantidad seleccionada";s:1:"3";s:12:"Tipo Acabado";s:7:"Blancas";}', 28.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 'j7TRyxktJZOgndKHNdDnr1Kef0SxJP9RNvqDK2MQ', 1, NULL, '2017-12-04 22:30:23', '2017-12-04 22:30:23'),
(90, 54, 'a:3:{s:8:"producto";s:13:"Tazas Blancas";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:7:"Blancas";}', 12.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 'Zq2Se7HEeYr6yfcghlsRfsC7zwwRqOEwbhEWCUGr', 1, NULL, '2017-12-04 22:32:54', '2017-12-04 22:32:54'),
(91, 54, 'a:3:{s:8:"producto";s:13:"Tazas Blancas";s:21:"Cantidad seleccionada";s:1:"1";s:12:"Tipo Acabado";s:7:"Blancas";}', 12.90, 'a:3:{s:8:"Urgencia";s:15:"Normal (Gratis)";s:7:"Diseño";s:11:"No requiere";s:7:"Plegado";s:20:"A la derecha del asa";}', 'dsszFJtQZoVNnZjvE4F4KL7GEP4QYChGhSekf3VI', 1, NULL, '2017-12-04 22:58:34', '2017-12-04 22:58:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2017_01_12_105440_create_categories_table', 1),
(35, '2017_01_12_171533_create_productos_table', 1),
(36, '2017_01_12_171534_create_ofertas_table', 1),
(38, '2017_01_21_185509_create_contactos_table', 3),
(39, '2017_01_24_100227_create_presupuestos_table', 4),
(40, '2017_04_22_191301_create_type_price_products_table', 5),
(41, '2017_04_22_191446_create_price_products_table', 5),
(42, '2017_05_13_165501_create_clientes_table', 6),
(43, '2017_05_13_165501_create_tipo_pagos_table', 6),
(44, '2017_05_13_165502_create_pedidos_table', 6),
(45, '2017_05_13_174029_create_linea_pedidos_table', 6),
(46, '2017_05_13_221729_create_tipo_presupuestos_table', 6),
(47, '2017_09_09_112137_update_table_productos', 6),
(48, '2017_09_09_121607_update_table_categories', 6),
(49, '2017_09_09_122442_update_table_users', 6),
(50, '2017_09_09_123701_update_table_presupuestos', 6),
(51, '2017_09_10_180425_update_Table_cliente', 7),
(52, '2017_09_13_134038_create_table_company_shippings', 7),
(53, '2017_09_13_134534_update_table_pedidos', 7),
(54, '2017_09_17_135956_update_table_cliente_observations', 8),
(55, '2017_10_15_112106_CreateTableConfig', 9),
(56, '2017_10_15_113314_create_jobs_table', 9),
(57, '2017_10_03_203207_configs', 10),
(58, '2017_10_16_224237_update_table_presupuestos_serialized', 10),
(59, '2017_10_29_131518_add_is_offer_products', 11),
(60, '2017_11_04_195838_update_pedido_with_fields_iva', 12),
(61, '2017_11_06_203900_create_cron_logs_table', 13),
(62, '2017_11_18_193441_update_users_last_login', 14),
(63, '2017_11_18_213457_update_users_current_login', 15),
(64, '2017_12_04_222941_create_table_facturas', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idPedido` int(10) UNSIGNED NOT NULL,
  `idCliente` int(10) UNSIGNED NOT NULL,
  `idLineas` text COLLATE utf8_unicode_ci NOT NULL,
  `idTipoPago` int(10) UNSIGNED NOT NULL,
  `totalIVA` double(8,2) DEFAULT NULL,
  `withoutIVA` double(8,2) DEFAULT NULL,
  `totalPedido` double(8,2) NOT NULL,
  `isSent` tinyint(1) NOT NULL,
  `isPaid` tinyint(1) NOT NULL,
  `num_seguimiento` text COLLATE utf8_unicode_ci NOT NULL,
  `company_shipping` int(10) UNSIGNED DEFAULT NULL,
  `numIdentificacionPedido` text COLLATE utf8_unicode_ci,
  `picked_up_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`idPedido`, `idCliente`, `idLineas`, `idTipoPago`, `totalIVA`, `withoutIVA`, `totalPedido`, `isSent`, `isPaid`, `num_seguimiento`, `company_shipping`, `numIdentificacionPedido`, `picked_up_at`, `sent_at`, `paid_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}', 1, NULL, NULL, 201.28, 0, 0, '', NULL, '0e564600-9b97-11e7-8e6b-2368cb81df39', NULL, NULL, NULL, '2017-09-17 10:57:54', '2017-09-17 10:57:54'),
(5, 6, 'a:1:{i:0;i:4;}', 1, NULL, NULL, 50.64, 0, 0, '', NULL, 'df72f650-9bb4-11e7-b530-17125cc713d4', NULL, NULL, NULL, '2017-09-17 14:31:20', '2017-09-17 14:31:20'),
(7, 8, 'a:3:{i:0;i:5;i:1;i:6;i:2;i:7;}', 1, NULL, NULL, 133.52, 0, 0, '', 2, 'cb8c1f40-9bc8-11e7-a0c0-5f4fee938610', NULL, NULL, NULL, '2017-09-17 16:53:56', '2017-09-17 18:59:20'),
(12, 13, 'a:6:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:14;i:4;i:15;i:5;i:16;}', 1, NULL, NULL, 705.43, 0, 0, '', NULL, 'e947ec80-ab84-11e7-9873-f1742d40a465', NULL, NULL, NULL, '2017-10-07 17:28:19', '2017-10-07 17:28:19'),
(13, 14, 'a:6:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:14;i:4;i:15;i:5;i:16;}', 1, NULL, NULL, 705.43, 0, 0, '', NULL, '49e61b30-ab85-11e7-b188-15d5998f8cbd', NULL, NULL, NULL, '2017-10-07 17:31:01', '2017-10-07 17:31:01'),
(14, 15, 'a:6:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:14;i:4;i:15;i:5;i:16;}', 1, NULL, NULL, 705.43, 0, 0, '', NULL, '65fee5c0-ab86-11e7-acdb-377f00bc81cb', NULL, NULL, NULL, '2017-10-07 17:38:58', '2017-10-07 17:38:58'),
(15, 16, 'a:6:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:14;i:4;i:15;i:5;i:16;}', 1, NULL, NULL, 705.43, 0, 0, '', NULL, 'c9a36800-ab86-11e7-a2cd-8944e24340a2', NULL, NULL, NULL, '2017-10-07 17:41:45', '2017-10-07 17:41:45'),
(16, 17, 'a:6:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:14;i:4;i:15;i:5;i:16;}', 1, NULL, NULL, 705.43, 0, 0, '', NULL, '9b8e6f80-ab88-11e7-9632-393d51ad9262', NULL, NULL, NULL, '2017-10-07 17:54:47', '2017-10-07 17:54:47'),
(17, 18, 'a:6:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:14;i:4;i:15;i:5;i:16;}', 1, NULL, NULL, 705.43, 0, 0, '', NULL, 'e989e890-ab88-11e7-b144-99f2d4f7b793', NULL, NULL, NULL, '2017-10-07 17:56:58', '2017-10-07 17:56:58'),
(19, 20, 'a:1:{i:0;i:17;}', 1, NULL, NULL, 15.25, 0, 0, '', NULL, '441f8eb0-b04b-11e7-b42c-79999b1374fd', NULL, NULL, NULL, '2017-10-13 19:18:17', '2017-10-13 19:18:17'),
(20, 21, 'a:1:{i:0;i:18;}', 1, NULL, NULL, 70.18, 0, 0, '', NULL, 'cac77ec0-b04b-11e7-bc7a-7f92a62c9cc5', NULL, NULL, NULL, '2017-10-13 19:22:02', '2017-10-13 19:22:02'),
(22, 23, 'a:3:{i:0;i:27;i:1;i:28;i:2;i:29;}', 1, NULL, NULL, 61.71, 0, 0, '', NULL, '95e07ee0-bff4-11e7-ae19-e7046c4995ac', NULL, NULL, NULL, '2017-11-02 17:38:06', '2017-11-02 17:38:06'),
(26, 27, 'a:4:{i:0;i:30;i:1;i:31;i:2;i:32;i:3;i:33;}', 1, NULL, NULL, 305.53, 0, 0, '', NULL, '4d81b410-bff5-11e7-94ff-7976720cab68', NULL, NULL, NULL, '2017-11-02 17:43:14', '2017-11-02 17:43:14'),
(27, 28, 'a:4:{i:0;i:30;i:1;i:31;i:2;i:32;i:3;i:33;}', 1, NULL, NULL, 305.53, 0, 0, '', NULL, 'f7e803f0-bff5-11e7-ba2f-95c0aa39d594', NULL, NULL, NULL, '2017-11-02 17:48:00', '2017-11-02 17:48:00'),
(28, 29, 'a:8:{i:0;i:30;i:1;i:31;i:2;i:32;i:3;i:33;i:4;i:34;i:5;i:35;i:6;i:36;i:7;i:37;}', 1, NULL, NULL, 185.01, 0, 0, '', NULL, '5e2e9570-bff6-11e7-8082-2ff683c7bc31', NULL, NULL, NULL, '2017-11-02 17:50:52', '2017-11-02 17:50:52'),
(29, 30, 'a:12:{i:0;i:30;i:1;i:31;i:2;i:32;i:3;i:33;i:4;i:34;i:5;i:35;i:6;i:36;i:7;i:37;i:8;i:38;i:9;i:39;i:10;i:40;i:11;i:41;}', 1, NULL, NULL, 219.98, 0, 0, '', NULL, '4e5632f0-bff8-11e7-899b-434f32d6dcf3', NULL, NULL, NULL, '2017-11-02 18:04:44', '2017-11-02 18:04:44'),
(33, 34, 'a:3:{i:0;i:42;i:1;i:43;i:2;i:44;}', 1, NULL, NULL, 354.47, 0, 0, '', NULL, 'db58b4f0-bffa-11e7-a25a-f70c713672e0', NULL, NULL, NULL, '2017-11-02 18:23:00', '2017-11-02 18:23:00'),
(34, 35, 'a:2:{i:0;i:45;i:1;i:46;}', 1, NULL, NULL, 374.98, 0, 0, '', NULL, '8b603080-c00a-11e7-b1b5-dbc7b0b03b3e', NULL, NULL, NULL, '2017-11-02 20:15:17', '2017-11-02 20:15:17'),
(35, 36, 'a:3:{i:0;i:47;i:1;i:48;i:2;i:49;}', 1, NULL, NULL, 121.00, 0, 0, '', NULL, '8a704e80-c00c-11e7-b82e-d77583404d5e', NULL, NULL, NULL, '2017-11-02 20:29:35', '2017-11-02 20:29:35'),
(36, 37, 'a:2:{i:0;i:50;i:1;i:51;}', 1, 54.37, 258.90, 313.27, 0, 0, '', NULL, '6073e5e0-c194-11e7-9994-194a09421dbf', NULL, NULL, NULL, '2017-11-04 19:14:27', '2017-11-04 19:14:27'),
(37, 38, 'a:2:{i:0;i:52;i:1;i:53;}', 1, 10.63, 50.60, 61.23, 0, 0, '', NULL, '52af8870-c1af-11e7-90ee-15757f8b3a62', NULL, NULL, NULL, '2017-11-04 22:27:20', '2017-11-04 22:27:20'),
(38, 39, 'a:3:{i:0;i:54;i:1;i:55;i:2;i:56;}', 1, 26.63, 126.80, 153.43, 0, 0, '', NULL, 'c492b500-c254-11e7-b161-6b643aae68cc', NULL, NULL, NULL, '2017-11-05 18:11:38', '2017-11-05 18:11:38'),
(39, 40, 'a:2:{i:0;i:57;i:1;i:58;}', 1, 17.81, 84.80, 102.61, 0, 0, '', NULL, '1248e600-c258-11e7-aeec-f91ce0e5363e', NULL, NULL, NULL, '2017-11-05 18:35:17', '2017-11-05 18:35:17'),
(40, 41, 'a:1:{i:0;i:59;}', 1, 2.65, 12.60, 15.25, 0, 0, '', NULL, '355e70c0-c258-11e7-96b4-a5e346ea7b2d', NULL, NULL, NULL, '2017-11-05 18:36:16', '2017-11-05 18:36:16'),
(41, 42, 'a:2:{i:0;i:60;i:1;i:61;}', 1, 8.95, 42.60, 51.55, 0, 0, '', NULL, '077068e0-c3eb-11e7-9d91-991378b4f5fb', NULL, NULL, NULL, '2017-11-07 18:39:46', '2017-11-07 18:39:46'),
(42, 43, 'a:3:{i:0;i:62;i:1;i:63;i:2;i:64;}', 1, 18.77, 89.40, 108.17, 0, 0, '', NULL, '3e7f41c0-c3eb-11e7-95ea-23dfcd256511', NULL, NULL, NULL, '2017-11-07 18:41:19', '2017-11-07 18:41:19'),
(43, 44, 'a:3:{i:0;i:65;i:1;i:66;i:2;i:67;}', 1, 17.43, 83.00, 100.43, 0, 0, '', NULL, 'e21668a0-c3ef-11e7-b426-5965a20a2f97', NULL, NULL, NULL, '2017-11-07 19:14:31', '2017-11-07 19:14:31'),
(44, 45, 'a:1:{i:0;i:68;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, '31335520-c3f0-11e7-b992-9b8da2f69be5', NULL, NULL, NULL, '2017-11-07 19:16:44', '2017-11-07 19:16:44'),
(45, 46, 'a:1:{i:0;i:69;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, 'bfd5f380-c3f0-11e7-9b2b-5b09b3ba31ca', NULL, NULL, NULL, '2017-11-07 19:20:43', '2017-11-07 19:20:43'),
(46, 47, 'a:1:{i:0;i:70;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, '1279f960-c3f1-11e7-9232-ffa7acc000d5', NULL, NULL, NULL, '2017-11-07 19:23:02', '2017-11-07 19:23:02'),
(47, 48, 'a:1:{i:0;i:71;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, '97d2c200-c4b8-11e7-84b9-eb7b8623a4fe', NULL, NULL, NULL, '2017-11-08 19:11:15', '2017-11-08 19:11:15'),
(48, 49, 'a:1:{i:0;i:72;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, 'c0153bf0-c4b8-11e7-8db3-793a5f5445ba', NULL, NULL, NULL, '2017-11-08 19:12:23', '2017-11-08 19:12:23'),
(49, 50, 'a:1:{i:0;i:73;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, '4fa2d360-c4ba-11e7-ae4e-91b39cc382e5', NULL, NULL, NULL, '2017-11-08 19:23:33', '2017-11-08 19:23:33'),
(50, 51, 'a:1:{i:0;i:74;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, 'aabb6f70-c4ba-11e7-86a7-9fb15fee4eed', NULL, NULL, NULL, '2017-11-08 19:26:06', '2017-11-08 19:26:06'),
(51, 52, 'a:1:{i:0;i:75;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, 'f39aafa0-c4bb-11e7-9056-9396f7b6c6ff', NULL, NULL, NULL, '2017-11-08 19:35:18', '2017-11-08 19:35:18'),
(52, 53, 'a:1:{i:0;i:76;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, '1ea3fdc0-c4cc-11e7-a664-a7095455d661', NULL, NULL, NULL, '2017-11-08 21:31:02', '2017-11-08 21:31:02'),
(53, 54, 'a:1:{i:0;i:77;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, '7879fa20-c4cc-11e7-95f7-bb0ae9b03c40', NULL, NULL, NULL, '2017-11-08 21:33:33', '2017-11-08 21:33:33'),
(54, 55, 'a:1:{i:0;i:78;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, 'bcdb2e50-c732-11e7-bbd2-2fc26668de1c', NULL, NULL, NULL, '2017-11-11 22:50:38', '2017-11-11 22:50:38'),
(55, 56, 'a:1:{i:0;i:79;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, '34193e20-c7a6-11e7-81f0-671cee399d25', NULL, NULL, NULL, '2017-11-12 12:37:11', '2017-11-12 12:37:11'),
(56, 57, 'a:1:{i:0;i:80;}', 1, 12.58, 59.90, 72.48, 0, 0, '12', 2, '06623140-c7a7-11e7-a55f-5b46353dad93', NULL, NULL, NULL, '2017-11-12 12:43:03', '2017-11-17 22:27:56'),
(57, 58, 'a:1:{i:0;i:81;}', 1, 12.58, 59.90, 72.48, 0, 0, '', NULL, '4f8e97a0-cc92-11e7-8224-65293c7ea088', NULL, NULL, NULL, '2017-11-18 18:57:23', '2017-11-18 18:57:23'),
(58, 59, 'a:2:{i:0;i:82;i:1;i:83;}', 1, 8.78, 41.80, 50.58, 0, 0, '', NULL, '9af85530-d941-11e7-ab1f-fb84fab25160', NULL, NULL, NULL, '2017-12-04 22:22:25', '2017-12-04 22:22:25'),
(59, 60, 'a:2:{i:0;i:84;i:1;i:85;}', 1, 39.66, 188.85, 228.51, 0, 0, '', NULL, 'c582ce00-d941-11e7-b263-297c6f79d73e', NULL, NULL, NULL, '2017-12-04 22:23:36', '2017-12-04 22:23:36'),
(60, 61, 'a:2:{i:0;i:86;i:1;i:87;}', 1, 6.89, 32.80, 39.69, 0, 0, '', NULL, '48a01b00-d942-11e7-87d7-a763fac12716', NULL, NULL, NULL, '2017-12-04 22:27:16', '2017-12-04 22:27:16'),
(61, 62, 'a:2:{i:0;i:88;i:1;i:89;}', 1, 8.78, 41.80, 50.58, 0, 0, '', NULL, 'c1e47fa0-d942-11e7-8071-0fc7620fb8e4', NULL, NULL, NULL, '2017-12-04 22:30:40', '2017-12-04 22:30:40'),
(62, 63, 'a:1:{i:0;i:90;}', 1, 2.71, 12.90, 15.61, 0, 0, '', NULL, 'a5da1160-d943-11e7-afcc-d1e2bee17d70', NULL, NULL, NULL, '2017-12-04 22:37:02', '2017-12-04 22:37:02'),
(63, 64, 'a:1:{i:0;i:91;}', 1, 2.71, 12.90, 15.61, 0, 0, '', NULL, 'ad86fb20-d946-11e7-804f-6159f63f5b5e', NULL, NULL, NULL, '2017-12-04 22:58:44', '2017-12-04 22:58:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuestos`
--

CREATE TABLE `presupuestos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `empresa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comentario` text COLLATE utf8_unicode_ci NOT NULL,
  `dataAboutIt` text COLLATE utf8_unicode_ci,
  `respondido` tinyint(1) NOT NULL,
  `idProducto` int(10) UNSIGNED NOT NULL,
  `budget_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `presupuestos`
--

INSERT INTO `presupuestos` (`id`, `nombre`, `email`, `telefono`, `provincia`, `empresa`, `comentario`, `dataAboutIt`, `respondido`, `idProducto`, `budget_is_active`, `deleted_at`, `deleted_by_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Jose', 'jose@jose.com', '63985214', 'Girona', 'PEPE', 'adadadadadad', NULL, 0, 40, 1, NULL, NULL, '2017-01-24 09:55:28', '2017-01-24 09:55:28'),
(2, 'pepe', 'pepe@pepe.com', '652417891', 'Cuenca', 'PEPE', 'pepepepepepepepepepe', NULL, 1, 40, 1, NULL, NULL, '2017-01-24 09:56:09', '2017-01-24 09:56:09'),
(3, 'nono', 'email@email.com', '645858585', 'Granada', 'mia', 'letreros', NULL, 0, 44, 1, NULL, NULL, '2017-10-16 18:07:57', '2017-10-16 18:07:57'),
(4, 'nono', 'email@email.com', '64585858', 'Islas Baleares', 'mia', 'Camisetas', NULL, 0, 64, 1, NULL, NULL, '2017-10-16 18:14:59', '2017-10-16 18:14:59'),
(5, 'nono', 'email@email.com', '64585858', 'Coruña (A)', 'mia', 'Polos', NULL, 0, 65, 1, NULL, NULL, '2017-10-16 18:15:39', '2017-10-16 18:15:39'),
(6, 'nono', 'email@email.com', '64585858', 'Girona', 'mia', 'Sudaderas', NULL, 0, 66, 1, NULL, NULL, '2017-10-16 18:22:07', '2017-10-16 18:22:07'),
(7, 'nono', 'email@email.com', '64585858', 'Ciudad Real', 'mia', 'Ropa Laboral', NULL, 0, 67, 1, NULL, NULL, '2017-10-16 18:22:09', '2017-10-16 18:22:09'),
(8, 'nono', 'email@email.com', '64585858', 'Cuenca', 'mia', 'Ropa Deportiva', NULL, 0, 68, 1, NULL, NULL, '2017-10-16 18:22:11', '2017-10-16 18:22:11'),
(9, 'nono', 'email@email.com', '64585858', 'Islas Baleares', 'mia', 'Shoftshell', NULL, 0, 69, 1, NULL, NULL, '2017-10-16 18:22:12', '2017-10-16 18:22:12'),
(10, 'nono', 'email@email.com', '64585858', 'Avila', 'mia', 'Forro Polar', NULL, 0, 70, 1, NULL, NULL, '2017-10-16 18:22:14', '2017-10-16 18:22:14'),
(11, 'nono', 'email@email.com', '645487649', 'Alicante', 'mia', 'Camisetas Personalizadas', NULL, 0, 43, 1, NULL, NULL, '2017-10-16 18:26:10', '2017-10-16 18:26:10'),
(12, 'nono', 'email@email.com', '645487649', 'Avila', 'mia', 'Letras Corporeas', NULL, 0, 41, 1, NULL, NULL, '2017-10-16 18:26:37', '2017-10-16 18:26:37'),
(13, 'nono', 'email@email.com', '645487649', 'Ciudad Real', 'mia', 'Diseño Gráfico', NULL, 0, 40, 1, NULL, NULL, '2017-10-16 18:27:06', '2017-10-16 18:27:06'),
(14, 'nono', 'email@email.com', '64585858', 'Soria', 'mia', 'Placas', NULL, 0, 46, 1, NULL, NULL, '2017-10-16 18:28:16', '2017-10-16 18:28:16'),
(15, 'nono', 'email@email.com', '64585858', 'Guadalajara', 'mia', 'Trofeos', NULL, 0, 45, 1, NULL, NULL, '2017-10-16 18:28:17', '2017-10-16 18:28:17'),
(16, 'nono', 'email@email.com', '64585858', 'Valladolid', 'mia', 'Copas', NULL, 0, 47, 1, NULL, NULL, '2017-10-16 18:28:51', '2017-10-16 18:28:51'),
(17, 'nono', 'email@email.com', '64585858', 'Ceuta', 'mia', 'Murales', NULL, 0, 79, 1, NULL, NULL, '2017-10-16 18:29:22', '2017-10-16 18:29:22'),
(18, 'non', 'email@email.com', '64585858', 'Bizkaia', 'mia', 'Rotulación De Vehículos', NULL, 0, 74, 1, NULL, NULL, '2017-10-16 18:30:00', '2017-10-16 18:30:00'),
(19, 'nono', 'email@email.com', '64585858', 'Cantabria', 'mia', 'Libretas Personalizadas', NULL, 0, 24, 1, NULL, NULL, '2017-10-16 18:30:52', '2017-10-16 18:30:52'),
(20, 'nono', 'email@email.com', '64585858', 'Santa Cruz de Tenerife', 'mia', 'Libros / Revistas / Catálogos', NULL, 0, 21, 1, NULL, NULL, '2017-10-16 18:31:28', '2017-10-16 18:31:28'),
(21, 'nono', 'email@email.com', '64585858', 'Burgos', 'mia', 'Calendarios De Pared\r\n', NULL, 0, 23, 1, NULL, NULL, '2017-10-16 18:38:05', '2017-10-16 18:38:05'),
(22, 'nono', 'email@email.com', '64585858', 'Girona', '', 'Calendarios De Bolsillo', NULL, 0, 76, 1, NULL, NULL, '2017-10-16 18:38:39', '2017-10-16 18:38:39'),
(23, 'nono', 'email@email.com', '64585858', '', '', 'Calendarios De Imán', NULL, 0, 77, 1, NULL, NULL, '2017-10-16 18:39:23', '2017-10-16 18:39:23'),
(24, 'nono', 'email@email.com', '64585858', '', '', 'Photocall', NULL, 0, 72, 1, NULL, NULL, '2017-10-16 18:39:46', '2017-10-16 18:39:46'),
(25, 'nono', 'email@email.com', '64585858', 'Albacete', 'mia', 'Vinilo Decorativo De Corte\r\n', NULL, 0, 31, 1, NULL, NULL, '2017-10-18 20:50:23', '2017-10-18 20:50:23'),
(26, 'nono', 'email@email.com', '64585858', 'Albacete', 'mia', 'Vinilo Decorativo De Corte', 'a:3:{s:7:"Medidas";s:7:"30 x 50";s:4:"Tipo";s:8:"Exterior";s:7:"Colores";s:1:"2";}', 0, 31, 1, NULL, NULL, '2017-10-18 20:53:41', '2017-10-18 20:53:41'),
(27, 'nono', 'email@email.com', '64585858', 'Granada', 'mia', 'Trofeos', NULL, 0, 45, 1, NULL, NULL, '2017-10-18 20:56:59', '2017-10-18 20:56:59'),
(28, 'nono', 'email@email.com', '64585858', 'Albacete', 'mia', 'Trofeos', NULL, 0, 45, 1, NULL, NULL, '2017-10-18 20:57:41', '2017-10-18 20:57:41'),
(29, 'Antonio Extremera Marquez', 'nonoillora@gmailcom', '695898807', 'Granada', '1991', 'adsa', NULL, 0, 45, 1, NULL, NULL, '2017-10-18 20:58:30', '2017-10-18 20:58:30'),
(30, 'Antonio Extremera Marquez', 'nonoillora@gmailcom', '695898807', 'Granada', '1991', 'adad', NULL, 0, 45, 1, NULL, NULL, '2017-10-18 21:01:13', '2017-10-18 21:01:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `price_products`
--

CREATE TABLE `price_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `idTypePriceProduct` int(10) UNSIGNED NOT NULL,
  `count` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `price_products`
--

INSERT INTO `price_products` (`id`, `idTypePriceProduct`, `count`, `price`, `created_at`, `updated_at`) VALUES
(9, 1, '100', '12.60', '2017-04-27 13:58:27', '2017-05-01 06:16:50'),
(11, 2, '100', '19.90', '2017-04-29 18:26:48', '2017-04-29 18:27:09'),
(25, 12, '1', '68.90', '2017-05-08 06:39:09', '2017-05-08 06:40:47'),
(26, 12, '2', '131.90', '2017-05-08 06:40:16', '2017-05-08 06:40:16'),
(27, 12, '3', '253.90', '2017-05-08 06:41:23', '2017-05-08 06:41:23'),
(28, 12, '5', '313.90', '2017-05-08 06:42:03', '2017-05-08 06:42:03'),
(29, 12, '10', '597.90', '2017-05-08 06:42:35', '2017-05-08 06:42:35'),
(30, 12, '15', '866.50', '2017-05-08 06:43:09', '2017-05-08 06:43:09'),
(31, 13, '1', '83.90', '2017-05-08 06:43:39', '2017-05-08 06:43:39'),
(32, 13, '2', '156.90', '2017-05-08 06:44:30', '2017-05-08 06:44:30'),
(33, 13, '3', '225.90', '2017-05-08 06:45:08', '2017-05-08 06:45:08'),
(34, 13, '4', '294.90', '2017-05-08 06:45:45', '2017-05-08 06:45:45'),
(35, 13, '5', '359.90', '2017-05-08 06:46:29', '2017-05-08 06:46:29'),
(36, 13, '10', '683.90', '2017-05-08 06:47:28', '2017-05-08 06:47:28'),
(37, 13, '15', '866.50', '2017-05-08 06:48:08', '2017-05-08 06:48:08'),
(38, 14, '1', '143.90', '2017-05-08 06:48:44', '2017-05-08 06:48:44'),
(39, 14, '2', '272.90', '2017-05-08 06:50:56', '2017-05-08 06:50:56'),
(40, 14, '3', '402.90', '2017-05-08 06:53:43', '2017-05-08 06:53:43'),
(41, 14, '4', '531.90', '2017-05-08 06:54:18', '2017-05-08 06:54:18'),
(42, 14, '5', '663.90', '2017-05-08 06:55:03', '2017-05-08 06:55:03'),
(43, 14, '10', '1299.90', '2017-05-08 06:56:25', '2017-05-08 06:56:25'),
(44, 14, '15', '1924.50', '2017-05-08 06:57:05', '2017-05-08 06:57:05'),
(45, 12, '4', '263.90', '2017-05-08 06:57:47', '2017-05-08 06:57:47'),
(46, 15, '1', '12.90', '2017-05-08 07:01:08', '2017-05-08 07:01:08'),
(47, 15, '2', '19.90', '2017-05-08 07:01:23', '2017-05-08 07:01:23'),
(48, 15, '3', '28.90', '2017-05-08 07:01:38', '2017-05-08 07:01:38'),
(49, 15, '4', '34.90', '2017-05-08 07:01:58', '2017-05-08 07:01:58'),
(50, 15, '5', '42.90', '2017-05-08 07:02:16', '2017-05-08 07:02:16'),
(51, 15, '6', '51.85', '2017-05-08 07:02:37', '2017-05-08 07:02:37'),
(52, 15, '7', '57.95', '2017-05-08 07:04:38', '2017-05-08 07:04:38'),
(53, 15, '8', '64.10', '2017-05-08 07:05:01', '2017-05-08 07:05:01'),
(54, 15, '9', '67.20', '2017-05-08 07:05:21', '2017-05-08 07:05:21'),
(55, 15, '10', '74.95', '2017-05-08 07:05:34', '2017-05-08 07:05:34'),
(56, 15, '15', '103.50', '2017-05-08 07:05:49', '2017-05-08 07:05:49'),
(57, 15, '20', '132.10', '2017-05-08 07:06:06', '2017-05-08 07:06:06'),
(58, 15, '25', '154.95', '2017-05-08 07:09:18', '2017-05-08 07:09:18'),
(59, 15, '50', '287.90', '2017-05-08 07:09:34', '2017-05-08 07:09:34'),
(60, 15, '100', '449.10', '2017-05-08 07:09:53', '2017-05-08 07:09:53'),
(61, 15, '250', '897.15', '2017-05-08 07:10:13', '2017-05-08 07:10:13'),
(62, 16, '10', '16.90', '2017-05-08 07:17:35', '2017-05-15 14:19:43'),
(63, 16, '25', '34.90', '2017-05-08 07:17:52', '2017-05-15 14:31:26'),
(64, 16, '50', '52.90', '2017-05-08 07:18:12', '2017-05-15 14:20:43'),
(65, 16, '100', '84.90', '2017-05-08 07:18:30', '2017-05-15 14:21:13'),
(66, 16, '250', '183.90', '2017-05-08 08:39:03', '2017-05-15 14:18:17'),
(67, 16, '500', '229.90', '2017-05-08 08:43:11', '2017-05-15 14:18:32'),
(122, 1, '250', '24.90', '2017-05-15 09:15:49', '2017-05-15 09:15:49'),
(123, 1, '500', '34.90', '2017-05-15 09:16:15', '2017-05-15 09:16:15'),
(125, 2, '250', '31.90', '2017-05-15 09:19:16', '2017-05-15 09:19:16'),
(126, 2, '500', '39.90', '2017-05-15 09:19:42', '2017-05-15 09:19:42'),
(127, 2, '1000', '54.90', '2017-05-15 09:20:41', '2017-08-30 16:16:25'),
(128, 35, '100', '18.50', '2017-05-15 09:21:48', '2017-05-15 09:21:48'),
(129, 35, '250', '29.90', '2017-05-15 09:22:11', '2017-05-15 09:23:19'),
(130, 35, '500', '39.90', '2017-05-15 09:22:53', '2017-05-15 09:22:53'),
(131, 35, '1000', '54.90', '2017-05-15 09:23:54', '2017-05-15 09:23:54'),
(132, 36, '100', '23.90', '2017-05-15 09:24:43', '2017-05-15 09:24:43'),
(133, 36, '250', '36.90', '2017-05-15 09:25:30', '2017-05-15 09:25:30'),
(134, 36, '500', '44.90', '2017-05-15 09:25:55', '2017-05-15 09:25:55'),
(135, 36, '1000', '64.90', '2017-05-15 09:26:24', '2017-05-15 09:26:24'),
(172, 43, '25', '15.00', '2017-05-15 13:54:27', '2017-08-28 14:48:09'),
(173, 43, '50', '23.00', '2017-05-15 13:54:41', '2017-08-28 14:49:06'),
(175, 43, '100', '28.00', '2017-05-15 13:55:10', '2017-08-28 14:47:37'),
(176, 43, '200', '49.00', '2017-05-15 13:55:22', '2017-08-28 14:48:26'),
(177, 43, '500', '95.00', '2017-05-15 13:56:09', '2017-08-28 14:49:44'),
(180, 44, '25', '24.00', '2017-05-15 14:03:15', '2017-08-28 14:51:08'),
(181, 44, '50', '30.00', '2017-05-15 14:03:27', '2017-08-28 14:51:45'),
(183, 44, '100', '44.00', '2017-05-15 14:03:56', '2017-08-28 14:50:49'),
(184, 44, '200', '79.00', '2017-05-15 14:04:10', '2017-08-28 14:51:22'),
(185, 44, '500', '180.00', '2017-05-15 14:04:25', '2017-08-28 14:51:35'),
(187, 45, '10', '34.90', '2017-05-15 14:05:38', '2017-05-15 14:05:38'),
(188, 45, '25', '64.90', '2017-05-15 14:06:33', '2017-05-15 14:06:33'),
(189, 45, '50', '94.90', '2017-05-15 14:07:25', '2017-05-15 14:07:25'),
(190, 45, '100', '167.90', '2017-05-15 14:07:40', '2017-05-15 14:07:40'),
(191, 46, '10', '46.90', '2017-05-15 14:08:38', '2017-05-15 14:08:38'),
(192, 46, '25', '78.90', '2017-05-15 14:08:58', '2017-05-15 14:08:58'),
(193, 46, '50', '109.90', '2017-05-15 14:09:24', '2017-05-15 14:09:24'),
(194, 46, '100', '206.90', '2017-05-15 14:09:39', '2017-05-15 14:09:39'),
(195, 47, '10', '49.90', '2017-05-15 14:11:15', '2017-05-15 14:11:15'),
(196, 47, '25', '74.90', '2017-05-15 14:12:49', '2017-05-15 14:12:49'),
(197, 47, '50', '101.90', '2017-05-15 14:13:05', '2017-05-15 14:13:05'),
(198, 47, '100', '197.90', '2017-05-15 14:13:16', '2017-05-15 14:13:16'),
(199, 48, '10', '50.90', '2017-05-15 14:14:24', '2017-05-15 14:14:24'),
(200, 48, '25', '79.90', '2017-05-15 14:14:39', '2017-05-15 14:14:39'),
(201, 48, '50', '125.90', '2017-05-15 14:14:49', '2017-05-15 14:14:49'),
(202, 48, '100', '234.90', '2017-05-15 14:15:03', '2017-05-15 14:15:03'),
(203, 49, '10', '25.90', '2017-05-15 14:22:58', '2017-05-15 14:22:58'),
(204, 49, '25', '49.90', '2017-05-15 14:25:33', '2017-05-15 14:25:33'),
(205, 49, '50', '69.90', '2017-05-15 14:25:52', '2017-05-15 14:25:52'),
(206, 49, '100', '131.90', '2017-05-15 14:26:14', '2017-05-15 14:26:14'),
(207, 49, '250', '230.90', '2017-05-15 14:27:06', '2017-05-15 14:29:21'),
(208, 49, '500', '304.90', '2017-05-15 14:27:26', '2017-05-15 14:29:29'),
(209, 49, '1000', '404.90', '2017-05-15 14:29:48', '2017-05-15 14:29:48'),
(210, 16, '1000', '333.90', '2017-05-15 14:30:19', '2017-05-15 14:30:19'),
(211, 50, '10', '21.90', '2017-05-15 14:31:11', '2017-05-15 14:31:11'),
(212, 50, '25', '41.90', '2017-05-15 14:31:38', '2017-05-15 14:31:38'),
(213, 50, '50', '60.90', '2017-05-15 14:31:56', '2017-05-15 14:31:56'),
(214, 50, '100', '94.90', '2017-05-15 14:32:15', '2017-05-15 14:32:15'),
(215, 50, '250', '193.90', '2017-05-15 14:32:30', '2017-05-15 14:32:30'),
(216, 50, '500', '239.90', '2017-05-15 14:32:41', '2017-05-15 14:32:41'),
(217, 50, '1000', '343.90', '2017-05-15 14:33:00', '2017-05-15 14:33:00'),
(218, 51, '10', '33.90', '2017-05-15 14:34:14', '2017-05-15 14:34:14'),
(219, 51, '25', '61.90', '2017-05-15 14:34:32', '2017-05-15 14:34:32'),
(220, 51, '50', '78.90', '2017-05-15 14:34:51', '2017-05-15 14:34:51'),
(221, 51, '100', '143.90', '2017-05-15 14:35:03', '2017-05-15 14:35:03'),
(222, 51, '250', '277.90', '2017-05-15 14:36:26', '2017-05-15 14:36:26'),
(223, 51, '500', '461.90', '2017-05-15 14:36:51', '2017-05-15 14:36:51'),
(224, 51, '1000', '564.90', '2017-05-15 14:37:06', '2017-05-15 14:37:06'),
(225, 52, '20', '37.90', '2017-05-15 14:47:43', '2017-09-05 06:58:58'),
(226, 52, '30', '52.90', '2017-05-15 14:47:57', '2017-09-05 06:59:36'),
(227, 52, '40', '69.90', '2017-05-15 14:49:54', '2017-09-05 06:59:57'),
(228, 52, '50', '84.90', '2017-05-15 14:50:10', '2017-09-05 07:00:17'),
(230, 53, '20', '54.90', '2017-05-15 14:53:45', '2017-09-05 07:00:38'),
(231, 53, '30', '67.90', '2017-05-15 14:53:55', '2017-05-15 14:53:55'),
(232, 53, '40', '90.90', '2017-05-15 14:54:14', '2017-09-05 07:01:26'),
(233, 53, '50', '109.90', '2017-05-15 14:54:26', '2017-09-05 07:01:52'),
(235, 54, '20', '64.90', '2017-05-15 14:55:18', '2017-09-05 07:02:15'),
(236, 54, '30', '94.90', '2017-05-15 14:55:34', '2017-09-05 07:02:35'),
(237, 54, '40', '119.90', '2017-05-15 14:55:47', '2017-05-15 14:55:47'),
(239, 54, '100', '264.90', '2017-05-15 14:56:25', '2017-09-05 06:58:34'),
(240, 55, '1', '13.50', '2017-05-15 14:58:52', '2017-05-15 14:58:52'),
(241, 55, '2', '20.50', '2017-05-15 14:59:02', '2017-05-15 14:59:02'),
(242, 55, '3', '29.90', '2017-05-15 14:59:13', '2017-05-15 14:59:13'),
(243, 55, '4', '36.90', '2017-05-15 14:59:23', '2017-05-15 14:59:23'),
(244, 55, '5', '44.90', '2017-05-15 14:59:32', '2017-05-15 14:59:32'),
(245, 55, '6', '53.85', '2017-05-15 14:59:50', '2017-05-15 14:59:50'),
(246, 55, '7', '59.95', '2017-05-15 15:00:05', '2017-05-15 15:00:05'),
(247, 55, '8', '66.10', '2017-05-15 15:00:20', '2017-05-15 15:00:20'),
(248, 55, '9', '72.20', '2017-05-15 15:00:31', '2017-05-15 15:00:31'),
(249, 55, '10', '79.95', '2017-05-15 15:00:41', '2017-05-15 15:00:41'),
(250, 55, '15', '102.50', '2017-05-15 15:00:56', '2017-05-15 15:00:56'),
(251, 55, '20', '137.10', '2017-05-15 15:01:07', '2017-05-15 15:01:07'),
(252, 55, '25', '149.95', '2017-05-15 15:01:24', '2017-05-15 15:01:24'),
(253, 55, '50', '295.90', '2017-05-15 15:01:47', '2017-05-15 15:01:47'),
(254, 55, '100', '590.10', '2017-05-15 15:01:59', '2017-05-15 15:01:59'),
(255, 55, '250', '1292.15', '2017-05-15 15:02:17', '2017-05-15 15:02:17'),
(281, 80, '25', '34.90', '2017-06-01 09:11:14', '2017-06-01 09:11:14'),
(282, 80, '50', '39.90', '2017-06-01 09:11:44', '2017-06-01 09:11:44'),
(283, 80, '100', '56.90', '2017-06-01 09:12:21', '2017-06-01 09:12:21'),
(284, 80, '250', '114.90', '2017-06-01 09:12:51', '2017-06-01 09:12:51'),
(285, 80, '1000', '211.90', '2017-06-01 09:13:32', '2017-06-01 09:13:32'),
(286, 80, '500', '169.90', '2017-06-01 09:14:08', '2017-06-01 09:14:08'),
(287, 81, '25', '29.90', '2017-06-01 09:15:08', '2017-06-01 09:15:08'),
(288, 81, '50', '34.90', '2017-06-01 09:15:48', '2017-06-01 09:15:48'),
(289, 81, '100', '47.90', '2017-06-01 09:16:22', '2017-06-01 09:16:22'),
(290, 81, '250', '67.90', '2017-06-01 09:16:57', '2017-06-01 09:16:57'),
(291, 81, '500', '107.90', '2017-06-01 09:17:46', '2017-06-01 09:17:46'),
(292, 81, '1000', '167.90', '2017-06-01 09:18:22', '2017-06-01 09:18:22'),
(293, 82, '25', '44.90', '2017-06-01 09:23:02', '2017-06-01 09:23:02'),
(294, 82, '50', '74.90', '2017-06-01 09:23:27', '2017-06-01 09:23:27'),
(295, 82, '100', '126.90', '2017-06-01 09:23:55', '2017-06-01 09:23:55'),
(296, 82, '250', '176.90', '2017-06-01 09:24:19', '2017-06-01 09:24:19'),
(297, 82, '500', '284.90', '2017-06-01 09:24:41', '2017-06-01 09:24:41'),
(298, 83, '100', '29.90', '2017-06-01 13:35:16', '2017-06-01 13:35:16'),
(299, 83, '250', '39.90', '2017-06-01 13:35:32', '2017-06-01 13:35:32'),
(300, 83, '500', '68.90', '2017-06-01 13:35:48', '2017-06-01 13:35:48'),
(301, 83, '1000', '120.90', '2017-06-01 13:36:03', '2017-06-01 13:36:03'),
(302, 84, '100', '36.90', '2017-06-01 13:36:30', '2017-06-01 13:36:30'),
(303, 84, '250', '46.90', '2017-06-01 13:36:46', '2017-06-01 13:36:46'),
(304, 84, '500', '80.90', '2017-06-01 13:37:00', '2017-06-01 13:37:00'),
(305, 84, '1000', '138.90', '2017-06-01 13:37:15', '2017-06-01 13:37:15'),
(306, 85, '100', '39.90', '2017-06-01 13:37:57', '2017-06-01 13:37:57'),
(307, 85, '250', '54.90', '2017-06-01 13:38:09', '2017-06-01 13:38:09'),
(308, 85, '500', '85.90', '2017-06-01 13:38:30', '2017-06-01 13:38:30'),
(309, 85, '1000', '154.90', '2017-06-01 13:39:18', '2017-06-01 13:39:18'),
(330, 91, '5', '67.00', '2017-06-01 14:06:56', '2017-06-01 14:06:56'),
(331, 91, '10', '110.00', '2017-06-01 14:07:57', '2017-06-01 14:07:57'),
(332, 91, '20', '160.00', '2017-06-01 14:08:14', '2017-06-01 14:08:14'),
(334, 91, '30', '200.00', '2017-06-01 14:09:06', '2017-06-01 14:09:06'),
(335, 91, '40', '240.00', '2017-06-01 14:09:25', '2017-06-01 14:09:25'),
(336, 92, '5', '98.00', '2017-06-01 14:10:21', '2017-06-01 14:10:21'),
(337, 92, '10', '145.00', '2017-06-01 14:10:33', '2017-06-01 14:10:33'),
(338, 92, '20', '265.00', '2017-06-01 14:10:47', '2017-06-01 14:10:47'),
(339, 92, '30', '307.00', '2017-06-01 14:11:01', '2017-06-01 14:11:01'),
(340, 92, '40', '359.00', '2017-06-01 14:11:19', '2017-06-01 14:11:19'),
(341, 93, '50', '29.00', '2017-06-01 14:23:49', '2017-06-01 14:23:49'),
(342, 93, '100', '40.00', '2017-06-01 14:24:06', '2017-06-01 14:24:06'),
(343, 93, '250', '46.00', '2017-06-01 14:24:27', '2017-06-01 14:24:27'),
(344, 93, '500', '74.00', '2017-06-01 14:24:50', '2017-06-01 14:24:50'),
(345, 93, '750', '85.00', '2017-06-01 14:25:06', '2017-06-01 14:25:06'),
(346, 93, '1000', '94.00', '2017-06-01 14:25:24', '2017-06-01 14:25:24'),
(347, 93, '2500', '142.00', '2017-06-01 14:25:41', '2017-06-01 14:25:41'),
(348, 93, '5000', '239.00', '2017-06-01 14:25:59', '2017-06-01 14:25:59'),
(349, 94, '50', '32.00', '2017-06-01 14:26:27', '2017-06-01 14:26:27'),
(350, 94, '100', '43.00', '2017-06-01 14:26:50', '2017-06-01 14:27:43'),
(351, 94, '250', '50.00', '2017-06-01 14:28:37', '2017-06-01 14:28:37'),
(352, 94, '500', '86.00', '2017-06-01 14:29:44', '2017-06-01 14:31:25'),
(353, 94, '750', '95.00', '2017-06-01 14:30:08', '2017-06-01 14:32:33'),
(354, 94, '1000', '144.00', '2017-06-01 14:32:55', '2017-06-01 14:32:55'),
(355, 94, '2500', '183.00', '2017-06-01 14:33:17', '2017-06-01 14:33:17'),
(356, 94, '5000', '378.00', '2017-06-01 14:33:41', '2017-06-01 14:33:41'),
(357, 95, '50', '36.00', '2017-06-01 14:34:40', '2017-06-01 14:34:40'),
(358, 95, '100', '48.00', '2017-06-01 14:35:23', '2017-06-01 14:35:46'),
(359, 95, '250', '73.00', '2017-06-01 14:36:06', '2017-06-01 14:36:06'),
(360, 95, '500', '117.00', '2017-06-01 14:36:34', '2017-06-01 14:36:34'),
(361, 95, '750', '153.00', '2017-06-01 14:36:54', '2017-06-01 14:36:54'),
(362, 95, '1000', '181.00', '2017-06-01 14:37:27', '2017-06-01 14:37:27'),
(363, 95, '2500', '374.00', '2017-06-01 14:38:11', '2017-06-01 14:38:11'),
(364, 95, '5000', '711.00', '2017-06-01 14:38:38', '2017-06-01 14:38:38'),
(365, 96, '50', '39.00', '2017-06-01 14:41:15', '2017-06-01 14:41:15'),
(366, 96, '100', '52.00', '2017-06-01 14:41:45', '2017-06-01 14:41:45'),
(367, 96, '250', '81.00', '2017-06-01 14:42:18', '2017-06-01 14:42:18'),
(368, 96, '500', '125.00', '2017-06-01 14:43:24', '2017-06-01 14:43:24'),
(369, 96, '750', '166.00', '2017-06-01 14:43:46', '2017-06-01 14:43:46'),
(370, 96, '1000', '194.00', '2017-06-01 14:44:08', '2017-06-01 14:44:08'),
(371, 96, '2500', '386.00', '2017-06-01 14:44:29', '2017-06-01 14:44:29'),
(372, 96, '5000', '736.00', '2017-06-01 14:45:15', '2017-06-01 14:45:15'),
(373, 97, '50', '46.00', '2017-06-01 14:45:58', '2017-06-01 14:45:58'),
(374, 97, '100', '90.00', '2017-06-01 14:46:19', '2017-06-01 14:46:19'),
(375, 97, '250', '146.00', '2017-06-01 14:46:36', '2017-06-01 14:46:36'),
(376, 97, '500', '222.00', '2017-06-01 14:47:09', '2017-06-01 14:47:09'),
(377, 97, '750', '246.00', '2017-06-01 14:47:29', '2017-06-01 14:47:29'),
(378, 97, '1000', '426.00', '2017-06-01 14:48:04', '2017-06-01 14:48:04'),
(379, 97, '2500', '921.00', '2017-06-01 14:48:29', '2017-06-01 14:48:29'),
(380, 97, '5000', '1755.00', '2017-06-01 14:49:11', '2017-06-01 14:49:11'),
(381, 98, '100', '18.90', '2017-06-02 06:20:12', '2017-06-02 06:20:12'),
(382, 98, '250', '27.90', '2017-06-02 06:20:30', '2017-06-02 06:20:30'),
(383, 98, '500', '33.90', '2017-06-02 06:21:00', '2017-06-02 06:21:00'),
(384, 98, '1000', '44.90', '2017-06-02 06:21:28', '2017-06-02 06:21:28'),
(385, 98, '2500', '64.90', '2017-06-02 06:21:47', '2017-06-02 06:21:47'),
(386, 99, '100', '20.90', '2017-06-02 06:22:45', '2017-06-02 06:22:45'),
(387, 99, '250', '29.90', '2017-06-02 06:23:01', '2017-06-02 06:23:01'),
(388, 99, '500', '34.90', '2017-06-02 06:23:16', '2017-06-02 06:23:16'),
(389, 99, '1000', '49.90', '2017-06-02 06:24:15', '2017-06-02 06:24:15'),
(390, 99, '2500', '65.90', '2017-06-02 06:24:34', '2017-06-02 06:24:34'),
(391, 100, '100', '20.90', '2017-06-02 06:25:28', '2017-06-02 06:25:28'),
(392, 100, '250', '26.90', '2017-06-02 06:26:06', '2017-06-02 06:26:06'),
(393, 100, '500', '32.90', '2017-06-02 06:26:22', '2017-06-02 06:26:22'),
(394, 100, '1000', '45.90', '2017-06-02 06:26:49', '2017-06-02 06:26:49'),
(395, 100, '2500', '63.90', '2017-06-02 06:27:14', '2017-06-02 06:27:14'),
(396, 101, '100', '23.90', '2017-06-02 06:28:31', '2017-06-02 06:28:31'),
(397, 101, '250', '28.90', '2017-06-02 06:28:44', '2017-06-02 06:28:44'),
(398, 101, '500', '34.90', '2017-06-02 06:29:01', '2017-06-02 06:29:01'),
(399, 101, '1000', '54.90', '2017-06-02 06:29:18', '2017-06-02 06:29:18'),
(400, 101, '2500', '99.90', '2017-06-02 06:29:33', '2017-06-02 06:29:33'),
(401, 102, '100', '24.90', '2017-06-02 06:32:00', '2017-06-02 06:32:00'),
(402, 102, '250', '33.90', '2017-06-02 06:33:20', '2017-06-02 06:33:20'),
(403, 102, '500', '38.90', '2017-06-02 06:33:38', '2017-06-02 06:33:38'),
(404, 102, '1000', '55.90', '2017-06-02 06:34:09', '2017-06-02 06:34:09'),
(405, 102, '2500', '71.90', '2017-06-02 06:35:06', '2017-06-02 06:35:06'),
(411, 104, '100', '29.90', '2017-06-02 07:05:13', '2017-06-02 07:05:13'),
(412, 104, '250', '41.90', '2017-06-02 07:06:15', '2017-06-02 07:06:15'),
(413, 104, '500', '46.90', '2017-06-02 07:06:45', '2017-06-02 07:06:45'),
(414, 104, '1000', '61.90', '2017-06-02 07:07:10', '2017-06-02 07:07:10'),
(415, 104, '2500', '81.90', '2017-06-02 07:07:46', '2017-06-02 07:07:46'),
(416, 105, '100', '24.90', '2017-06-02 07:09:08', '2017-06-02 07:09:08'),
(417, 105, '250', '36.90', '2017-06-02 07:09:44', '2017-06-02 07:09:44'),
(418, 105, '500', '43.90', '2017-06-02 07:10:20', '2017-06-02 07:10:20'),
(419, 105, '1000', '61.90', '2017-06-02 07:10:58', '2017-06-02 07:10:58'),
(420, 105, '2500', '93.90', '2017-06-02 07:11:34', '2017-06-02 07:11:34'),
(421, 106, '100', '28.90', '2017-06-02 07:13:09', '2017-06-02 07:13:09'),
(422, 106, '250', '39.90', '2017-06-02 07:13:30', '2017-06-02 07:13:30'),
(423, 106, '500', '46.90', '2017-06-02 07:14:04', '2017-06-02 07:14:04'),
(424, 106, '1000', '69.90', '2017-06-02 07:14:35', '2017-06-02 07:14:35'),
(425, 106, '2500', '126.90', '2017-06-02 07:15:15', '2017-06-02 07:15:15'),
(426, 107, '100', '21.90', '2017-06-02 13:41:44', '2017-06-02 13:41:44'),
(427, 107, '250', '29.90', '2017-06-02 13:41:59', '2017-06-02 13:41:59'),
(428, 107, '500', '49.90', '2017-06-02 13:42:22', '2017-06-02 13:42:22'),
(429, 107, '1000', '70.90', '2017-06-02 13:42:48', '2017-06-02 13:42:48'),
(430, 108, '100', '30.90', '2017-06-02 13:43:28', '2017-06-02 13:43:28'),
(431, 108, '250', '48.90', '2017-06-02 13:43:43', '2017-06-02 13:43:43'),
(432, 108, '500', '69.90', '2017-06-02 13:43:55', '2017-06-02 13:43:55'),
(433, 108, '1000', '79.90', '2017-06-02 13:44:09', '2017-06-02 13:44:09'),
(434, 109, '100', '35.90', '2017-06-02 13:44:46', '2017-06-02 13:44:46'),
(435, 109, '250', '52.90', '2017-06-02 13:45:19', '2017-06-02 13:45:19'),
(436, 109, '500', '74.90', '2017-06-02 13:45:34', '2017-06-02 13:45:34'),
(437, 109, '1000', '80.90', '2017-06-02 13:45:53', '2017-06-02 13:45:53'),
(438, 110, '100', '38.90', '2017-06-02 13:46:41', '2017-06-02 13:46:41'),
(439, 110, '250', '58.90', '2017-06-02 13:46:55', '2017-06-02 13:46:55'),
(440, 110, '500', '79.90', '2017-06-02 13:47:09', '2017-06-02 13:47:09'),
(441, 110, '1000', '85.90', '2017-06-02 13:47:23', '2017-06-02 13:47:23'),
(446, 112, '50 cm', '18.00', '2017-08-24 06:40:45', '2017-08-24 06:40:45'),
(447, 112, '100 cm', '22.00', '2017-08-24 06:41:10', '2017-08-24 06:41:25'),
(450, 1, '1000', '44.90', '2017-08-24 06:45:53', '2017-08-24 06:45:53'),
(452, 112, '200 cm', '42.00', '2017-08-24 07:08:15', '2017-08-24 07:15:39'),
(453, 112, '300 cm', '56.00', '2017-08-24 07:08:34', '2017-08-24 07:16:24'),
(454, 112, '400 cm', '72.00', '2017-08-24 07:09:00', '2017-08-24 07:16:44'),
(455, 114, '50 cm', '18.00', '2017-08-24 07:11:55', '2017-08-24 07:19:48'),
(456, 114, '100 cm', '29.00', '2017-08-24 07:12:22', '2017-08-24 07:20:01'),
(457, 114, '200 cm', '51.00', '2017-08-24 07:12:41', '2017-08-24 07:20:15'),
(458, 114, '300 cm', '70.00', '2017-08-24 07:13:06', '2017-08-24 07:20:41'),
(459, 114, '400 cm', '90.00', '2017-08-24 07:13:26', '2017-08-24 07:21:11'),
(460, 115, '50 cm', '32.00', '2017-08-24 07:22:22', '2017-08-24 07:22:22'),
(461, 115, '100 cm', '42.00', '2017-08-24 07:22:45', '2017-08-24 07:22:45'),
(462, 115, '200 cm', '65.00', '2017-08-24 07:23:00', '2017-08-24 07:23:00'),
(463, 115, '300 cm', '90.00', '2017-08-24 07:23:19', '2017-08-24 07:23:19'),
(464, 115, '400 cm', '114.00', '2017-08-24 07:23:33', '2017-08-24 07:23:33'),
(465, 112, '500 cm', '85.00', '2017-08-24 07:26:23', '2017-08-24 07:26:23'),
(466, 112, '600 cm', '102.00', '2017-08-24 07:26:52', '2017-08-24 07:30:56'),
(467, 112, '700 cm', '115.00', '2017-08-24 07:27:10', '2017-08-24 07:31:06'),
(468, 112, '800 cm', '129.00', '2017-08-24 07:29:19', '2017-08-24 07:29:19'),
(469, 112, '900 cm', '144.00', '2017-08-24 07:29:54', '2017-08-24 07:31:15'),
(470, 112, '1000 cm', '157.00', '2017-08-24 07:30:10', '2017-08-24 14:07:28'),
(471, 114, '500 cm', '109.00', '2017-08-24 07:30:41', '2017-08-24 07:30:41'),
(472, 114, '600 cm', '142.00', '2017-08-24 07:32:39', '2017-08-24 07:32:39'),
(473, 114, '700 cm', '147.00', '2017-08-24 07:33:06', '2017-08-24 07:33:06'),
(474, 114, '800 cm', '165.00', '2017-08-24 07:33:26', '2017-08-24 07:33:26'),
(475, 114, '900 cm', '179.00', '2017-08-24 07:33:52', '2017-08-24 07:33:52'),
(476, 114, '1000 cm', '192.00', '2017-08-24 07:34:16', '2017-08-24 07:34:16'),
(477, 117, '1', '59.90', '2017-08-24 13:33:10', '2017-08-24 13:33:10'),
(478, 117, '2', '119.90', '2017-08-24 13:33:23', '2017-08-24 13:33:23'),
(479, 117, '3', '184.90', '2017-08-24 13:33:59', '2017-08-24 13:33:59'),
(480, 117, '4', '244.90', '2017-08-24 13:34:25', '2017-08-24 13:34:25'),
(481, 117, '5', '309.90', '2017-08-24 13:34:50', '2017-08-24 13:34:50'),
(482, 117, '10', '588.90', '2017-08-24 13:35:15', '2017-08-24 13:35:15'),
(483, 118, '1', '69.90', '2017-08-24 13:35:40', '2017-08-24 13:35:40'),
(484, 118, '2', '137.90', '2017-08-24 13:35:53', '2017-08-24 13:35:53'),
(485, 118, '3', '211.90', '2017-08-24 13:36:08', '2017-08-24 13:36:08'),
(486, 118, '4', '280.90', '2017-08-24 13:36:33', '2017-08-24 13:36:33'),
(487, 118, '5', '355.90', '2017-08-24 13:37:39', '2017-08-24 13:37:39'),
(488, 118, '10', '679.90', '2017-08-24 13:38:46', '2017-08-24 13:38:46'),
(489, 119, '1', '129.90', '2017-08-24 13:39:21', '2017-08-24 13:39:21'),
(490, 119, '2', '258.90', '2017-08-24 13:39:33', '2017-08-24 13:39:33'),
(491, 119, '3', '388.90', '2017-08-24 13:39:59', '2017-08-24 13:39:59'),
(492, 119, '4', '517.90', '2017-08-24 13:40:22', '2017-08-24 13:40:22'),
(493, 119, '5', '649.90', '2017-08-24 13:40:42', '2017-08-24 13:40:42'),
(494, 119, '10', '1280.00', '2017-08-24 13:41:05', '2017-08-24 13:41:05'),
(495, 120, '50 cm', '18.00', '2017-08-24 13:43:56', '2017-08-24 13:43:56'),
(496, 120, ' 100 cm', '23.00', '2017-08-24 13:44:27', '2017-08-24 13:45:02'),
(497, 120, '200 cm', '29.00', '2017-08-24 13:44:55', '2017-08-24 13:44:55'),
(498, 120, '300 cm', '45.00', '2017-08-24 13:45:22', '2017-08-24 13:45:22'),
(499, 120, '400 cm', '54.00', '2017-08-24 13:45:58', '2017-08-24 13:45:58'),
(500, 121, '50 cm', '23.00', '2017-08-24 13:47:06', '2017-08-24 13:47:06'),
(501, 121, '100 cm', '29.00', '2017-08-24 13:47:21', '2017-08-24 13:47:21'),
(502, 121, '200 cm', '54.00', '2017-08-24 13:47:39', '2017-08-24 13:47:39'),
(503, 121, '300 cm', '72.00', '2017-08-24 13:48:05', '2017-08-24 13:48:35'),
(504, 121, '400 cm', '89.00', '2017-08-24 13:48:26', '2017-08-24 13:48:26'),
(505, 122, '50 cm', '26.00', '2017-08-24 13:49:35', '2017-08-24 13:49:35'),
(506, 122, '100 cm', '44.00', '2017-08-24 13:49:50', '2017-08-24 13:51:03'),
(507, 122, '200 cm', '75.00', '2017-08-24 13:50:10', '2017-08-24 13:50:10'),
(508, 122, '300 cm', '129.00', '2017-08-24 13:50:34', '2017-08-24 13:50:34'),
(509, 122, '400 cm', '159.00', '2017-08-24 13:50:55', '2017-08-24 13:50:55'),
(510, 120, '500 cm', '63.00', '2017-08-24 13:59:31', '2017-08-24 13:59:31'),
(511, 120, '600 cm', '72.00', '2017-08-24 13:59:49', '2017-08-24 13:59:49'),
(512, 120, '700 cm', '81.00', '2017-08-24 14:00:11', '2017-08-24 14:00:11'),
(513, 120, '800 cm', '89.00', '2017-08-24 14:00:31', '2017-08-24 14:00:31'),
(514, 120, '900 cm', '94.00', '2017-08-24 14:06:38', '2017-08-24 14:06:38'),
(515, 120, '1000 cm', '99.00', '2017-08-24 14:06:55', '2017-08-24 14:06:55'),
(516, 121, '500 cm', '102.00', '2017-08-24 14:08:16', '2017-08-24 14:08:16'),
(517, 121, '600 cm', '116.00', '2017-08-24 14:08:30', '2017-08-24 14:08:30'),
(518, 121, '700 cm', '134.00', '2017-08-24 14:08:45', '2017-08-24 14:08:45'),
(519, 121, '800 cm', '148.00', '2017-08-24 14:09:18', '2017-08-24 14:09:18'),
(520, 121, '900 cm', '161.00', '2017-08-24 14:09:52', '2017-08-24 14:09:52'),
(521, 121, '1000 cm', '174.00', '2017-08-24 14:10:37', '2017-08-24 14:10:37'),
(522, 122, '500 cm', '179.00', '2017-08-24 14:10:58', '2017-08-24 14:10:58'),
(523, 122, '600 cm', '219.00', '2017-08-24 14:11:10', '2017-08-24 14:11:10'),
(524, 122, '700 cm', '251.00', '2017-08-24 14:11:24', '2017-08-24 14:11:24'),
(525, 122, '800 cm', '267.00', '2017-08-24 14:11:45', '2017-08-24 14:11:45'),
(526, 122, '900 cm', '286.00', '2017-08-24 14:14:28', '2017-08-24 14:14:28'),
(527, 122, '1000 cm', '312.00', '2017-08-24 14:14:42', '2017-08-24 14:16:36'),
(528, 123, '50 cm', '14.00', '2017-08-24 14:20:38', '2017-08-24 14:20:38'),
(529, 123, '100 cm', '17.00', '2017-08-24 14:20:53', '2017-08-24 14:20:53'),
(530, 123, '200 cm', '30.00', '2017-08-24 14:21:05', '2017-08-24 14:21:05'),
(531, 123, '300 cm', '37.00', '2017-08-24 14:21:23', '2017-08-24 14:21:23'),
(532, 123, '400 cm', '47.00', '2017-08-24 14:21:35', '2017-08-24 14:21:35'),
(533, 123, '500 cm', '54.00', '2017-08-24 14:21:50', '2017-08-24 14:21:50'),
(534, 123, '600 cm', '63.00', '2017-08-24 14:22:08', '2017-08-24 14:22:08'),
(535, 124, '20 x 20 cm', '28.00', '2017-08-24 14:22:16', '2017-08-24 14:22:16'),
(536, 123, '700 cm', '71.00', '2017-08-24 14:22:24', '2017-08-24 14:22:24'),
(538, 123, '800 cm', '78.00', '2017-08-24 14:22:43', '2017-08-24 14:22:43'),
(539, 123, '900 cm', '86.00', '2017-08-24 14:23:05', '2017-08-24 14:23:05'),
(540, 123, '1000 cm', '94.00', '2017-08-24 14:23:22', '2017-08-24 14:23:22'),
(541, 126, '50 cm', '15.00', '2017-08-24 14:24:37', '2017-08-24 14:25:22'),
(542, 126, '100 cm', '22.00', '2017-08-24 14:25:43', '2017-08-24 14:25:43'),
(543, 126, '200 cm', '38.00', '2017-08-24 14:26:06', '2017-08-24 14:26:06'),
(544, 126, '300 cm', '51.00', '2017-08-24 14:26:29', '2017-08-24 14:26:29'),
(545, 126, '400 cm', '65.00', '2017-08-24 14:26:50', '2017-08-24 14:26:50'),
(546, 126, '500 cm', '78.00', '2017-08-24 14:27:30', '2017-08-24 14:27:30'),
(547, 126, '600 cm', '91.00', '2017-08-24 14:27:58', '2017-08-24 14:27:58'),
(548, 126, '700 cm', '104.00', '2017-08-24 14:28:20', '2017-08-24 14:28:20'),
(549, 126, '800 cm', '115.00', '2017-08-24 14:28:43', '2017-08-24 14:28:43'),
(550, 126, '900 cm', '124.00', '2017-08-24 14:29:01', '2017-08-24 14:29:01'),
(551, 126, '1000 cm', '135.00', '2017-08-24 14:29:15', '2017-08-24 14:29:15'),
(552, 124, '30 x 30 cm', '32.90', '2017-08-24 14:30:51', '2017-08-24 14:30:51'),
(553, 127, '50 cm', '31.00', '2017-08-24 14:31:04', '2017-08-24 14:31:04'),
(554, 124, '40 x 40 cm', '40.90', '2017-08-24 14:31:20', '2017-08-24 14:31:20'),
(555, 127, '100 cm', '36.00', '2017-08-24 14:31:21', '2017-08-24 14:31:21'),
(556, 124, '50 x 50 cm', '45.50', '2017-08-24 14:31:43', '2017-08-24 14:31:43'),
(557, 127, '200 cm', '49.00', '2017-08-24 14:31:52', '2017-08-24 14:31:52'),
(558, 124, '60 x 60 cm', '50.50', '2017-08-24 14:32:04', '2017-08-24 14:32:04'),
(559, 127, '300 cm', '66.00', '2017-08-24 14:32:09', '2017-08-24 14:32:09'),
(560, 124, '70 x 70 cm', '58.90', '2017-08-24 14:32:29', '2017-08-24 14:32:29'),
(561, 127, '400 cm', '81.00', '2017-08-24 14:32:30', '2017-08-24 14:32:30'),
(562, 124, '80 x 80 cm', '60.90', '2017-08-24 14:32:46', '2017-08-24 14:32:46'),
(563, 127, '500 cm', '94.00', '2017-08-24 14:32:53', '2017-08-24 14:32:53'),
(564, 124, '90 x 90 cm', '66.90', '2017-08-24 14:33:06', '2017-08-24 14:33:06'),
(565, 127, '600 cm', '112.00', '2017-08-24 14:33:13', '2017-08-24 14:33:13'),
(566, 124, '100 x 100 cm', '71.50', '2017-08-24 14:33:21', '2017-08-24 14:33:21'),
(567, 127, '700 cm', '127.00', '2017-08-24 14:33:42', '2017-08-24 14:33:42'),
(569, 127, '800 cm', '141.00', '2017-08-24 14:33:58', '2017-08-24 14:33:58'),
(570, 127, '900 cm', '154.00', '2017-08-24 14:34:15', '2017-08-24 14:34:15'),
(571, 124, '110 x 110 cm', '75.90', '2017-08-24 14:34:16', '2017-08-24 14:34:16'),
(573, 124, '120 x 120 cm', '85.90', '2017-08-24 14:34:53', '2017-08-24 14:34:53'),
(574, 124, '130 x 130 cm', '99.99', '2017-08-24 14:35:17', '2017-08-24 14:35:17'),
(575, 127, '1000 cm', '170.00', '2017-08-25 06:27:07', '2017-08-25 06:27:07'),
(576, 128, '1', '13.90', '2017-08-25 08:22:46', '2017-08-25 08:22:46'),
(577, 128, '10', '84.95', '2017-08-25 08:23:13', '2017-08-25 08:23:13'),
(578, 128, '100', '509.10', '2017-08-25 08:23:43', '2017-08-25 08:23:43'),
(579, 128, '15', '115.50', '2017-08-25 08:24:07', '2017-08-25 08:24:07'),
(580, 128, '2', '21.90', '2017-08-25 08:24:26', '2017-08-25 08:24:26'),
(581, 128, '20', '147.10', '2017-08-25 08:25:00', '2017-08-25 08:25:00'),
(582, 128, '25', '174.95', '2017-08-25 08:25:33', '2017-08-25 08:25:33'),
(583, 128, '250', '1047.15', '2017-08-25 08:26:00', '2017-08-25 08:26:00'),
(584, 128, '3', '31.90', '2017-08-25 08:26:57', '2017-08-25 08:26:57'),
(585, 128, '4', '39.90', '2017-08-25 08:27:18', '2017-08-25 08:27:18'),
(586, 128, '5', '47.90', '2017-08-25 08:27:59', '2017-08-25 08:27:59'),
(587, 128, '50', '327.90', '2017-08-25 08:28:23', '2017-08-25 08:28:23'),
(588, 128, '6', '57.85', '2017-08-25 08:28:48', '2017-08-25 08:28:48'),
(589, 128, '7', '64.95', '2017-08-25 08:29:25', '2017-08-25 08:29:25'),
(590, 128, '8', '72.10', '2017-08-25 08:29:52', '2017-08-25 08:29:52'),
(591, 128, '9', '76.20', '2017-08-25 08:30:14', '2017-08-25 08:30:14'),
(592, 129, '1', '13.90', '2017-08-25 08:32:22', '2017-08-25 08:32:22'),
(593, 129, '10', '84.95', '2017-08-25 08:32:41', '2017-08-25 08:32:41'),
(594, 129, '100', '509.10', '2017-08-25 08:32:57', '2017-08-25 08:32:57'),
(595, 129, '15', '115.50', '2017-08-25 08:33:13', '2017-08-25 08:33:13'),
(596, 129, '2', '21.90', '2017-08-25 08:33:30', '2017-08-25 08:33:30'),
(597, 129, '20', '147.10', '2017-08-25 08:33:45', '2017-08-25 08:33:45'),
(598, 129, '25', '174.15', '2017-08-25 08:34:02', '2017-08-25 08:34:02'),
(599, 129, '250', '1047.15', '2017-08-25 08:34:24', '2017-08-25 08:34:24'),
(600, 129, '3', '31.90', '2017-08-25 08:34:38', '2017-08-25 08:34:38'),
(601, 129, '4', '39.90', '2017-08-25 08:34:54', '2017-08-25 08:34:54'),
(602, 129, '5', '47.90', '2017-08-25 08:39:55', '2017-08-25 08:39:55'),
(603, 129, '50', '327.90', '2017-08-25 08:40:17', '2017-08-25 08:40:17'),
(604, 129, '6', '57.85', '2017-08-25 08:40:42', '2017-08-25 08:40:42'),
(605, 129, '7', '64.95', '2017-08-25 08:40:56', '2017-08-25 08:40:56'),
(606, 129, '8', '72.10', '2017-08-25 08:41:11', '2017-08-25 08:41:11'),
(607, 129, '9', '76.20', '2017-08-25 08:41:26', '2017-08-25 08:41:26'),
(608, 130, '1', '13.90', '2017-08-25 08:44:17', '2017-08-25 08:44:17'),
(609, 130, '10', '84.95', '2017-08-25 08:44:36', '2017-08-25 08:44:36'),
(610, 130, '100', '509.10', '2017-08-25 08:44:52', '2017-08-25 08:44:52'),
(611, 130, '15', '115.50', '2017-08-25 08:45:08', '2017-08-25 08:45:08'),
(612, 130, '2', '21.90', '2017-08-25 08:45:22', '2017-08-25 08:45:22'),
(613, 130, '20', '147.10', '2017-08-25 08:45:48', '2017-08-25 08:45:48'),
(614, 130, '25', '174.95', '2017-08-25 08:46:22', '2017-08-25 08:46:22'),
(615, 130, '250', '1047.15', '2017-08-25 08:46:46', '2017-08-25 08:46:46'),
(616, 130, '3', '31.90', '2017-08-25 08:47:05', '2017-08-25 08:47:05'),
(617, 130, '4', '39.90', '2017-08-25 08:47:16', '2017-08-25 08:47:16'),
(618, 130, '5', '47.90', '2017-08-25 08:47:29', '2017-08-25 08:47:29'),
(619, 130, '6', '57.85', '2017-08-25 08:47:44', '2017-08-25 08:47:44'),
(620, 130, '50', '327.90', '2017-08-25 08:47:57', '2017-08-25 08:47:57'),
(621, 130, '7', '64.95', '2017-08-25 08:48:10', '2017-08-25 08:48:10'),
(622, 130, '8', '72.10', '2017-08-25 08:48:25', '2017-08-25 08:48:25'),
(623, 130, '9', '76.20', '2017-08-25 08:48:40', '2017-08-25 08:48:40'),
(624, 131, '1', '16.00', '2017-08-25 08:49:54', '2017-08-25 08:49:54'),
(625, 131, '2', '30.00', '2017-08-25 08:50:07', '2017-08-25 08:50:07'),
(626, 131, '3', '43.00', '2017-08-25 08:50:19', '2017-08-25 08:50:19'),
(627, 131, '5', '60.00', '2017-08-25 08:50:30', '2017-08-25 08:50:30'),
(628, 131, '10', '105.00', '2017-08-25 08:50:42', '2017-08-25 08:50:42'),
(629, 131, '4', '50.00', '2017-08-25 08:56:51', '2017-08-25 08:56:51'),
(630, 132, '15 x 21 cm', '24.00', '2017-08-25 13:29:17', '2017-08-25 13:29:17'),
(631, 132, '15 x 30 cm', '29.00', '2017-08-25 13:29:32', '2017-08-25 13:29:32'),
(632, 132, '21 x 30 cm', '33.00', '2017-08-25 13:29:45', '2017-08-25 13:32:01'),
(633, 132, '30 x 42 cm', '50.00', '2017-08-25 13:30:46', '2017-08-25 13:30:46'),
(634, 132, '42 x 60 cm', '70.00', '2017-08-25 13:31:06', '2017-08-25 13:31:06'),
(635, 132, '50 x 100 cm', '86.00', '2017-08-25 13:31:31', '2017-08-25 13:31:31'),
(636, 132, '70 x 100 cm', '100.00', '2017-08-25 13:31:53', '2017-08-25 13:31:53'),
(637, 133, '15 x 21 cm', '28.00', '2017-08-25 13:32:47', '2017-08-25 13:32:47'),
(638, 133, '15 x 30 cm', '35.00', '2017-08-25 13:33:07', '2017-08-25 13:33:07'),
(639, 133, '21 x 30 cm', '39.00', '2017-08-25 13:33:23', '2017-08-25 13:33:23'),
(640, 133, '30 x 42 cm', '60.00', '2017-08-25 13:33:51', '2017-08-25 13:33:51'),
(641, 133, '42 x 60 cm', '84.00', '2017-08-25 13:34:11', '2017-08-25 13:34:11'),
(642, 133, '50 x 100 cm', '118.00', '2017-08-25 13:34:37', '2017-08-25 13:34:37'),
(643, 133, '70 x 100 cm', '138.00', '2017-08-25 13:35:01', '2017-08-25 13:35:01'),
(644, 134, '50', '16.00', '2017-08-25 13:36:32', '2017-08-25 13:36:32'),
(645, 134, '100', '21.00', '2017-08-25 13:36:43', '2017-08-25 13:36:43'),
(646, 134, '250', '28.00', '2017-08-25 13:36:59', '2017-08-25 13:36:59'),
(647, 134, '500', '39.00', '2017-08-25 13:37:11', '2017-08-25 13:37:11'),
(648, 134, '750', '58.00', '2017-08-25 13:37:23', '2017-08-25 13:37:23'),
(649, 134, '1000', '71.00', '2017-08-25 13:37:39', '2017-08-25 13:37:39'),
(650, 135, '50', '20.00', '2017-08-25 13:38:23', '2017-08-25 13:38:23'),
(651, 135, '100', '27.00', '2017-08-25 13:38:36', '2017-08-25 13:38:36'),
(652, 135, '250', '35.00', '2017-08-25 13:38:49', '2017-08-25 13:38:49'),
(653, 135, '500', '59.00', '2017-08-25 13:39:03', '2017-08-25 13:39:03'),
(654, 135, '750', '79.00', '2017-08-25 13:39:17', '2017-08-25 13:39:17'),
(655, 135, '1000', '97.00', '2017-08-25 13:39:30', '2017-08-25 13:39:30'),
(656, 136, '50', '26.00', '2017-08-25 13:40:30', '2017-08-25 13:40:30'),
(657, 136, '100', '33.00', '2017-08-25 13:40:41', '2017-08-25 13:40:41'),
(658, 136, '250', '48.00', '2017-08-25 13:40:54', '2017-08-25 13:40:54'),
(659, 136, '500', '76.00', '2017-08-25 13:41:11', '2017-08-25 13:41:11'),
(660, 136, '750', '97.00', '2017-08-25 13:41:28', '2017-08-25 13:41:28'),
(661, 136, '1000', '116.00', '2017-08-25 13:41:45', '2017-08-25 13:41:45'),
(662, 137, '50', '29.00', '2017-08-25 13:43:13', '2017-08-25 13:43:13'),
(663, 137, '100', '38.00', '2017-08-25 13:43:26', '2017-08-25 13:43:26'),
(664, 137, '250', '59.00', '2017-08-25 13:43:40', '2017-08-25 13:43:40'),
(665, 137, '500', '96.00', '2017-08-25 13:43:55', '2017-08-25 13:43:55'),
(666, 137, '750', '129.00', '2017-08-25 13:44:12', '2017-08-25 13:44:12'),
(667, 137, '1000', '147.00', '2017-08-25 13:44:25', '2017-08-25 13:44:25'),
(668, 138, '20 x 30 cm', '32.90', '2017-08-25 13:50:13', '2017-08-25 13:50:13'),
(669, 138, '30 x 40 cm', '38.90', '2017-08-25 13:50:40', '2017-08-25 13:50:40'),
(670, 138, '30 x 80 cm', '44.90', '2017-08-25 13:51:04', '2017-08-25 13:51:04'),
(671, 138, '40 x 60 cm', '43.90', '2017-08-25 13:51:42', '2017-08-25 13:51:42'),
(672, 138, '40 x 100 cm', '49.90', '2017-08-25 13:52:23', '2017-08-25 13:52:23'),
(673, 138, '50 x 70 cm', '50.90', '2017-08-25 13:52:44', '2017-08-25 13:52:44'),
(674, 138, '50 x 100 cm', '51.90', '2017-08-25 13:53:02', '2017-08-25 13:53:02'),
(675, 138, '50 x 130 cm', '59.90', '2017-08-25 13:53:25', '2017-08-25 13:53:25'),
(676, 138, '60 x 100 cm', '58.90', '2017-08-25 13:53:52', '2017-08-25 13:53:52'),
(677, 138, '70 x 100 cm', '64.90', '2017-08-25 13:54:18', '2017-08-25 13:54:18'),
(678, 138, '70 x 180 cm', '154.90', '2017-08-25 13:54:36', '2017-08-25 13:54:36'),
(679, 138, '100 x 140 cm', '104.90', '2017-08-25 13:54:55', '2017-08-25 13:54:55'),
(680, 139, '1 caja (500 uds)', '65.00', '2017-08-25 13:59:02', '2017-08-25 13:59:02'),
(681, 139, '3 cajas (1500 uds)', '140.00', '2017-08-25 13:59:37', '2017-08-25 14:02:12'),
(682, 139, '5 cajas (2500 uds)', '189.00', '2017-08-25 14:00:03', '2017-08-25 14:02:21'),
(683, 140, '1 caja ( 500 uds)', '68.00', '2017-08-25 14:00:42', '2017-08-25 14:02:04'),
(684, 140, '3 cajas (1500 uds)', '148.00', '2017-08-25 14:01:08', '2017-08-25 14:01:08'),
(685, 140, '5 cajas (2500 uds)', '199.00', '2017-08-25 14:01:43', '2017-08-25 14:01:43'),
(686, 141, '1000', '58.00', '2017-08-28 14:30:34', '2017-08-28 14:30:34'),
(687, 141, '2500', '95.00', '2017-08-28 14:31:25', '2017-08-28 14:31:25'),
(688, 141, '5000', '130.00', '2017-08-28 14:31:40', '2017-08-28 14:31:40'),
(689, 141, '7500', '170.00', '2017-08-28 14:32:01', '2017-08-28 14:32:01'),
(690, 141, '10000', '225.00', '2017-08-28 14:32:16', '2017-08-28 14:32:16'),
(691, 141, '15000', '310.00', '2017-08-28 14:32:40', '2017-08-28 14:32:40'),
(692, 142, '1000', '80.00', '2017-08-28 14:33:17', '2017-08-28 14:33:17'),
(693, 142, '2500', '148.00', '2017-08-28 14:33:35', '2017-08-28 14:33:35'),
(694, 142, '5000', '175.00', '2017-08-28 14:33:54', '2017-08-28 14:33:54'),
(695, 142, '7500', '230.00', '2017-08-28 14:34:14', '2017-08-28 14:34:14'),
(696, 142, '10000', '250.00', '2017-08-28 14:34:34', '2017-08-28 14:34:34'),
(697, 142, '15000', '300.00', '2017-08-28 14:35:26', '2017-08-28 14:35:26'),
(698, 143, '1000', '68.00', '2017-08-28 14:35:59', '2017-08-28 14:35:59'),
(699, 143, '2500', '124.00', '2017-08-28 14:36:13', '2017-08-28 14:36:13'),
(700, 143, '5000', '160.00', '2017-08-28 14:36:38', '2017-08-28 14:36:38'),
(701, 143, '7500', '200.00', '2017-08-28 14:36:58', '2017-08-28 14:36:58'),
(702, 143, '10000', '250.00', '2017-08-28 14:37:28', '2017-08-28 14:37:28'),
(704, 143, '15000', '300.00', '2017-08-28 14:38:21', '2017-08-28 14:38:21'),
(705, 144, '1000', '125.00', '2017-08-28 14:39:16', '2017-08-28 14:39:16'),
(706, 144, '2500', '165.00', '2017-08-28 14:39:33', '2017-08-28 14:39:33'),
(707, 144, '5000', '240.00', '2017-08-28 14:39:46', '2017-08-28 14:39:46'),
(708, 144, '10000', '320.00', '2017-08-28 14:40:14', '2017-08-28 14:40:14'),
(709, 144, '15000', '450.00', '2017-08-28 14:40:35', '2017-08-28 14:40:35'),
(710, 144, '7500', '260.00', '2017-08-28 14:45:01', '2017-08-28 14:45:01'),
(711, 145, '25', '26.00', '2017-08-28 14:52:50', '2017-08-28 14:52:50'),
(712, 145, '50', '32.00', '2017-08-28 14:53:03', '2017-08-28 14:53:03'),
(713, 145, '100', '46.50', '2017-08-28 14:53:17', '2017-08-28 14:53:17'),
(714, 145, '200', '82.00', '2017-08-28 14:53:30', '2017-08-28 14:53:30'),
(715, 145, '500', '183.00', '2017-08-28 14:53:58', '2017-08-28 14:53:58'),
(716, 146, '100', '180.00', '2017-08-28 14:55:58', '2017-08-28 14:55:58'),
(717, 146, '250', '199.00', '2017-08-28 14:56:11', '2017-08-28 14:56:11'),
(719, 146, '500', '250.00', '2017-08-28 15:02:32', '2017-08-28 15:02:32'),
(725, 148, '1', '8.00', '2017-08-29 06:35:18', '2017-08-29 06:35:18'),
(726, 148, '3', '18.00', '2017-08-29 06:35:28', '2017-08-29 06:35:28'),
(727, 148, '6', '30.00', '2017-08-29 06:35:43', '2017-08-29 06:35:43'),
(729, 149, '1', '13.00', '2017-08-29 06:36:14', '2017-08-29 06:36:14'),
(730, 149, '3', '23.00', '2017-08-29 06:36:25', '2017-08-29 06:36:25'),
(731, 149, '6', '36.00', '2017-08-29 06:36:35', '2017-08-29 06:36:35'),
(733, 150, '1', '14.00', '2017-08-29 06:37:14', '2017-08-29 06:37:14'),
(734, 150, '2', '19.00', '2017-08-29 06:37:28', '2017-08-29 06:37:28'),
(735, 150, '4', '32.00', '2017-08-29 06:37:39', '2017-08-29 06:37:39'),
(737, 151, '1', '28.00', '2017-08-29 06:38:51', '2017-08-29 06:38:51'),
(738, 151, '2', '52.00', '2017-08-29 06:39:03', '2017-08-29 06:39:03'),
(739, 151, '3', '75.00', '2017-08-29 06:39:16', '2017-08-29 06:39:16'),
(740, 151, '4', '104.00', '2017-08-29 06:39:28', '2017-08-29 06:39:28'),
(741, 151, '5', '120.00', '2017-08-29 06:39:40', '2017-08-29 06:39:40'),
(742, 152, '5 (250 juegos)', '99.00', '2017-08-29 15:36:33', '2017-08-29 15:46:47'),
(743, 152, '10 ( 250 juegos)', '162.00', '2017-08-29 15:37:41', '2017-08-29 15:44:08'),
(744, 152, '20 (1000 juegos)', '232.00', '2017-08-29 15:38:00', '2017-08-29 15:45:56'),
(745, 152, '30 (1500 juegos)', '289.00', '2017-08-29 15:38:19', '2017-08-29 15:46:14'),
(746, 152, '40 (2000 juegos)', '311.00', '2017-08-29 15:38:44', '2017-08-29 15:46:32'),
(747, 152, '50 ( 2500 juegos', '439.00', '2017-08-29 15:39:02', '2017-08-29 15:47:00'),
(748, 152, '100 (5000 juegos)', '452.00', '2017-08-29 15:39:20', '2017-08-29 15:45:18'),
(749, 153, '5 (250 juegos)', '127.00', '2017-08-29 15:41:15', '2017-08-31 07:25:03'),
(750, 153, '10 (500 juegos)', '216.00', '2017-08-29 15:41:32', '2017-08-31 07:24:11'),
(751, 153, '20 ( 100 juegos)', '346.00', '2017-08-29 15:42:05', '2017-08-31 07:24:25'),
(752, 153, '30 (1500 juegos)', '385.00', '2017-08-29 15:42:25', '2017-08-31 07:24:38'),
(753, 153, '40 (2000 juegos)', '499.00', '2017-08-29 15:42:46', '2017-08-31 07:24:51'),
(754, 153, '50 ( 2500 juegos)', '558.00', '2017-08-29 15:43:29', '2017-08-29 15:43:29'),
(755, 153, '100 ( 5000 juegos)', '857.00', '2017-08-29 15:43:54', '2017-08-29 15:43:54'),
(756, 154, '5 (250 juegos)', '87.00', '2017-08-31 07:29:57', '2017-08-31 07:29:57'),
(757, 154, '10 (500 juegos)', '129.00', '2017-08-31 07:30:29', '2017-08-31 07:30:29'),
(758, 154, '20 (1000 juegos)', '191.00', '2017-08-31 07:30:57', '2017-08-31 07:32:56'),
(759, 154, '30 (1500 juegos)', '217.00', '2017-08-31 07:32:00', '2017-08-31 07:32:00'),
(760, 154, '40 (2000 juegos)', '259.00', '2017-08-31 07:33:28', '2017-08-31 07:33:28'),
(761, 154, '50 (2500 juegos)', '294.00', '2017-08-31 07:34:06', '2017-08-31 07:34:06'),
(762, 154, '100 (5000 juegos)', '536.00', '2017-08-31 07:34:34', '2017-08-31 07:34:34'),
(763, 155, '5 (250 juegos)', '114.00', '2017-08-31 08:00:58', '2017-08-31 08:00:58'),
(764, 155, '10 (500 juegos)', '171.00', '2017-08-31 08:01:29', '2017-08-31 08:01:29'),
(765, 155, '20 (1000 juegos)', '289.00', '2017-08-31 08:03:13', '2017-08-31 08:03:13'),
(766, 155, '30 (1500 juegos)', '329.00', '2017-08-31 08:03:48', '2017-08-31 08:03:48'),
(767, 155, '40 (2000 juegos)', '384.00', '2017-08-31 08:04:25', '2017-08-31 08:04:25'),
(768, 155, '50 (2500 juegos)', '416.00', '2017-08-31 08:05:14', '2017-08-31 08:05:14'),
(769, 155, '100 (5000 juegos)', '541.00', '2017-08-31 08:05:40', '2017-08-31 08:05:40'),
(770, 156, '5 (250 juegos)', '84.00', '2017-08-31 08:07:45', '2017-08-31 08:07:45'),
(771, 156, '10 (500 juegos)', '121.00', '2017-08-31 08:08:13', '2017-08-31 08:08:13'),
(772, 156, '20 (1000 juegos)', '177.00', '2017-08-31 08:08:48', '2017-08-31 08:08:48'),
(773, 156, '30 (1500 juegos)', '202.00', '2017-08-31 08:09:28', '2017-08-31 08:09:28'),
(774, 156, '40 (2000 juegos)', '241.00', '2017-08-31 08:10:09', '2017-08-31 08:10:09'),
(775, 156, '50 (2500 juegos)', '267.00', '2017-08-31 08:10:49', '2017-08-31 08:10:49'),
(776, 156, '100 (5000 juegos)', '485.00', '2017-08-31 08:11:22', '2017-08-31 08:11:22'),
(777, 157, '5 (250 juegos)', '108.00', '2017-08-31 08:12:27', '2017-08-31 08:12:27'),
(778, 157, '10 (500 juegos)', '154.00', '2017-08-31 08:12:51', '2017-08-31 08:12:51'),
(779, 157, '20 (1000 juegos)', '264.00', '2017-08-31 08:13:32', '2017-08-31 08:13:32'),
(780, 157, '30 (1500 juegos)', '304.00', '2017-08-31 08:14:33', '2017-08-31 08:14:33'),
(781, 157, '40 (2000 juegos)', '352.00', '2017-08-31 08:15:01', '2017-08-31 08:15:01'),
(782, 157, '50 (2500 juegos)', '386.00', '2017-08-31 08:15:34', '2017-08-31 08:15:34'),
(783, 157, '100 (5000 juegos)', '512.00', '2017-08-31 08:16:05', '2017-08-31 08:16:05'),
(784, 158, '5 (250 juegos)', '107.00', '2017-08-31 08:18:55', '2017-08-31 08:18:55'),
(785, 158, '10 (500 juegos)', '176.00', '2017-08-31 08:19:31', '2017-08-31 08:19:31'),
(786, 158, '20 (1000 juegos)', '259.00', '2017-08-31 08:20:03', '2017-08-31 08:20:03'),
(787, 158, '30 (1500 juegos)', '309.00', '2017-08-31 08:20:33', '2017-08-31 08:20:33'),
(788, 158, '40 (2000 juegos)', '349.00', '2017-08-31 08:21:24', '2017-08-31 08:21:24'),
(789, 158, '50 (2500 juegos)', '380.00', '2017-08-31 08:21:46', '2017-08-31 08:21:46'),
(790, 158, '100 (5000 juegos)', '510.00', '2017-08-31 08:22:18', '2017-08-31 08:22:18'),
(791, 159, '5 (250 juegos)', '136.00', '2017-08-31 08:23:03', '2017-08-31 08:23:03'),
(792, 159, '10 (500 juegos)', '234.00', '2017-08-31 08:23:40', '2017-08-31 08:23:40'),
(793, 159, '20 (1000 juegos)', '375.00', '2017-08-31 08:24:13', '2017-08-31 08:24:13'),
(794, 159, '30 (1500 juegos)', '421.00', '2017-08-31 08:24:44', '2017-08-31 08:24:44'),
(795, 159, '40 (2000 juegos)', '599.00', '2017-08-31 08:25:13', '2017-08-31 08:25:13'),
(796, 159, '50 (2500 juegos)', '658.00', '2017-08-31 08:25:52', '2017-08-31 08:25:52'),
(797, 159, '100 (5000 juegos)', '1057.00', '2017-08-31 08:26:20', '2017-08-31 08:26:20'),
(798, 160, '5 (250juegos)', '93.00', '2017-08-31 14:06:49', '2017-08-31 14:06:49'),
(799, 160, '10 (500 juegos)', '155.00', '2017-08-31 14:07:24', '2017-08-31 14:07:24'),
(800, 160, '20 (1000 juegos)', '215.00', '2017-08-31 14:07:43', '2017-08-31 14:07:43'),
(801, 160, '30 (1500 juegos)', '250.00', '2017-08-31 14:08:32', '2017-08-31 14:08:32'),
(802, 160, '40 (2000 juegos)', '280.00', '2017-08-31 14:08:54', '2017-08-31 14:08:54'),
(803, 160, '50  (2500 juegos)', '320.00', '2017-08-31 14:09:29', '2017-08-31 14:09:29'),
(804, 160, '100 (5000 juegos)', '468.00', '2017-08-31 14:10:36', '2017-08-31 14:10:36'),
(805, 161, '5 (250 juegos)', '138.00', '2017-08-31 14:12:34', '2017-08-31 14:12:34'),
(806, 161, '10 (500 juegos)', '210.00', '2017-08-31 14:37:46', '2017-08-31 14:37:46'),
(807, 161, '20 (1000 juegos)', '335.00', '2017-08-31 14:38:17', '2017-08-31 14:38:17'),
(808, 161, '30 (1500 juegos)', '358.00', '2017-08-31 14:38:45', '2017-08-31 14:38:45'),
(809, 161, '40 (2000 juegos)', '398.00', '2017-08-31 14:39:10', '2017-08-31 14:39:10'),
(810, 161, '50 (2500 juegos)', '485.00', '2017-08-31 14:39:33', '2017-08-31 14:39:33'),
(811, 161, '100 (5000 juegos)', '640.00', '2017-08-31 14:39:52', '2017-08-31 14:39:52'),
(812, 162, '5 (250 juegos)', '84.50', '2017-08-31 14:41:30', '2017-08-31 14:41:30'),
(813, 162, '10 (1000 juegos)', '149.90', '2017-08-31 14:41:51', '2017-08-31 14:42:08'),
(814, 162, '20 (1000 juegos)', '199.00', '2017-08-31 14:42:31', '2017-08-31 14:42:31'),
(815, 162, '30 (1500 juegos)', '260.00', '2017-08-31 14:42:52', '2017-08-31 14:42:52'),
(816, 162, '40 (2000 juegos)', '285.00', '2017-08-31 14:43:16', '2017-08-31 14:43:16'),
(817, 162, '50 (2500 juegos)', '355.00', '2017-08-31 14:43:35', '2017-08-31 14:43:35'),
(818, 162, '100 (5000 juegos)', '399.00', '2017-08-31 14:43:54', '2017-08-31 14:43:54'),
(819, 163, '5 (250 juegos)', '100.00', '2017-08-31 14:44:38', '2017-08-31 14:44:38'),
(820, 163, '10 (500 juegos)', '195.00', '2017-08-31 14:45:02', '2017-08-31 14:45:02'),
(821, 163, '20 (1000 juegos)', '290.00', '2017-08-31 14:45:27', '2017-08-31 14:45:27'),
(822, 163, '30 (1500 juegos)', '345.00', '2017-08-31 14:45:49', '2017-08-31 14:45:49'),
(823, 163, '40 (2000 juegos)', '445.00', '2017-08-31 14:46:13', '2017-08-31 14:46:13'),
(824, 163, '50 (2500 juegos)', '490.00', '2017-08-31 14:49:10', '2017-08-31 14:49:10'),
(825, 163, '100 (5000 juegos) ', '698.00', '2017-08-31 14:49:35', '2017-08-31 14:49:35'),
(826, 164, '5 (250 juegos)', '107.00', '2017-09-01 15:52:39', '2017-09-01 15:52:39'),
(827, 164, '10 (500 juegos)', '171.00', '2017-09-01 15:53:04', '2017-09-01 15:53:04'),
(828, 164, '20 (1000 juegos)', '249.00', '2017-09-01 15:53:34', '2017-09-01 15:53:34'),
(829, 164, '30 (1500 juegos)', '309.00', '2017-09-01 15:55:52', '2017-09-01 15:55:52'),
(830, 164, '40 (2000 juegos)', '349.00', '2017-09-01 15:56:14', '2017-09-01 15:56:14'),
(831, 164, '50 (2500 juegos)', '380.00', '2017-09-01 15:56:49', '2017-09-01 15:56:49'),
(832, 164, '100 (5000 juegos)', '510.00', '2017-09-01 15:57:14', '2017-09-01 15:57:14'),
(833, 165, '5 (250 juegos)', '131.00', '2017-09-01 15:57:52', '2017-09-01 15:57:52'),
(834, 165, '10 (500 juegos)', '224.00', '2017-09-01 15:58:16', '2017-09-01 15:58:16'),
(835, 165, '20 (1000 juegos)', '375.00', '2017-09-01 15:58:38', '2017-09-01 15:58:38'),
(836, 165, '30 (1500 juegos)', '421.00', '2017-09-01 15:59:00', '2017-09-01 15:59:00'),
(837, 165, '40 (2000 juegos)', '599.00', '2017-09-01 15:59:36', '2017-09-01 15:59:36'),
(838, 165, '50 (2500 juegos)', '658.00', '2017-09-01 16:00:57', '2017-09-01 16:00:57'),
(839, 165, '100 (5000 juegos)', '1057.00', '2017-09-01 16:01:30', '2017-09-01 16:01:30'),
(846, 167, '500', '131.64', '2017-09-04 15:02:06', '2017-09-04 15:02:06'),
(847, 167, '1000', '154.95', '2017-09-04 15:02:36', '2017-09-04 15:02:36'),
(848, 167, '2500', '196.41', '2017-09-04 15:03:12', '2017-09-04 15:03:12'),
(849, 167, '5000', '256.91', '2017-09-04 15:03:36', '2017-09-04 15:03:36'),
(850, 167, '10000', '334.35', '2017-09-04 15:05:04', '2017-09-04 15:05:04'),
(851, 168, '500', '131.64', '2017-09-04 15:10:23', '2017-09-04 15:10:23'),
(852, 168, '1000', '154.95', '2017-09-04 15:10:47', '2017-09-04 15:10:47'),
(853, 168, '2500', '196.41', '2017-09-04 15:11:17', '2017-09-04 15:11:17'),
(854, 168, '5000', '256.91', '2017-09-04 15:12:14', '2017-09-04 15:12:14'),
(855, 168, '10000', '334.35', '2017-09-04 15:13:30', '2017-09-04 15:13:30'),
(856, 169, '500', '163.10', '2017-09-04 15:23:19', '2017-09-04 15:23:19'),
(857, 169, '1000', '181.57', '2017-09-04 15:23:45', '2017-09-04 15:23:45'),
(858, 169, '2500', '236.34', '2017-09-04 15:24:09', '2017-09-04 15:24:09'),
(859, 169, '5000', '330.72', '2017-09-04 15:24:40', '2017-09-04 15:24:40'),
(860, 169, '10000', '498.91', '2017-09-04 15:25:06', '2017-09-04 15:25:06'),
(861, 170, '500', '163.10', '2017-09-04 15:25:53', '2017-09-04 15:25:53'),
(862, 170, '1000', '181.57', '2017-09-04 15:26:14', '2017-09-04 15:26:14'),
(863, 170, '2500', '236.34', '2017-09-04 15:26:32', '2017-09-04 15:26:32'),
(864, 170, '5000', '330.72', '2017-09-04 15:26:49', '2017-09-04 15:26:49'),
(865, 170, '10000', '498.91', '2017-09-04 15:27:05', '2017-09-04 15:27:05'),
(866, 171, '1', '12.90', '2017-09-04 16:08:58', '2017-09-04 16:08:58');
INSERT INTO `price_products` (`id`, `idTypePriceProduct`, `count`, `price`, `created_at`, `updated_at`) VALUES
(867, 171, '2', '19.90', '2017-09-04 16:09:10', '2017-09-04 16:09:10'),
(868, 171, '3', '28.90', '2017-09-04 16:09:25', '2017-09-04 16:09:25'),
(869, 171, '4', '36.90', '2017-09-05 06:25:22', '2017-09-05 06:25:22'),
(870, 171, '5', '45.90', '2017-09-05 06:25:41', '2017-09-05 06:25:41'),
(871, 171, '6', '53.90', '2017-09-05 06:26:03', '2017-09-05 06:26:03'),
(872, 171, '7', '59.90', '2017-09-05 06:26:28', '2017-09-05 06:26:28'),
(873, 171, '8', '66.10', '2017-09-05 06:27:04', '2017-09-05 06:27:04'),
(874, 171, '9', '70.90', '2017-09-05 06:27:25', '2017-09-05 06:27:25'),
(875, 171, '10', '78.95', '2017-09-05 06:27:47', '2017-09-05 06:27:47'),
(876, 171, '15', '106.60', '2017-09-05 06:28:55', '2017-09-05 06:28:55'),
(877, 171, '20', '137.10', '2017-09-05 06:29:17', '2017-09-05 06:29:17'),
(878, 171, '25', '158.90', '2017-09-05 06:29:51', '2017-09-05 06:29:51'),
(879, 171, '50', '292.00', '2017-09-05 06:30:13', '2017-09-05 06:30:13'),
(880, 171, '100', '456.90', '2017-09-05 06:30:34', '2017-09-05 06:30:34'),
(881, 171, '250', '903.15', '2017-09-05 06:31:00', '2017-09-05 06:31:00'),
(882, 172, '1', '12.90', '2017-09-05 06:32:56', '2017-09-05 06:38:08'),
(883, 172, '2', '19.90', '2017-09-05 06:33:10', '2017-09-05 06:38:32'),
(884, 172, '3', '28.90', '2017-09-05 06:33:25', '2017-09-05 06:39:03'),
(885, 172, '4', '34.90', '2017-09-05 06:33:40', '2017-09-05 06:39:11'),
(886, 172, '5', '41.90', '2017-09-05 06:33:54', '2017-09-05 06:39:20'),
(887, 172, '6', '51.85', '2017-09-05 06:34:15', '2017-09-05 06:39:36'),
(888, 172, '7', '57.95', '2017-09-05 06:34:32', '2017-09-05 06:39:43'),
(889, 172, '8', '64.10', '2017-09-05 06:34:54', '2017-09-05 06:39:51'),
(890, 172, '9', '67.90', '2017-09-05 06:35:15', '2017-09-05 06:39:59'),
(891, 172, '10', '74.90', '2017-09-05 06:36:04', '2017-09-05 06:38:16'),
(892, 172, '15', '103.50', '2017-09-05 06:36:27', '2017-09-05 06:38:23'),
(893, 172, '20', '132.10', '2017-09-05 06:36:49', '2017-09-05 06:38:48'),
(894, 172, '25', '153.95', '2017-09-05 06:37:07', '2017-09-05 06:38:55'),
(895, 172, '50', '287.90', '2017-09-05 06:37:28', '2017-09-05 06:39:28'),
(896, 172, '100', '448.10', '2017-09-05 06:40:22', '2017-09-05 06:40:22'),
(897, 172, '250', '896.15', '2017-09-05 06:40:38', '2017-09-05 06:40:38'),
(898, 173, '1', '14.40', '2017-09-05 06:42:21', '2017-09-05 06:42:21'),
(899, 173, '2', '21.40', '2017-09-05 06:42:49', '2017-09-05 06:42:49'),
(900, 173, '3', '30.40', '2017-09-05 06:43:11', '2017-09-05 06:43:11'),
(901, 173, '4', '36.40', '2017-09-05 06:43:43', '2017-09-05 06:43:43'),
(902, 173, '5', '43.40', '2017-09-05 06:44:03', '2017-09-05 06:44:03'),
(903, 173, '6', '53.85', '2017-09-05 06:44:57', '2017-09-05 06:45:06'),
(904, 173, '7', '59.45', '2017-09-05 06:45:31', '2017-09-05 06:45:31'),
(905, 173, '8', '65.60', '2017-09-05 06:45:52', '2017-09-05 06:45:52'),
(906, 173, '9', '68.70', '2017-09-05 06:46:19', '2017-09-05 06:46:19'),
(907, 173, '10', '76.45', '2017-09-05 06:46:44', '2017-09-05 06:46:44'),
(908, 173, '15', '104.50', '2017-09-05 06:47:04', '2017-09-05 06:47:04'),
(909, 173, '20', '133.10', '2017-09-05 06:47:19', '2017-09-05 06:47:19'),
(910, 173, '25', '155.95', '2017-09-05 06:47:34', '2017-09-05 06:47:34'),
(911, 173, '50', '288.90', '2017-09-05 06:47:48', '2017-09-05 06:47:48'),
(912, 173, '100', '448.10', '2017-09-05 06:55:04', '2017-09-05 06:55:04'),
(913, 173, '250', '896.15', '2017-09-05 06:55:22', '2017-09-05 06:55:22'),
(914, 52, '100', '134.90', '2017-09-05 06:57:03', '2017-09-05 06:57:03'),
(915, 53, '100', '172.90', '2017-09-05 06:57:41', '2017-09-05 06:57:41'),
(916, 54, '50', '148.90', '2017-09-05 07:03:28', '2017-09-05 07:03:28'),
(917, 174, 'Hasta 50 cm ', '16.00', '2017-09-05 07:16:47', '2017-09-05 07:17:51'),
(918, 174, 'Hasta 100 cm ', '22.00', '2017-09-05 07:17:40', '2017-09-05 07:17:40'),
(919, 174, 'Hasta 200 cm', '42.00', '2017-09-05 07:18:24', '2017-09-05 07:18:24'),
(920, 174, 'Hasta 300 cm', '56.00', '2017-09-05 07:18:49', '2017-09-05 07:18:49'),
(921, 174, 'Hasta 400 cm', '73.00', '2017-09-05 07:19:15', '2017-09-05 07:19:15'),
(922, 174, 'Hata 500 cm', '87.00', '2017-09-05 07:19:34', '2017-09-05 07:19:34'),
(923, 174, 'Hasta 600 cm', '103.00', '2017-09-05 07:20:00', '2017-09-05 07:20:00'),
(924, 174, 'Hasta 700 cm', '118.00', '2017-09-05 07:20:21', '2017-09-05 07:20:21'),
(925, 174, 'Hasta 800 cm', '132.00', '2017-09-05 07:20:39', '2017-09-05 07:20:39'),
(926, 174, 'Hasta 900 cm', '147.00', '2017-09-05 07:20:57', '2017-09-05 07:20:57'),
(927, 174, 'Hasta 1000 cm', '162.00', '2017-09-05 07:21:16', '2017-09-05 07:21:16'),
(928, 175, 'Hata 50 cm', '22.00', '2017-09-05 07:23:26', '2017-09-05 07:23:26'),
(929, 175, 'Hasta 100 cm', '26.00', '2017-09-05 07:23:44', '2017-09-05 07:23:44'),
(930, 175, 'Hasta 200 cm', '49.00', '2017-09-05 07:27:07', '2017-09-05 07:27:07'),
(931, 175, 'Hasta 300 cm', '69.00', '2017-09-05 07:27:28', '2017-09-05 07:27:28'),
(932, 175, 'Hasta 400 cm', '90.00', '2017-09-05 07:27:51', '2017-09-05 07:27:51'),
(933, 175, 'Hasta 500 cm', '110.00', '2017-09-05 07:28:50', '2017-09-05 07:28:50'),
(934, 175, 'Hasta 600 cm', '144.00', '2017-09-05 07:29:13', '2017-09-05 07:29:13'),
(935, 175, 'Hasta 700 cm', '150.00', '2017-09-05 07:29:33', '2017-09-05 07:29:33'),
(936, 175, 'Hasta 800 cm', '169.00', '2017-09-05 07:30:00', '2017-09-05 07:30:00'),
(937, 175, 'Hasta 900 cm', '184.00', '2017-09-05 07:30:42', '2017-09-05 07:30:42'),
(938, 175, 'Hasta 1000 cm', '199.00', '2017-09-05 07:33:33', '2017-09-05 07:33:33'),
(939, 176, 'Hasta 50 cm', '31.00', '2017-09-05 07:34:09', '2017-09-05 07:34:09'),
(940, 176, 'Hasta 100 cm', '41.00', '2017-09-05 07:34:27', '2017-09-05 07:34:27'),
(941, 176, 'Hasta 200 cm', '64.00', '2017-09-05 07:34:47', '2017-09-05 07:34:47'),
(942, 176, 'Hasta 300 cm', '90.00', '2017-09-05 07:35:04', '2017-09-05 07:35:04'),
(943, 176, 'Hasta 400 cm', '115.00', '2017-09-05 07:35:20', '2017-09-05 07:35:20'),
(944, 176, 'Hasta 500 cm', '139.00', '2017-09-05 07:35:37', '2017-09-05 07:35:37'),
(945, 176, 'Hasta 600 cm', '166.00', '2017-09-05 07:36:09', '2017-09-05 07:36:09'),
(946, 176, 'Hasta 700 cm', '190.00', '2017-09-05 07:36:28', '2017-09-05 07:36:28'),
(947, 176, 'Hasta 800 cm', '214.00', '2017-09-05 07:36:45', '2017-09-05 07:36:45'),
(948, 176, 'Hasta 900 cm', '237.00', '2017-09-05 07:37:00', '2017-09-05 07:37:00'),
(949, 176, 'Hasta 1000 cm', '263.00', '2017-09-05 07:37:21', '2017-09-05 07:37:21'),
(950, 177, '1,20 x 1 m', '85.00', '2017-09-05 07:46:11', '2017-09-05 07:46:11'),
(951, 177, '0,80 x 0,40 cm', '45.00', '2017-09-05 07:46:32', '2017-09-05 07:46:32'),
(973, 185, '21 x 29,7 cm', '19.00', '2017-09-05 08:08:22', '2017-09-05 08:11:30'),
(974, 186, '21 x 29,7 cm', '32.00', '2017-09-05 08:09:07', '2017-09-06 07:51:57'),
(975, 187, '21 x 29,7 cm', '45.00', '2017-09-05 08:10:18', '2017-09-06 07:52:08'),
(976, 185, '29,7 x 42 cm', '23.00', '2017-09-05 08:11:03', '2017-09-05 08:11:03'),
(977, 186, '29,7 x 42 cm', '40.00', '2017-09-05 08:12:10', '2017-09-05 18:47:50'),
(978, 187, '29,7 x 42 cm', '45.00', '2017-09-05 08:12:47', '2017-09-06 07:52:21'),
(979, 185, '42 x 59,4 cm', '36.00', '2017-09-05 08:13:57', '2017-09-05 08:13:57'),
(980, 186, '42 x 59,4 cm', '72.00', '2017-09-05 08:14:37', '2017-09-05 16:07:27'),
(981, 187, '42 x 59,4 cm', '108.00', '2017-09-05 08:17:27', '2017-09-05 16:07:51'),
(982, 185, '84,1 x 118,9 cm', '49.00', '2017-09-05 08:18:35', '2017-09-05 08:18:35'),
(983, 186, '84,1 x 118,9 cm', '98.00', '2017-09-05 08:18:57', '2017-09-05 08:18:57'),
(984, 187, '84,1 x 118,9 cm', '147.00', '2017-09-05 08:19:40', '2017-09-05 08:19:40'),
(985, 185, '50 x 70 cm', '49.00', '2017-09-05 08:36:12', '2017-09-05 16:20:01'),
(986, 186, '50 x 70 cm', '98.00', '2017-09-05 08:37:15', '2017-09-05 16:20:16'),
(987, 187, '50 x 70 cm', '114.00', '2017-09-05 08:37:39', '2017-09-05 08:37:39'),
(988, 185, '59,4 x 118,9 cm', '40.00', '2017-09-05 08:38:28', '2017-09-05 08:38:28'),
(989, 186, '59,4 x 118,9 cm', '80.00', '2017-09-05 08:39:04', '2017-09-05 08:39:04'),
(990, 187, '59,4 x 118,9 cm', '120.00', '2017-09-05 08:39:21', '2017-09-05 08:39:21'),
(991, 185, '50 x 100 cm', '39.00', '2017-09-05 08:39:46', '2017-09-05 08:39:46'),
(992, 186, '50 x 100 cm', '78.00', '2017-09-05 08:40:16', '2017-09-05 08:40:16'),
(993, 187, '50 x 100 cm', '117.00', '2017-09-05 08:40:37', '2017-09-05 08:40:37'),
(994, 185, '70 x 100 cm', '49.00', '2017-09-05 08:41:03', '2017-09-05 08:41:03'),
(995, 186, '70 x 100 cm', '98.00', '2017-09-05 08:41:23', '2017-09-05 08:41:23'),
(996, 187, '70 x 100 cm', '147.00', '2017-09-05 08:41:41', '2017-09-05 08:41:41'),
(997, 185, '100 x 100 cm', '48.00', '2017-09-05 08:42:02', '2017-09-05 08:42:02'),
(998, 186, '100 x 100 cm', '96.00', '2017-09-05 08:42:27', '2017-09-05 08:42:27'),
(999, 187, '100 x 100 cm', '144.00', '2017-09-05 08:42:45', '2017-09-05 08:42:45'),
(1000, 185, '21 x 29,7 cm Laminado Premium', '25.00', '2017-09-05 08:43:49', '2017-09-05 08:43:49'),
(1001, 186, '21 x 29,7 cm Laminado Premium', '50.00', '2017-09-05 08:44:02', '2017-09-05 08:44:02'),
(1002, 187, '21 x 29,7 cm Laminado Premium', '75.00', '2017-09-05 08:44:13', '2017-09-05 08:44:13'),
(1003, 185, '29,7 x 42 cm Laminado Premium', '31.00', '2017-09-05 08:44:43', '2017-09-05 08:44:43'),
(1004, 186, '29,7 x 42 cm Laminado Premium', '62.00', '2017-09-05 08:45:02', '2017-09-05 16:11:08'),
(1005, 187, '29,7 x 42 cm Laminado Premium', '93.00', '2017-09-05 08:45:28', '2017-09-05 08:45:28'),
(1006, 185, '42 x 59,4 cm Laminado Premium', '40.00', '2017-09-05 08:46:02', '2017-09-05 08:46:02'),
(1007, 186, '42 x 59,4 cm Laminado Premium', '80.00', '2017-09-05 08:46:20', '2017-09-05 08:46:20'),
(1008, 187, '42 x 59,4 cm Laminado Premium', '120.00', '2017-09-05 08:46:43', '2017-09-05 08:46:43'),
(1009, 185, '59,4 x 118,9 cm Laminado Premium', '45.00', '2017-09-05 08:47:11', '2017-09-05 08:47:11'),
(1010, 186, '59,4 x 118,9 cm Laminado Premium', '90.00', '2017-09-05 08:47:22', '2017-09-05 08:47:22'),
(1011, 187, '59,4 x 118,9 cm Laminado Premium', '135.00', '2017-09-05 08:47:39', '2017-09-05 08:47:39'),
(1012, 185, '84,1 x 118,9 cm Laminado Premium', '60.00', '2017-09-05 08:48:12', '2017-09-05 08:48:12'),
(1013, 186, '84,1 x 118,9 cm Laminado Premium', '120.00', '2017-09-05 08:48:23', '2017-09-05 08:48:23'),
(1014, 187, '84,1 x 118,9 cm Laminado Premium', '180.00', '2017-09-05 08:48:52', '2017-09-05 08:48:52'),
(1015, 185, '50 x 70 cm Laminado Premium', '43.00', '2017-09-05 08:49:31', '2017-09-05 08:49:31'),
(1016, 186, '50 x 70 cm Laminado Premium', '86.00', '2017-09-05 08:50:05', '2017-09-05 08:50:05'),
(1017, 187, '50 x 70 cm Laminado Premium', '147.00', '2017-09-05 08:50:26', '2017-09-05 16:01:52'),
(1018, 185, '50 x 100 cm Laminado Premium', '46.00', '2017-09-05 08:51:00', '2017-09-05 08:51:00'),
(1019, 186, '50 x 100 cm Laminado Premium', '92.00', '2017-09-05 08:51:24', '2017-09-05 08:51:24'),
(1021, 187, '50 x 100 cm Laminado Premium', '129.00', '2017-09-05 08:53:00', '2017-09-05 16:22:08'),
(1022, 185, '70 x 100 cm Laminado Premium', '49.00', '2017-09-05 08:54:11', '2017-09-05 08:54:11'),
(1023, 186, '70 x 100 cm Laminado Premium', '98.00', '2017-09-05 08:54:34', '2017-09-05 08:54:34'),
(1024, 187, '70 x 100 cm Laminado Premium', '147.00', '2017-09-05 08:54:54', '2017-09-05 08:54:54'),
(1025, 185, '100 x 100 cm Laminado Premium', '56.00', '2017-09-05 08:55:23', '2017-09-05 08:55:23'),
(1026, 186, '100 x 100 cm Laminado Premium', '112.00', '2017-09-05 08:55:52', '2017-09-05 08:55:52'),
(1027, 187, '100 x 100 cm Laminado Premium', '168.00', '2017-09-05 08:56:16', '2017-09-05 08:56:16'),
(1028, 188, '1 Talon (50)', '30.00', '2017-09-05 14:22:13', '2017-09-06 06:23:54'),
(1029, 188, '2 Talones (100)', '43.00', '2017-09-05 14:22:42', '2017-09-06 06:26:22'),
(1030, 188, '3 Talones (150)', '50.00', '2017-09-05 14:23:21', '2017-09-06 06:26:50'),
(1031, 188, '4 Talones (200)', '58.00', '2017-09-05 14:23:45', '2017-09-06 06:27:35'),
(1032, 188, '5 Talones (250)', '65.00', '2017-09-05 14:24:25', '2017-09-06 06:28:17'),
(1033, 188, '6 Talones (300)', '73.00', '2017-09-05 14:25:02', '2017-09-06 06:29:19'),
(1034, 188, '7 Talones (350)', '83.00', '2017-09-05 14:25:31', '2017-09-06 06:29:33'),
(1035, 188, '8 Talones (400)', '88.00', '2017-09-05 14:26:19', '2017-09-06 06:29:42'),
(1036, 188, '9 Talones (450)', '90.00', '2017-09-05 14:26:44', '2017-09-06 06:29:47'),
(1037, 188, '10 Talones (500)', '100.00', '2017-09-05 14:27:25', '2017-09-06 06:24:11'),
(1038, 188, '11 Talones (550)', '112.00', '2017-09-05 14:28:14', '2017-09-06 06:24:38'),
(1039, 188, '12 Talones (600)', '120.00', '2017-09-05 14:28:38', '2017-09-06 06:24:55'),
(1040, 188, '13 Talones (650)', '128.00', '2017-09-05 14:29:20', '2017-09-06 06:25:07'),
(1041, 188, '14 Talones (700)', '140.00', '2017-09-05 14:30:17', '2017-09-06 06:25:15'),
(1042, 188, '15 Talones (750)', '150.00', '2017-09-05 14:30:54', '2017-09-06 06:25:26'),
(1043, 188, '16 Talones (800)', '159.00', '2017-09-05 14:31:26', '2017-09-06 06:25:38'),
(1044, 188, '17 Talones (850)', '165.00', '2017-09-05 14:31:56', '2017-09-06 06:25:46'),
(1045, 188, '18 Talones (900)', '175.00', '2017-09-05 14:37:16', '2017-09-06 06:25:55'),
(1046, 188, '19 Talones (950)', '180.00', '2017-09-05 14:38:36', '2017-09-06 06:26:12'),
(1047, 188, '20 Talones (1000)', '188.00', '2017-09-05 14:39:24', '2017-09-06 06:26:39'),
(1048, 188, '30 Talones (1500)', '220.00', '2017-09-05 14:40:07', '2017-09-06 06:27:23'),
(1049, 188, '40 Talones (2000)', '270.00', '2017-09-05 14:40:44', '2017-09-06 06:27:58'),
(1050, 188, '50 Talones (2500)', '290.00', '2017-09-05 14:41:19', '2017-09-06 06:28:57'),
(1051, 188, '100 Talones (5000)', '360.00', '2017-09-05 14:49:53', '2017-09-06 06:24:24'),
(1052, 189, '1 Talón (50)', '36.00', '2017-09-05 15:15:07', '2017-09-06 15:14:21'),
(1053, 189, '2 Talones (100)', '49.00', '2017-09-05 15:15:37', '2017-09-06 15:22:04'),
(1054, 189, '3 Talones (150) ', '56.00', '2017-09-05 15:16:03', '2017-09-06 15:22:43'),
(1055, 189, '4 Talones (200)', '102.00', '2017-09-05 15:16:44', '2017-09-06 15:28:03'),
(1056, 189, '5 Talones (250)', '105.00', '2017-09-05 15:17:11', '2017-09-06 15:28:40'),
(1057, 189, '6 Talones (300)', '128.00', '2017-09-05 15:17:46', '2017-09-06 15:29:26'),
(1058, 189, '7 Talones (350)', '131.00', '2017-09-05 15:18:23', '2017-09-06 15:30:03'),
(1059, 189, '8 Talones (400)', '136.00', '2017-09-05 15:18:50', '2017-09-06 15:30:29'),
(1060, 189, '9 Talones (450)', '141.00', '2017-09-05 15:19:21', '2017-09-06 15:30:48'),
(1061, 189, '10 Talones (500)', '149.00', '2017-09-05 15:25:07', '2017-09-06 15:16:13'),
(1062, 189, '11 Talones (550)', '157.00', '2017-09-05 15:25:34', '2017-09-06 15:17:51'),
(1063, 189, '12 Talones (600)', '164.00', '2017-09-05 15:26:03', '2017-09-06 15:18:28'),
(1064, 189, '13 Talones (650)', '172.00', '2017-09-05 15:26:27', '2017-09-06 15:18:51'),
(1065, 189, '14 Talones (700)', '177.00', '2017-09-05 15:26:58', '2017-09-06 15:19:09'),
(1066, 189, '15 Talones (750)', '185.00', '2017-09-05 15:27:32', '2017-09-06 15:20:43'),
(1067, 189, '16 Talones (800)', '210.00', '2017-09-05 15:28:16', '2017-09-06 15:20:21'),
(1068, 189, '17 Talones (850)', '214.00', '2017-09-05 15:28:54', '2017-09-06 15:20:07'),
(1069, 189, '18 Talones (900)', '219.00', '2017-09-05 15:29:41', '2017-09-06 15:21:25'),
(1070, 189, '19 Talones (950)', '221.00', '2017-09-05 15:30:09', '2017-09-06 15:21:42'),
(1071, 189, '20 Talones (1000)', '198.00', '2017-09-05 15:30:41', '2017-09-06 15:22:30'),
(1072, 189, '30 Talones (1500)', '230.00', '2017-09-05 15:31:10', '2017-09-06 15:27:33'),
(1073, 189, '40 Talones (2000)', '280.00', '2017-09-05 15:32:03', '2017-09-06 15:28:20'),
(1074, 189, '50 Talones (2500)', '300.00', '2017-09-05 15:33:28', '2017-09-06 15:28:58'),
(1075, 189, '100 Talones  (5000)', '370.00', '2017-09-05 15:37:28', '2017-09-06 15:16:39'),
(1076, 190, 'Hasta 50 cm', '15.00', '2017-09-06 08:26:06', '2017-09-06 08:26:06'),
(1077, 190, 'Hasta 100 cm', '19.00', '2017-09-06 08:26:27', '2017-09-06 08:26:27'),
(1078, 190, 'Hasta 200 cm', '39.00', '2017-09-06 08:26:45', '2017-09-06 08:26:45'),
(1079, 190, 'Hasta 300 cm', '53.00', '2017-09-06 08:27:02', '2017-09-06 08:27:02'),
(1080, 190, 'Hasta 400 cm', '69.00', '2017-09-06 08:27:16', '2017-09-06 08:27:16'),
(1081, 190, 'Hasta 500 cm', '82.00', '2017-09-06 08:27:36', '2017-09-06 08:27:36'),
(1082, 190, 'Hasta 600 cm', '99.00', '2017-09-06 08:27:53', '2017-09-06 08:27:53'),
(1083, 190, 'Hasta 700 cm', '112.00', '2017-09-06 08:28:09', '2017-09-06 08:28:09'),
(1084, 190, 'Hasta 800 cm', '126.00', '2017-09-06 08:28:27', '2017-09-06 08:28:27'),
(1085, 190, 'Hasta 900 cm', '141.00', '2017-09-06 08:28:43', '2017-09-06 08:28:43'),
(1086, 190, 'Hasta 1000 cm', '154.00', '2017-09-06 08:29:01', '2017-09-06 08:29:01'),
(1087, 191, 'Hasta 50 cm', '19.00', '2017-09-06 08:29:51', '2017-09-06 08:29:51'),
(1088, 191, 'Hasta 100 cm', '26.00', '2017-09-06 08:30:05', '2017-09-06 08:30:05'),
(1089, 191, 'Hasta 200 cm', '48.00', '2017-09-06 08:30:19', '2017-09-06 08:30:19'),
(1090, 191, 'Hasta 300 cm', '67.00', '2017-09-06 08:30:43', '2017-09-06 08:30:43'),
(1091, 191, 'Hasta 400 cm', '87.00', '2017-09-06 08:31:00', '2017-09-06 08:31:00'),
(1092, 191, 'Hasta 500 cm', '111.00', '2017-09-06 08:31:22', '2017-09-06 08:31:22'),
(1093, 191, 'Hasta 600 cm', '144.00', '2017-09-06 08:32:01', '2017-09-06 08:32:01'),
(1094, 191, 'Hasta 700 cm', '149.00', '2017-09-06 08:32:24', '2017-09-06 08:32:24'),
(1095, 191, 'Hasta 800 cm', '167.00', '2017-09-06 08:32:40', '2017-09-06 08:32:40'),
(1096, 191, 'Hasta 900 cm', '181.00', '2017-09-06 08:33:01', '2017-09-06 08:33:01'),
(1097, 191, 'Hasta 1000 cm', '194.00', '2017-09-06 08:33:24', '2017-09-06 08:33:24'),
(1098, 192, 'Hasta 50 cm', '29.00', '2017-09-06 08:33:58', '2017-09-06 08:33:58'),
(1099, 192, 'Hasta 100 cm', '39.00', '2017-09-06 08:34:11', '2017-09-06 08:34:11'),
(1100, 192, 'Hasta 200 cm', '62.00', '2017-09-06 08:34:27', '2017-09-06 08:34:27'),
(1101, 192, 'Hasta 300 cm', '87.00', '2017-09-06 08:34:41', '2017-09-06 08:34:41'),
(1102, 192, 'Hasta 400 cm', '111.00', '2017-09-06 08:34:58', '2017-09-06 08:34:58'),
(1103, 192, 'Hasta 500 cm', '139.00', '2017-09-06 08:35:13', '2017-09-06 08:35:13'),
(1104, 192, 'Hasta 600 cm', '165.00', '2017-09-06 08:35:27', '2017-09-06 08:35:27'),
(1105, 192, 'Hasta 700 cm', '188.00', '2017-09-06 08:35:43', '2017-09-06 08:35:43'),
(1106, 192, 'Hasta 800 cm', '211.00', '2017-09-06 08:37:29', '2017-09-06 08:37:29'),
(1107, 192, 'Hasta 900 cm', '233.00', '2017-09-06 08:37:56', '2017-09-06 08:37:56'),
(1108, 192, 'Hasta 1000 cm', '258.00', '2017-09-06 08:38:23', '2017-09-06 08:38:23'),
(1109, 193, '200', '0.55', '2017-09-06 14:37:18', '2017-09-06 14:37:18'),
(1110, 193, '500', '0.48', '2017-09-06 14:37:33', '2017-09-06 14:37:33'),
(1111, 193, '1000', '0.42', '2017-09-06 14:37:47', '2017-09-06 14:37:47'),
(1112, 194, '1 - 1OO', '1.80', '2017-09-06 14:38:33', '2017-09-06 14:38:33'),
(1113, 194, '100 - 200', '1.55', '2017-09-06 14:38:47', '2017-09-06 14:38:47'),
(1114, 195, '200', '0.68', '2017-09-06 14:39:43', '2017-09-06 14:39:43'),
(1115, 195, '500', '0.58', '2017-09-06 14:39:56', '2017-09-06 14:39:56'),
(1116, 195, '1000', '0.55', '2017-09-06 14:40:09', '2017-09-06 14:40:09'),
(1117, 196, '1 - 100', '1.55', '2017-09-06 14:40:58', '2017-09-06 14:40:58'),
(1118, 196, '100 - 200', '1.45', '2017-09-06 14:41:11', '2017-09-06 14:41:11'),
(1119, 197, '1 Talón (50)', '40.00', '2017-09-06 15:33:28', '2017-09-06 15:33:28'),
(1120, 197, '2 Talones (100)', '53.00', '2017-09-06 15:34:09', '2017-09-06 15:34:09'),
(1121, 197, '3 Talones (150)', '60.00', '2017-09-07 06:18:04', '2017-09-07 06:18:04'),
(1122, 197, '4 Talones (200)', '106.00', '2017-09-07 06:18:35', '2017-09-07 06:18:35'),
(1123, 197, '5 Talones (250)', '109.00', '2017-09-07 06:19:17', '2017-09-07 06:19:17'),
(1124, 197, '6 Talones (300)', '135.00', '2017-09-07 06:20:41', '2017-09-07 06:20:41'),
(1125, 197, '7 Talones (350)', '133.00', '2017-09-07 06:21:11', '2017-09-07 06:21:11'),
(1126, 197, '8 Talones (400)', '138.00', '2017-09-07 06:22:14', '2017-09-07 06:22:14'),
(1127, 197, '9 Talones (450)', '148.00', '2017-09-07 06:22:58', '2017-09-07 06:25:05'),
(1128, 197, '10 (Talones 500)', '151.00', '2017-09-07 06:23:29', '2017-09-07 06:23:29'),
(1129, 197, '11 Talones (550)', '164.00', '2017-09-07 06:24:13', '2017-09-07 06:24:13'),
(1130, 197, '12 Talones (600)', '171.00', '2017-09-07 06:25:44', '2017-09-07 06:25:44'),
(1131, 197, '13 Talones (650)', '179.00', '2017-09-07 06:26:20', '2017-09-07 06:26:20'),
(1132, 197, '14 Talones (700)', '184.00', '2017-09-07 06:26:53', '2017-09-07 06:26:53'),
(1133, 197, '15 Talones (750)', '195.00', '2017-09-07 06:27:24', '2017-09-07 06:27:24'),
(1134, 197, '16 Talones (800)', '220.00', '2017-09-07 06:28:01', '2017-09-07 06:28:01'),
(1135, 197, '17 Talones (850)', '224.00', '2017-09-07 06:28:29', '2017-09-07 06:28:29'),
(1136, 197, '18 Talones (900)', '229.00', '2017-09-07 06:29:06', '2017-09-07 06:29:06'),
(1137, 197, '19 Talones (950)', '231.00', '2017-09-07 06:29:41', '2017-09-07 06:29:41'),
(1138, 197, '20 Talones (1000)', '208.00', '2017-09-07 06:30:07', '2017-09-07 06:30:07'),
(1139, 197, '30 Talones (1500)', '240.00', '2017-09-07 06:30:32', '2017-09-07 06:30:32'),
(1140, 197, '40 Talones (2000)', '290.00', '2017-09-07 06:31:03', '2017-09-07 06:31:03'),
(1141, 197, '50 Talones (2500)', '310.00', '2017-09-07 06:31:40', '2017-09-07 06:31:40'),
(1142, 197, '100 Talones (5000)', '380.00', '2017-09-07 06:32:16', '2017-09-07 06:32:16'),
(1143, 198, '1 Talon (50)', '45.00', '2017-09-07 06:33:25', '2017-09-07 06:33:25'),
(1144, 198, '2 Talones (100)', '58.00', '2017-09-07 06:34:36', '2017-09-07 06:34:36'),
(1145, 198, '3 Talones (150)', '65.00', '2017-09-07 06:34:59', '2017-09-07 06:34:59'),
(1146, 198, '4 Talones (200)', '111.00', '2017-09-07 06:36:20', '2017-09-07 06:36:20'),
(1147, 198, '5 Talones (250)', '114.00', '2017-09-07 07:02:51', '2017-09-07 07:02:51'),
(1148, 198, '6 Talones (300)', '140.00', '2017-09-07 07:03:17', '2017-09-07 07:03:17'),
(1149, 198, '7 Talones (350)', '143.00', '2017-09-07 07:03:41', '2017-09-07 07:03:41'),
(1150, 198, '8 Talones (400)', '148.00', '2017-09-07 07:05:13', '2017-09-07 07:05:13'),
(1151, 198, '9 Talones (450)', '153.00', '2017-09-07 07:05:39', '2017-09-07 07:05:39'),
(1152, 198, '10 Talones (500)', '161.00', '2017-09-07 07:06:13', '2017-09-07 07:06:13'),
(1153, 198, '12 Talones (600)', '176.00', '2017-09-07 07:06:46', '2017-09-07 07:06:46'),
(1154, 198, '11 Talones (550)', '169.00', '2017-09-07 07:08:08', '2017-09-07 07:08:08'),
(1155, 198, '13 Talones (650)', '184.00', '2017-09-07 07:08:49', '2017-09-07 07:08:49'),
(1156, 198, '14 Talones (700)', '189.00', '2017-09-07 07:09:41', '2017-09-07 07:09:41'),
(1157, 198, '15 Talones (750)', '200.00', '2017-09-07 07:10:41', '2017-09-07 07:10:41'),
(1158, 198, '16 Talones (800)', '225.00', '2017-09-07 07:11:22', '2017-09-07 07:11:22'),
(1159, 198, '17 Talones (850', '229.00', '2017-09-07 07:11:59', '2017-09-07 07:12:35'),
(1160, 198, '18 Talones (900)', '234.00', '2017-09-07 07:13:00', '2017-09-07 07:13:00'),
(1161, 198, '19 Talones (950)', '236.00', '2017-09-07 07:13:51', '2017-09-07 07:13:51'),
(1162, 198, '20 Talones (1000)', '213.00', '2017-09-07 07:14:26', '2017-09-07 07:14:26'),
(1163, 198, '30 Talones (1500)', '245.00', '2017-09-07 07:14:50', '2017-09-07 07:14:50'),
(1164, 198, '40 Talones (2000)', '295.00', '2017-09-07 07:15:17', '2017-09-07 07:15:17'),
(1165, 198, '50 Talones (2500)', '315.00', '2017-09-07 07:15:41', '2017-09-07 07:15:41'),
(1166, 198, '100 Talones (5000)', '385.00', '2017-09-07 07:16:05', '2017-09-07 07:16:05'),
(1167, 148, '4', '25.00', '2017-09-11 06:27:36', '2017-09-11 06:27:36'),
(1168, 148, '5', '23.00', '2017-09-11 06:27:52', '2017-09-11 06:27:52'),
(1169, 149, '2', '17.00', '2017-09-11 06:32:47', '2017-09-11 06:32:47'),
(1170, 149, '4', '27.00', '2017-09-11 06:33:01', '2017-09-11 06:33:01'),
(1171, 149, '5', '33.00', '2017-09-11 06:33:22', '2017-09-11 06:33:22'),
(1172, 150, '3', '23.00', '2017-09-11 06:35:59', '2017-09-11 06:35:59'),
(1174, 150, '5', '38.00', '2017-09-11 06:37:52', '2017-09-11 06:37:52'),
(1175, 150, '6', '45.00', '2017-09-11 06:38:25', '2017-09-11 06:38:25'),
(1176, 151, '6', '138.00', '2017-09-11 06:39:31', '2017-09-11 06:39:31'),
(1177, 148, '2', '14.00', '2017-09-12 15:09:43', '2017-09-12 15:09:43'),
(1178, 203, '1', '59.90', '2017-10-28 17:32:02', '2017-10-28 17:32:02'),
(1179, 204, '1', '53.90', '2017-11-14 17:21:52', '2017-11-14 17:21:52'),
(1180, 205, '1', '71.90', '2017-11-14 17:22:32', '2017-11-14 17:22:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idCategoria` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `footer_image` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'pie de foto',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_offer` tinyint(1) NOT NULL DEFAULT '0',
  `product_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_by_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `idCategoria`, `name`, `cover`, `image`, `footer_image`, `description`, `is_offer`, `product_is_active`, `deleted_by_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tarjetas de visita simples', 'tj_simple.jpg', 'tarjetas_de_visita_simples.jpg', '', 'aasdada da da asd adad', 0, 1, NULL, NULL, '2017-01-13 15:41:50', '2017-01-13 15:41:50'),
(2, 1, 'T. Visita cantos redondos', 'tarjeta_canto_redondo.jpg', 'a18c350b8471c24cc3f01f369ad0a3ba.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:22', '2017-08-24 13:39:12'),
(3, 1, 'Tarjetas de visita dobles', 'tj_doblada.jpg', 'f22bbfe0bfe2971c23386965fad3553d.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:22', '2017-08-24 12:14:40'),
(4, 1, 'Tarjetas plásticas / PVC', 'tj_plastico.jpg', '76ad2d4d0b1e956ce6c127b36afd9440.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:22', '2017-08-24 12:15:13'),
(5, 2, 'Flyers', 'f177b522b1cd87ea2f7db426310c1da2.jpeg', 'FQoO5nlkox5kVXHVvcQGelKznFxqroqiQfFNbwMJ.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:22', '2017-11-18 16:44:08'),
(6, 2, 'Folletos Doblados', '7275f78ded0c1b353918d3c847572572.jpeg', 'c34be7d804a1423ab866552bf545c18f.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:22', '2017-08-24 12:08:09'),
(7, 2, 'Flyers papel de colores', 'flyers_colores.jpg', 'df395c98cc752c8ecfae409ce1ddca83.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:22', '2017-08-24 10:23:30'),
(8, 3, 'Carteles pequeño formato', '4872741ffdf099035026214639205750.jpeg', '0846ec2fc1ac2e536cee4771b7b65f67.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:22', '2017-08-24 12:16:37'),
(9, 3, 'Carteles gran formato', '534bba6b3e27ea7adf0b493baa613c9d.jpeg', '720b391ff44cc6836e6a0d9dafeb07e3.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:22', '2017-08-24 12:13:24'),
(10, 5, 'Expositor Lona', 'exps_lonas.jpg', '7943158c2fd2b4c021c90e44e56c3b2c.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:22', '2017-08-24 12:24:11'),
(11, 6, 'Carpetas normales', 'carpeta_normal.jpg', '5aa434254c476a4b8e2919583bf68168.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-08-24 13:19:37'),
(12, 6, 'Carpetas con solapa', 'carpeta_doblada.jpg', '5aa434254c476a4b8e2919583bf68168.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-08-24 13:20:23'),
(13, 7, 'Talonario Autcopiativo A4 Duplicado', 'i5iUSmUscuioMDlgXhda8ri1bJscLvylN5PZQ7PI.jpeg', 'b64111716842ae4c47d22b6d20c3538e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 12:56:36'),
(14, 7, 'Talonario Autcopiativo A4 Triplicado', 'EYt69OyofSnamuZHi3ltyJNfQwhC6TxewIuMbZak.jpeg', 'b64111716842ae4c47d22b6d20c3538e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 12:57:00'),
(15, 7, 'Talonario Autcopiativo A5 Duplicado', 'mXge12ijMN4MyjuchZhnYr2ldrw5Xp0qxuGDyWPu.jpeg', 'b64111716842ae4c47d22b6d20c3538e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 12:57:16'),
(16, 7, 'Talonario Autcopiativo A5 Triplicado', 'i8KsmiiOwGbNZmRvgOytOmW07otXYgKD4isKdnB6.jpeg', 'b64111716842ae4c47d22b6d20c3538e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 12:57:26'),
(17, 7, 'Talonario Autcopiativo A6 Duplicado', 'DRyDfOpDZiZmLkuw37Q3WptTRGyYE4UoKDL9SYbB.jpeg', 'b64111716842ae4c47d22b6d20c3538e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 12:57:38'),
(18, 7, 'Talonario Autcopiativo A6 Triplicado', 'gKds57JYx8j38foim4yigOjarCffTKrjewrV7cak.jpeg', 'b64111716842ae4c47d22b6d20c3538e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 12:57:56'),
(19, 7, 'Talonario Autcopiativo Americano Duplicado', '408mNSLckvRlb8ElSyTVMC3iJzNMErvJqjCa3x5I.jpeg', 'b64111716842ae4c47d22b6d20c3538e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 12:58:09'),
(20, 7, 'Talonario Autcopiativo A4 Triplicado', '77OHU5AGaF1jshQ64PWQtJgEmal59xKq7YLjvWE8.jpeg', 'b64111716842ae4c47d22b6d20c3538e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 12:58:22'),
(21, 8, 'Libros / Revistas / Catálogos', '53ef1dbf282b64d0a50dc8a95e34b390.png', '4a6cd05beef6224c76ab85e1e2c4c2ac.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-08-29 07:45:00'),
(22, 9, 'Entradas', 'entradas.jpg', 'f42eaa145ca593ccac852cc24a1771d7.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-08-24 12:25:56'),
(23, 10, 'Calendarios De Pared', 'calend_pared.jpg', '6ca23472a7e0d092d631561ab1206c88.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-09-03 15:20:11'),
(24, 11, 'Libretas Personalizadas', 'rIt4NUWZBN1jrtK4Cjdg9gCOiixCNzvkH0PDrkyX.jpeg', '17d0a2affde294a4d1ce17727bdaec75.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-12-04 19:07:50'),
(25, 12, 'Vinilo adhesivo formas personalizadas entrega en rollo', '3c32e78568e8d23c5a58cf25f8b13dae.jpeg', '15c60ce7306f9cb0cc4ea0a73fd94dc3.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-08-24 13:37:37'),
(26, 12, 'Papel adhesivo formas rectangulares entrega individual', '76e2ec9d0c2cc91e890496db39cd7aa7.jpeg', 'a21c508e45827c3d014b6f3042bd16c9.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-08-24 13:39:45'),
(27, 13, 'Vinilo adhesivo económico impreso', 'lXrbOsMFQQfBP8rhJeUcTvx3Vwqi3mpVPINUHfdg.jpeg', 'd487969eea3b1f86d59dfd2be951bec7.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 13:02:07'),
(28, 13, 'Vinilo adhesivo alta calidad impreso', 'AuFIITv84voG0GBvbyyK1Q5kMLqEaNhjADJO3zSh.jpeg', '37bdf5be607f5eeae7e289a67c7044de.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 13:02:15'),
(29, 13, 'Vinilo adhesivo microperforado impreso', 'Er6EUFeD28lIuu1R3GEO8mVqx1Q1HR8N1qCwvEql.jpeg', '4512ee56f377c568982343076b46fe7e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 13:02:24'),
(30, 13, 'Vinilo adhesivo ácido impreso', 'nREw22nAyG6YxjZL4BivtRWpANF5py9GQCxXdFVa.jpeg', '9ad6b4e10296627f50a29900162b017c.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 13:02:40'),
(31, 13, 'Vinilo Decorativo De Corte', 'jS2vfdrCm9lau6k2qEdZ6NGbg2EhM5e6lV6xmVTm.jpeg', '4237217fbe84b91fd8c5037c52234506.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 13:03:10'),
(32, 14, 'Lonas / Pancartas', '9f0fdfaf4f79048870e226b8d136371e.jpeg', '6a3a6d11a8f7898daa5bb91deb09c01c.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-09-03 15:38:31'),
(33, 15, 'Manteles', 'manteles.jpg', 'o6TW4dRDHsuFpO9pDIIhIrx5B0QFio3GnURMUnwH.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 16:57:04'),
(34, 15, 'Cartas', '36d2a04c1cb6878f975c32b998432b9f.jpeg', 'OR4MUQ4nUqgT9xs5qIqRX3na75SdS1yUTaME5QnS.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-12-04 18:57:54'),
(35, 15, 'Mini Totems', 'b26f43bef611817b5bb3830d47d4dbf0.jpeg', 'Iqzy7QHAKzbzdoNSGnk4my9UqXvUK9kUtNJEVoTe.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-11-18 16:58:25'),
(36, 16, 'Fotocuadro en bastidor de madera', 'bbfa18e07aef48fd6bbe58670d48a390.jpeg', '8a0e20cfb5a4322ab41eac8aa334de3a.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-09-03 15:39:13'),
(37, 16, 'Fotocuadro en cartón pluma', 'fotocuadro_carton_pluma.jpg', '4e1d7dda870f122686bef807f2923701.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-09-03 15:40:32'),
(38, 19, 'Placas Metacrilato', 'qXpRxygKILo8g9XwtVQC7LyrhGunOjCFCApQKu6c.jpeg', 'cd19ac5a57eb272e80cc8a88c6c9a167.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-12-04 19:06:05'),
(39, 20, 'Impresión - Fotocopias', 'zmt8PbDBWIrc8qcnCnT75hzYJUVuEhU2XQhfChJO.jpeg', '5cca8e49fb74aec7a40ad03ac776ef08.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-12-04 19:18:26'),
(40, 22, 'Diseño Gráfico', 'd6a87b7355c8756a2aa2b640673c9c7a.jpeg', '61176489582196d8865f80eb3468441e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-09-09 16:55:47'),
(41, 23, 'Letras Corporeas', '3340508867310b6eaf0bb861c0089101.jpeg', 'c4185850e293ad7f9fcf5674d3c247a4.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-09-04 18:22:49'),
(42, 24, 'Sobres Americanos', 'J3GwMuIsfK8iNZGjJDdtM3iTJ3DeckEWYa7NoR1f.jpeg', '04182942db04dc39a914fb441d1befba.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-12-04 19:14:34'),
(43, 25, 'Camisetas Personalizadas', 'camisetas.jpg', 'ayrOYCIki7J632UH4qfqRSGUZR4xhtYaFFI6IGGk.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-12-04 18:53:24'),
(44, 26, 'Rotulos - Letreros', '868c55715d6ab94a82f2d055bb96d0ab.jpeg', 'aa439808e4f584ba3b3511f8c904bb66.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-19 11:45:23', '2017-09-03 15:18:53'),
(45, 21, 'Trofeos', 'trofeos.jpg', 'CbPX9ou1yZHQdjOlxgebvZkhfWE5xuGzXP5Od5GE.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:32:11'),
(46, 21, 'Placas', '8a4ad7f58c95829a36f253047e61bc35.jpeg', 'xkvpNnmzQorquPhiGGIB7s2j35CnSU2gQe2p6iwz.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:35:25'),
(47, 21, 'Copas', 'copas.jpg', 'oVUJDzzoTdjouqYOFxyoChgFDDKSifGC1c4MmzRV.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:48:27'),
(48, 28, 'Encendedor', 'mecheros.jpg', '', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-01-20 15:33:16'),
(49, 28, 'Bolígrafos ', 'boligrafos.jpg', '', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-01-20 15:33:16'),
(50, 28, 'Pen Drive', 'pen_drive.jpg', '', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-01-20 15:33:16'),
(51, 28, 'Llaveros', 'llaveros.jpg', '', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-01-20 15:33:16'),
(52, 28, 'Gorras', 'gorras.jpg', 'k7J84hUmZKbK8FkUt0C2xW0ymkIFnrDSuFC3Q54l.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-12-04 18:53:11'),
(53, 28, 'Bolsas De Tela', 'bolsas.jpg', '', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-01-20 15:33:16'),
(54, 4, 'Tazas Blancas', 'taza_blanca.jpg', '0JlJzMSUhZDq8wEhw24igKPKGyeUubvMHnmGNQgg.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:54:18'),
(55, 4, 'Tazas De Color', 'taza_asa_de_color.jpg', '60fbf5dd911f50c8ab270dcd3c755f79.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-08-24 12:29:34'),
(56, 4, 'Tazas Translucidas', 'b5612ac35def4e27c8b1d943eb536596.jpeg', '60fbf5dd911f50c8ab270dcd3c755f79.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-08-24 12:30:07'),
(57, 4, 'Tazas De Corazón', 'taza_asa_corazon.jpg', 'Mc6AunsxyPvN2kq5Dh7MUcwkpFAkwWgRiV3I8KC5.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-21 16:19:01'),
(58, 4, 'Jarras De Cerveza', '', '', '', '', 0, 0, 2, '2017-09-09 14:25:58', '2017-01-20 15:33:16', '2017-09-09 12:25:58'),
(59, 4, 'Cojines', 'cojines.jpg', 'gLkVOvU0EOMJ3ljkAbKsVMsobDVEosJuu4QKo5WB.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:49:55'),
(60, 4, 'Huchas', 'hucha.jpg', 'wj23iIoguIo7T9NduNb4uf9UyHUF5UdcqNQ50qa3.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:51:27'),
(61, 4, 'Ceniceros ', 'cenicero.jpg', 'iceE7DMdYAzncYoAL4mRde7jy87REuk2B4yevqL9.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:49:16'),
(62, 4, 'Puzzles', 'puzzle.jpg', 'szzqlLviFAq69kceCUx0TFYoA42k6uXwuGWvtZ9e.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:50:43'),
(63, 4, 'Alfombrillas De Ratón', 'alfombrillas_raton.jpg', 'u6jPyhOsdBa6EviA8M5y0yInSgpiKpJZqoeyOGEN.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-12-04 18:52:54'),
(64, 27, 'Camisetas', 'camisetas.jpg', '3zhx18srD01Nj0yqaJt93haRLmq1KAcf79kuEt7g.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 17:00:20'),
(65, 27, 'Polos', 'polos.jpg', 'g7rYt1HsGToCc2uALUAje3IUghxhJnxeCKnpl58Q.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:59:14'),
(66, 27, 'Sudaderas', 'sudaderas.jpg', 'ngnNvYok5kI6cJoiLGxaFVZJkgxQ8iexPxaKXG8X.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:59:44'),
(67, 27, 'Ropa Laboral', 'ropa_laboral.jpg', 'VKrgiZAHZZhExM1WOJciy1K5gHBxQta6XIZonocI.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 17:01:16'),
(68, 27, 'Ropa Deportiva', 'equi_deportiva.jpg', '', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-01-20 15:33:16'),
(69, 27, 'Shoftshell', 'soft_shell.jpg', '', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-01-20 15:33:16'),
(70, 27, 'Forro Polar', 'a605f25dd29e9a1bef5895bff41f4afc.jpeg', '', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-09-04 19:55:36'),
(71, 5, 'Roll Up', 'roll_up.jpg', 't3XLS2Mw02SsILsSG1fPUKhwyRp2QaXekOIYCqIn.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:46:14'),
(72, 5, 'Photocall', 'photocoll.jpg', 'Isz34XK3FD6NJ2uAQqrRR51Cm7GUAjb5CynXPkyV.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:52:12'),
(73, 5, 'Expositores De Madera', 'exps_madera.jpg', 'O6VBqxjfD0hgfxGkF38qaHmg4vRTTqKCgo9NAHPx.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:38:26'),
(74, 17, 'Rotulación De Vehículos', 'dYCIKaIbu2czbZjeTOJCWqMNZmTr49ZOlAfY8idU.jpeg', 'cf99953c3d6676bbafc2612b1ee8ea3f.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-12-04 19:09:47'),
(75, 10, 'Calendarios De mesa', 'calend_mesa.jpg', 'esSvGt2GEgiQRupvwGlac8ZgQSKGfru72lHbDdN8.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:16', '2017-11-18 16:39:24'),
(76, 10, 'Calendarios De Bolsillo', 'calend_bolsillo.jpg', 't9GeKSKqBSf9yFm1GwkRBY27gsj1MeqkIoN9OO4m.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:17', '2017-11-18 16:39:45'),
(77, 10, 'Calendarios De Imán', 'calend_iman.jpg', 'pLbGKQD4A0MNLRfGHcaw3cCOWeBE6RYmVQPm8HB3.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:33:17', '2017-11-18 16:40:22'),
(78, 9, 'Papeletas Numeradas', 'rifa_n.jpg', '', '', '', 0, 0, 2, '2017-09-09 15:02:18', '2017-01-20 15:33:17', '2017-09-09 13:02:18'),
(79, 18, 'Murales', 'PjPrzBJQc3iQBzD38hp2MbyylVgdjMmnlFJGWLpo.jpeg', '1bc3ff1195a6798334a37e19fffa0cd0.jpeg', '', '', 0, 1, NULL, NULL, '2017-01-20 15:50:43', '2017-12-04 19:21:43'),
(80, 16, 'Fotocuadro madera rectangular', 'd9024347730c29f3bdffb0e0143493ea.jpeg', '8a0e20cfb5a4322ab41eac8aa334de3a.jpeg', '+', 'Fotocuadro Rectangular\r\n', 0, 1, NULL, NULL, '2017-08-24 14:29:09', '2017-09-04 19:54:06'),
(81, 29, 'Oferta A', 'V8mTewtsQcfwh2Pcjc8H5UvJRNuo5Qh9zOAsuvN2.jpeg', '', '', '', 1, 1, NULL, NULL, '2017-10-28 16:28:30', '2017-11-15 20:40:30'),
(82, 29, 'Oferta B', 'SxjECCHjw3dvkhGZHGxbFqw08KGSatD4kPCHjpfV.jpeg', '', '', '', 1, 1, NULL, NULL, '2017-10-28 21:36:19', '2017-10-28 21:36:19'),
(83, 29, 'Oferta C', 'AgrhKBvOE4wT9TL8Gr19XLDb6lGLSc3BT3VY4JF6.jpeg', '', '', '', 1, 1, NULL, NULL, '2017-10-28 21:36:44', '2017-10-28 21:36:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pagos`
--

CREATE TABLE `tipo_pagos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_pagos`
--

INSERT INTO `tipo_pagos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Transferencia Bancaria', '2017-09-13 08:23:23', '2017-09-13 08:23:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_presupuestos`
--

CREATE TABLE `tipo_presupuestos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_price_products`
--

CREATE TABLE `type_price_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `idProduct` int(10) UNSIGNED NOT NULL,
  `nameTypePrice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `type_price_products`
--

INSERT INTO `type_price_products` (`id`, `idProduct`, `nameTypePrice`, `created_at`, `updated_at`) VALUES
(1, 1, 'Simples - 1 Cara', '2017-04-22 21:56:04', '2017-05-01 06:16:31'),
(2, 1, 'Simples - 2 Caras', '2017-04-22 22:19:39', '2017-04-22 22:19:39'),
(12, 71, '85 X 200 Cm', '2017-05-08 06:29:30', '2017-05-08 06:29:30'),
(13, 71, '100 X 200 Cm', '2017-05-08 06:38:23', '2017-05-08 06:38:23'),
(14, 71, '150 X 200 Cm', '2017-05-08 06:38:44', '2017-05-08 06:38:44'),
(15, 54, 'Blancas', '2017-05-08 07:00:48', '2017-05-08 07:00:48'),
(16, 11, ' 1 cara - Carpetas Normales ', '2017-05-08 07:17:22', '2017-05-15 14:19:31'),
(35, 1, 'Laminado 1 cara', '2017-05-15 09:21:09', '2017-05-15 09:21:09'),
(36, 1, 'Laminado 2 caras', '2017-05-15 09:24:10', '2017-05-15 09:24:10'),
(43, 8, 'A4 ( 21 X 29,7cm)', '2017-05-15 13:53:46', '2017-05-15 13:53:46'),
(44, 8, 'A3 PLUS ( 32 X 45cm)', '2017-05-15 14:03:04', '2017-05-15 14:03:04'),
(45, 12, '1 Cara', '2017-05-15 14:05:20', '2017-05-15 14:05:20'),
(46, 12, '2 caras', '2017-05-15 14:08:11', '2017-05-15 14:08:11'),
(47, 12, '1 cara - Plastificado', '2017-05-15 14:10:04', '2017-05-15 14:10:04'),
(48, 12, '2 Caras - Plastificado', '2017-05-15 14:13:36', '2017-05-15 14:13:36'),
(49, 11, '2 caras - Carpetas Normales', '2017-05-15 14:21:52', '2017-05-15 14:21:52'),
(50, 11, '1 Cara Plastificada - Carpetas Normales', '2017-05-15 14:28:17', '2017-05-15 14:37:57'),
(51, 11, '2 Caras Plastificado - Carpetas Normales', '2017-05-15 14:33:22', '2017-05-15 14:37:48'),
(52, 34, 'A5 ( 14,8 x 21cm)', '2017-05-15 14:44:16', '2017-05-15 14:44:16'),
(53, 34, 'A4 ( 21 X 29,7cm)', '2017-05-15 14:53:32', '2017-05-15 14:53:32'),
(54, 34, 'A3 ( 29,7 X 42cm)', '2017-05-15 14:55:02', '2017-05-15 14:55:02'),
(55, 63, 'Alfombrilla Ratón', '2017-05-15 14:58:33', '2017-05-15 14:58:33'),
(80, 33, 'Impresión a COLOR', '2017-06-01 09:10:48', '2017-06-01 09:10:48'),
(81, 33, 'Impresión en B/N', '2017-06-01 09:14:37', '2017-06-01 09:14:37'),
(82, 75, 'CALENDARIOS MESA', '2017-06-01 09:22:33', '2017-06-01 09:22:33'),
(83, 3, 'Dobles - 2 caras', '2017-06-01 13:35:00', '2017-06-01 13:35:00'),
(84, 3, 'Laminado exterior', '2017-06-01 13:36:18', '2017-06-01 13:36:18'),
(85, 3, 'Laminados - 2 caras', '2017-06-01 13:37:43', '2017-06-01 13:37:43'),
(91, 19, 'DUPLICADO NEGRO', '2017-06-01 14:06:25', '2017-06-01 14:06:25'),
(92, 19, 'DUPLICADO COLOR', '2017-06-01 14:10:00', '2017-06-01 14:10:00'),
(93, 25, '3 X 3 cm.', '2017-06-01 14:23:22', '2017-06-01 14:23:22'),
(94, 25, '5 x 5 cm.', '2017-06-01 14:26:11', '2017-06-01 14:26:11'),
(95, 25, '5 x 15 cm.', '2017-06-01 14:34:19', '2017-06-01 14:34:19'),
(96, 25, '10 x 10 cm.', '2017-06-01 14:40:40', '2017-06-01 14:40:58'),
(97, 25, '15 x 15 cm.', '2017-06-01 14:45:38', '2017-06-01 14:45:38'),
(98, 7, 'A6 ( 14,8 x 10,5 cm) IMPRESIÓN 1 CARA', '2017-06-02 06:19:07', '2017-06-02 06:19:56'),
(99, 7, 'A5 ( 21 x 14,8 cm) IMPRESIÓN 1 CARA', '2017-06-02 06:22:28', '2017-06-02 06:22:28'),
(100, 7, 'Americano ( 10 x 21 cm) IMPRESIÓN 1 CARA', '2017-06-02 06:25:09', '2017-06-02 06:25:09'),
(101, 7, 'A4 (29,7 x 21 cm) IMPRESIÓN 1 CARA', '2017-06-02 06:28:15', '2017-06-02 06:28:15'),
(102, 7, 'A6 ( 14,8 x 10,5 cm) IMPRESIÓN 2 CARAS', '2017-06-02 06:31:42', '2017-06-02 06:31:42'),
(104, 7, 'A5 (21 x 14,8 cm) IMPRESIÓN 2 CARAS', '2017-06-02 07:04:52', '2017-06-02 07:04:52'),
(105, 7, 'Americano ( 10 x 21 cm) IMPRESIÓN 2 CARAS', '2017-06-02 07:08:42', '2017-06-02 07:08:42'),
(106, 7, 'A4 (29,7 x 21) IMPRESIÓN 2 CARAS', '2017-06-02 07:12:40', '2017-09-05 07:44:35'),
(107, 2, 'Cantos Redondos 1 Cara.', '2017-06-02 13:41:24', '2017-06-02 13:41:24'),
(108, 2, 'Cantos Redondos 2 Caras.', '2017-06-02 13:43:09', '2017-06-02 13:43:09'),
(109, 2, 'Laminado 1 Cara.', '2017-06-02 13:44:32', '2017-06-02 13:44:32'),
(110, 2, 'Laminado 2 Caras.', '2017-06-02 13:46:06', '2017-06-02 13:46:06'),
(112, 30, 'Medida Ancho Hasta 50 cm', '2017-08-23 16:02:49', '2017-08-24 07:19:02'),
(114, 30, 'Medida Ancho Hasta 100 cm', '2017-08-24 07:09:54', '2017-08-24 07:09:54'),
(115, 30, 'Medida Ancho Hasta 120 cm', '2017-08-24 07:21:54', '2017-08-24 07:21:54'),
(117, 10, '85 x 200 cm', '2017-08-24 13:32:57', '2017-08-24 13:32:57'),
(118, 10, '100 x 200 cm', '2017-08-24 13:35:27', '2017-08-24 13:35:27'),
(119, 10, '150 x 200 cm', '2017-08-24 13:39:10', '2017-08-24 13:39:10'),
(120, 32, ' Ancho entre 1-50 cm', '2017-08-24 13:43:20', '2017-08-24 14:15:53'),
(121, 32, 'Ancho entre 51-100 cm', '2017-08-24 13:46:46', '2017-08-24 14:16:00'),
(122, 32, ' Ancho entre 101 - 155 cm.', '2017-08-24 13:49:04', '2017-08-24 14:16:08'),
(123, 27, 'Ancho hasta 50 cm', '2017-08-24 14:19:48', '2017-08-24 14:19:48'),
(124, 36, 'CUADRADO', '2017-08-24 14:21:51', '2017-08-24 14:21:51'),
(126, 27, 'Ancho hasta 100 cm', '2017-08-24 14:24:18', '2017-08-24 14:24:18'),
(127, 27, 'Ancho hasta 130 cm', '2017-08-24 14:30:42', '2017-08-24 14:30:42'),
(128, 56, 'Translucidas', '2017-08-25 08:22:28', '2017-08-25 08:22:28'),
(129, 57, 'Forma Corazón', '2017-08-25 08:31:54', '2017-08-25 08:31:54'),
(130, 55, 'De Color', '2017-08-25 08:41:45', '2017-08-25 08:41:45'),
(131, 59, 'Cojin', '2017-08-25 08:49:42', '2017-08-25 08:49:42'),
(132, 38, '5 mm Grosor', '2017-08-25 13:28:58', '2017-08-25 13:28:58'),
(133, 38, '8 mm Grosor', '2017-08-25 13:32:16', '2017-08-25 13:32:16'),
(134, 26, '8,5 x 5,5 cm', '2017-08-25 13:36:09', '2017-08-25 13:36:09'),
(135, 26, 'A6 (14,8 X 10,5 cm)', '2017-08-25 13:38:06', '2017-08-25 13:42:41'),
(136, 26, 'Americano (10 x 21 cm)', '2017-08-25 13:40:15', '2017-08-25 13:42:33'),
(137, 26, 'A5 (21 X 14,8 cm)', '2017-08-25 13:42:22', '2017-08-25 13:43:00'),
(138, 80, 'Rectangular', '2017-08-25 13:49:55', '2017-08-25 13:49:55'),
(139, 42, 'Sin ventana', '2017-08-25 13:58:02', '2017-08-25 13:58:02'),
(140, 42, 'Con ventana', '2017-08-25 14:00:13', '2017-08-25 14:00:13'),
(141, 5, 'A-6', '2017-08-28 14:27:53', '2017-08-28 14:27:53'),
(142, 5, '10 X 21 cm', '2017-08-28 14:33:04', '2017-08-28 14:33:04'),
(143, 5, 'A-5', '2017-08-28 14:35:39', '2017-08-28 14:35:39'),
(144, 5, 'A-4', '2017-08-28 14:39:03', '2017-08-28 14:39:03'),
(145, 8, 'SRA3 32 X 45 cm', '2017-08-28 14:52:07', '2017-08-28 14:52:30'),
(146, 8, '50 x 70 cm', '2017-08-28 14:55:41', '2017-08-28 14:55:41'),
(148, 9, 'A-2 42 X 59,4 cm', '2017-08-29 06:35:05', '2017-08-29 06:42:10'),
(149, 9, '50 x 70 cm ', '2017-08-29 06:36:04', '2017-08-29 07:42:14'),
(150, 9, 'A-1 59,4 x 84 cm', '2017-08-29 06:36:58', '2017-08-29 06:43:18'),
(151, 9, 'MUPPY 150 x 120 cm', '2017-08-29 06:38:40', '2017-08-29 06:43:32'),
(152, 16, 'TRIPLICADO NEGRO', '2017-08-29 15:36:06', '2017-08-29 15:36:06'),
(153, 16, 'TRIPLICADO COLOR', '2017-08-29 15:40:56', '2017-08-29 15:40:56'),
(154, 15, 'DUPLICADO NEGRO', '2017-08-31 07:28:32', '2017-08-31 07:28:32'),
(155, 15, 'DUPLICADO COLOR', '2017-08-31 07:52:08', '2017-08-31 07:52:08'),
(156, 17, 'DUPLICADO NEGRO', '2017-08-31 08:06:27', '2017-08-31 08:06:27'),
(157, 17, 'DUPLICADO COLOR', '2017-08-31 08:11:43', '2017-08-31 08:11:43'),
(158, 20, 'TRIPLICADO NEGRO', '2017-08-31 08:18:13', '2017-08-31 08:18:13'),
(159, 20, 'TRIPLICADO COLOR', '2017-08-31 08:22:31', '2017-08-31 08:22:31'),
(160, 13, 'DUPLICADO NEGRO', '2017-08-31 14:06:27', '2017-08-31 14:11:29'),
(161, 13, 'DUPLICADO COLOR', '2017-08-31 14:11:17', '2017-08-31 14:11:17'),
(162, 18, 'TRIPLICADO NEGRO', '2017-08-31 14:41:10', '2017-08-31 14:41:10'),
(163, 18, 'TRIPLICADO COLOR', '2017-08-31 14:44:13', '2017-08-31 14:44:13'),
(164, 14, 'TRIPLICADO NEGRO', '2017-09-01 15:51:43', '2017-09-01 15:51:43'),
(165, 14, 'TRIPLICADO COLOR', '2017-09-01 15:57:24', '2017-09-01 15:57:24'),
(167, 6, 'DIPTICO (A4 CERRADO)', '2017-09-04 15:01:32', '2017-09-04 15:01:32'),
(168, 6, 'TRPTICO (A4 CERRADO)', '2017-09-04 15:06:47', '2017-09-04 15:06:47'),
(169, 6, 'DIPTICO (A3 CERRADO)', '2017-09-04 15:22:32', '2017-09-04 15:22:32'),
(170, 6, 'TRIPTICO (A3 CERRADO)', '2017-09-04 15:25:28', '2017-09-04 15:25:28'),
(171, 60, 'Huchas', '2017-09-04 16:08:26', '2017-09-04 16:08:26'),
(172, 61, 'CENICEROS', '2017-09-05 06:32:40', '2017-09-05 06:32:40'),
(173, 62, 'PUZZLES', '2017-09-05 06:41:34', '2017-09-05 06:41:34'),
(174, 28, 'Medida Ancho 50 cm', '2017-09-05 07:09:12', '2017-09-05 07:14:30'),
(175, 28, 'Medida Ancho hasta 100 cm.', '2017-09-05 07:21:41', '2017-09-05 07:21:41'),
(176, 28, 'Medida Ancho hasta 130 cm', '2017-09-05 07:33:52', '2017-09-05 07:33:52'),
(177, 73, 'EXPOSITORES DE MADERA', '2017-09-05 07:45:52', '2017-09-05 07:45:52'),
(185, 37, '1 unidad', '2017-09-05 08:07:53', '2017-09-05 08:07:53'),
(186, 37, '2 unidades', '2017-09-05 08:08:46', '2017-09-05 08:08:46'),
(187, 37, '3 unidades', '2017-09-05 08:09:43', '2017-09-05 08:09:43'),
(188, 22, '1 Cara (15 x 5 cm)', '2017-09-05 14:20:42', '2017-09-05 14:20:42'),
(189, 22, '1 Cara (15 x 7 cm)', '2017-09-05 15:13:28', '2017-09-05 15:13:28'),
(190, 29, 'Medida Ancho hasta 50 cm.', '2017-09-06 08:25:51', '2017-09-06 08:25:51'),
(191, 29, 'Medida Ancho hasta 100 cm', '2017-09-06 08:29:23', '2017-09-06 08:29:23'),
(192, 29, 'Medida Ancho hasta 130 cm', '2017-09-06 08:33:42', '2017-09-06 08:33:42'),
(193, 49, 'BOLÍGRAFOS', '2017-09-06 14:36:38', '2017-09-06 14:36:38'),
(194, 52, 'GORRAS', '2017-09-06 14:38:09', '2017-09-06 14:38:09'),
(195, 48, 'ENCEDEDORES', '2017-09-06 14:39:28', '2017-09-06 14:39:28'),
(196, 53, 'BOLSAS DE TELA', '2017-09-06 14:40:37', '2017-09-06 14:40:37'),
(197, 22, '1 Cara (21 x 7 cm)', '2017-09-06 15:32:10', '2017-09-07 06:33:02'),
(198, 22, '1 Cara (21 x 10 cm)', '2017-09-07 06:32:50', '2017-09-07 06:32:50'),
(203, 81, 'Precio', '2017-10-28 17:31:15', '2017-10-28 17:32:27'),
(204, 83, 'Precio', '2017-11-14 17:21:17', '2017-11-14 17:21:17'),
(205, 82, 'Precio', '2017-11-14 17:22:11', '2017-11-14 17:22:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_last_login` timestamp NULL DEFAULT NULL,
  `user_current_login` timestamp NULL DEFAULT NULL,
  `user_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `user_last_login`, `user_current_login`, `user_is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Antonio', 'nonoillora@gmail.com', '$2y$10$yxZmT6gga9hl/Zb1kmPS3OEm7lbWohM2PiOLISQ6An27WFZdLui6W', NULL, NULL, NULL, 1, NULL, '2017-04-22 18:15:47', '2017-04-22 18:15:47'),
(2, 'Angel', 'angel@printcolorillora.com', '$2y$10$tfRx7XWzugvzlrOlt9pb1OA9WvXcvQJWPZ7NXa27K301CYmu6hGCO', 'V3rAdddJzZW1V8ywxsgMZ2MOydzVlKbDUI0PPdgwg7MhZQEz2MEfNpuwOaBr', '2018-01-03 14:31:33', '2018-01-23 11:05:41', 1, NULL, '2017-04-27 11:46:04', '2017-09-04 16:05:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_deleted_by_user_id_foreign` (`deleted_by_user_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `company_shippings`
--
ALTER TABLE `company_shippings`
  ADD PRIMARY KEY (`idCompany`);

--
-- Indices de la tabla `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`idConfig`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cron_logs`
--
ALTER TABLE `cron_logs`
  ADD PRIMARY KEY (`idLog`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `facturas_idpedido_foreign` (`idPedido`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indices de la tabla `linea_pedidos`
--
ALTER TABLE `linea_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linea_pedidos_idproduct_foreign` (`idProduct`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `pedidos_idcliente_foreign` (`idCliente`),
  ADD KEY `pedidos_idtipopago_foreign` (`idTipoPago`);

--
-- Indices de la tabla `presupuestos`
--
ALTER TABLE `presupuestos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presupuestos_idproducto_foreign` (`idProducto`),
  ADD KEY `presupuestos_deleted_by_user_id_foreign` (`deleted_by_user_id`);

--
-- Indices de la tabla `price_products`
--
ALTER TABLE `price_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_products_idtypepriceproduct_foreign` (`idTypePriceProduct`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_deleted_by_user_id_foreign` (`deleted_by_user_id`),
  ADD KEY `productos_idcategoria_foreign` (`idCategoria`);

--
-- Indices de la tabla `tipo_pagos`
--
ALTER TABLE `tipo_pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_presupuestos`
--
ALTER TABLE `tipo_presupuestos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_price_products`
--
ALTER TABLE `type_price_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_price_products_idproduct_foreign` (`idProduct`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `company_shippings`
--
ALTER TABLE `company_shippings`
  MODIFY `idCompany` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `configs`
--
ALTER TABLE `configs`
  MODIFY `idConfig` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `cron_logs`
--
ALTER TABLE `cron_logs`
  MODIFY `idLog` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `idFactura` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `linea_pedidos`
--
ALTER TABLE `linea_pedidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idPedido` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT de la tabla `presupuestos`
--
ALTER TABLE `presupuestos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `price_products`
--
ALTER TABLE `price_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1181;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT de la tabla `tipo_pagos`
--
ALTER TABLE `tipo_pagos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipo_presupuestos`
--
ALTER TABLE `tipo_presupuestos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `type_price_products`
--
ALTER TABLE `type_price_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_deleted_by_user_id_foreign` FOREIGN KEY (`deleted_by_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_idpedido_foreign` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`idPedido`);

--
-- Filtros para la tabla `linea_pedidos`
--
ALTER TABLE `linea_pedidos`
  ADD CONSTRAINT `linea_pedidos_idproduct_foreign` FOREIGN KEY (`idProduct`) REFERENCES `productos` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_idcliente_foreign` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `pedidos_idtipopago_foreign` FOREIGN KEY (`idTipoPago`) REFERENCES `tipo_pagos` (`id`);

--
-- Filtros para la tabla `presupuestos`
--
ALTER TABLE `presupuestos`
  ADD CONSTRAINT `presupuestos_deleted_by_user_id_foreign` FOREIGN KEY (`deleted_by_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `presupuestos_idproducto_foreign` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `price_products`
--
ALTER TABLE `price_products`
  ADD CONSTRAINT `price_products_idtypepriceproduct_foreign` FOREIGN KEY (`idTypePriceProduct`) REFERENCES `type_price_products` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_deleted_by_user_id_foreign` FOREIGN KEY (`deleted_by_user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY (`idCategoria`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `type_price_products`
--
ALTER TABLE `type_price_products`
  ADD CONSTRAINT `type_price_products_idproduct_foreign` FOREIGN KEY (`idProduct`) REFERENCES `productos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
