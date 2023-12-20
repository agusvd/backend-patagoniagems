-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-12-2023 a las 15:52:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `patagoniagems`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `fechaPublicacion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `titulo`, `descripcion`, `img`, `fechaPublicacion`) VALUES
(5, 'La importancia de las pulseras con ojo turco', '<p>Las pulseras con ojo turco, también conocidas como \"nazar boncuk\" o \"ojo de la suerte\", son elementos de joyería que tienen su origen en la cultura turca y griega. Estas pulseras suelen estar adornadas con un amuleto en forma de ojo, que se cree tiene propiedades protectoras contra el mal de ojo y las energías negativas. Aquí hay algunas razones que explican la importancia de las pulseras con ojo turco:</p><ol><li><strong>Protección contra el mal de ojo:</strong> En muchas culturas, se cree en la existencia del mal de ojo, que se considera una mirada malintencionada o envidiosa que puede causar daño o desgracias a la persona que es el objetivo. El ojo turco se utiliza como talismán para proteger contra estas energías negativas.</li><li><strong>Amuleto de buena suerte:</strong> Además de proteger contra el mal de ojo, se cree que el ojo turco atrae la buena suerte y la fortuna. Muchas personas llevan estas pulseras como un símbolo de positividad y para atraer energías positivas a sus vidas.</li><li><strong>Tradición cultural:</strong> El ojo turco tiene una larga historia en la cultura turca y en otras culturas de la región. Su uso como amuleto protector se remonta a siglos atrás. Muchas personas llevan estas pulseras como una forma de conectarse con sus raíces culturales y mantener viva una tradición antigua.</li><li><strong>Elemento decorativo:</strong> Además de su significado simbólico y protector, las pulseras con ojo turco a menudo son apreciadas por su atractivo estético. Muchas personas las usan como accesorios de moda y joyería, combinando la tradición cultural con el estilo personal.</li><li><strong>Regalo simbólico:</strong> Las pulseras con ojo turco son a menudo regalos significativos. Se ofrecen como gesto de amistad, amor o deseo de buena suerte. Regalar una pulsera con ojo turco puede expresar la preocupación por el bienestar y la protección de la persona a la que se le da el regalo.</li></ol><p>En resumen, la importancia de las pulseras con ojo turco radica en su simbolismo cultural, su función protectora contra el mal de ojo y su asociación con la buena suerte. Para muchas personas, estas pulseras no solo son joyas hermosas, sino también amuletos que representan tradiciones culturales y creencias espirituales.</p><p><br></p><p><br></p><p><br></p><p><br></p>', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.25.59.png?alt=media&token=5b914b81-3783-4dd9-a10b-40a6c69a13a9', '2023-12-16 10:05:22'),
(6, 'nuevo producto', '<p>nuevo producto de l blog</p>', NULL, '2023-12-16 11:25:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `precio_total` int(11) NOT NULL,
  `cantidad_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `usuario_id`, `producto_id`, `precio_total`, `cantidad_total`) VALUES
(426, 2, 71, 5000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_id`
--

CREATE TABLE `categoria_id` (
  `id` int(11) NOT NULL,
  `categoria` varchar(150) NOT NULL,
  `imagen` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_id`
--

INSERT INTO `categoria_id` (`id`, `categoria`, `imagen`) VALUES
(18, 'Aromaterapia Esotérica', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/WhatsApp%20Image%202023-11-21%20at%2023.52.14.jpeg?alt=media&token=c17c8c7b-1364-431f-8ad9-94f8dad400d6'),
(27, 'Aromaterapia Terapéutica', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/1.jpeg?alt=media&token=01d5bc7d-7359-4146-85ef-64320225d283'),
(28, 'Cosmética Natural Emocional', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/2.jpeg?alt=media&token=ec303be6-cf1d-40f7-aa01-82025bd2e2ee'),
(29, 'Joyas y Amuletos ', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/3.jpeg?alt=media&token=c8234f34-4ff4-49f8-a4fd-78749c9d8119'),
(30, 'Accesorios mágicos', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/4.jpeg?alt=media&token=4ea8b494-7f82-4f20-956f-1c72b4b38d10'),
(31, 'Deco Energía', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/4.jpeg?alt=media&token=4ea8b494-7f82-4f20-956f-1c72b4b38d10'),
(32, 'Inciensos y difusores ', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/4.jpeg?alt=media&token=4ea8b494-7f82-4f20-956f-1c72b4b38d10'),
(33, 'Artículos para Terapéutas', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/4.jpeg?alt=media&token=4ea8b494-7f82-4f20-956f-1c72b4b38d10'),
(34, 'Tableros y rejillas energéticas', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/4.jpeg?alt=media&token=4ea8b494-7f82-4f20-956f-1c72b4b38d10'),
(35, 'Tarot y oráculos ', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/4.jpeg?alt=media&token=4ea8b494-7f82-4f20-956f-1c72b4b38d10'),
(36, 'Muñecos mágicos Espirituales ', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/4.jpeg?alt=media&token=4ea8b494-7f82-4f20-956f-1c72b4b38d10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `collector_id` int(255) DEFAULT NULL,
  `preference_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `collector_id`, `preference_id`, `user_id`, `status`, `transaction_date`) VALUES
(2, NULL, '1561246425-46642b85-4567-45eb-9425-528ffb49fbad', 1, 'pending', '2023-12-15 18:28:06'),
(3, NULL, '1561246425-fb500866-09a9-4417-8d91-c7bc5bbddfb5', 1, 'pending', '2023-12-15 18:33:58'),
(4, NULL, '1561246425-8661e354-5911-4000-873c-26224a322d9f', 1, 'pending', '2023-12-15 18:37:30'),
(5, NULL, '1561246425-ffbde3d4-9090-474d-a39f-6ff87a00f11c', 1, 'pending', '2023-12-15 18:42:57'),
(6, NULL, '1561246425-466c57c0-af29-4d3a-96db-30bb53130e5e', 1, 'pending', '2023-12-15 18:46:25'),
(7, NULL, '1561246425-346d892c-cfc0-4673-8b41-d4c540d4afa9', 1, 'pending', '2023-12-15 18:51:29'),
(8, NULL, '1561246425-29ef9b27-ff14-43fe-9f7b-3209f99f83b2', 1, 'approved', '2023-12-15 19:02:15'),
(9, NULL, '1561246425-5f726942-8a88-4236-a210-bd8c680c9ddc', 1, 'approved', '2023-12-15 19:07:15'),
(10, NULL, '1561246425-1fc23a74-76af-46de-a3d2-ce1a388de148', 1, 'approved', '2023-12-15 19:14:59'),
(11, NULL, '1561246425-da04fabe-9794-4a3e-857c-4d167c4481af', 1, 'approved', '2023-12-15 19:22:47'),
(12, NULL, '1561246425-984bc07d-1dc2-40d3-a6e2-d849c08afc91', 1, 'approved', '2023-12-15 19:49:48'),
(13, NULL, '1561246425-7c161fe1-85be-43a4-aeba-5145f601accb', 1, 'approved', '2023-12-15 19:53:06'),
(14, NULL, '1561246425-9b91e200-4fcc-4b81-9dbe-618710e70eb0', 1, 'approved', '2023-12-15 19:54:34'),
(15, NULL, '1561246425-2bfdb38e-4f1d-454e-8640-c1394ac10a50', 1, 'approved', '2023-12-15 19:57:44'),
(16, NULL, '1561246425-327f9dc4-23c3-4224-8952-ec30decd029a', 1, 'approved', '2023-12-15 19:59:44'),
(17, NULL, '1561246425-87f426f8-42e2-4154-91a5-8918314bb6ef', 1, 'approved', '2023-12-15 20:04:23'),
(18, NULL, '1561246425-7c6679f2-9e6a-4ce7-a27e-b1282ceea58d', 1, 'pending', '2023-12-15 20:13:47'),
(19, NULL, '1561246425-2d5b4afb-2b01-4a5b-9adc-f967474cd344', 1, 'pending', '2023-12-15 20:15:22'),
(20, NULL, '1561246425-1c41a259-9177-4274-9111-4cd50658e8a1', 1, 'pending', '2023-12-15 20:26:59'),
(21, NULL, '1561246425-9dad2fff-ccb8-4caf-98ed-6386124e49df', 1, 'pending', '2023-12-15 20:29:29'),
(22, NULL, '1561246425-742f16f7-0988-47b5-a21c-0565d7915450', 1, 'pending', '2023-12-15 20:38:46'),
(23, NULL, '1561246425-cf71e473-a106-42d8-9451-023ebd9649d8', 1, 'pending', '2023-12-15 20:40:55'),
(24, NULL, '1561246425-e0421ea1-b422-42d5-a6c9-90ded78f3c96', 1, 'pending', '2023-12-15 20:41:31'),
(25, NULL, '1561246425-743ac3ec-69b2-459c-9d6b-7f0169a37ab0', 1, 'pending', '2023-12-15 20:45:09'),
(26, NULL, '1561246425-344da59f-d455-491f-a344-bc24ddc7266e', 1, 'pending', '2023-12-15 21:00:13'),
(27, NULL, '1561246425-ce06208e-fd0f-4810-8eeb-2c831479ef2a', 2, 'approved', '2023-12-15 21:06:33'),
(28, NULL, '1561246425-e0507d3b-94b1-4277-b45f-53bcbafa33bf', 2, 'approved', '2023-12-15 21:09:05'),
(29, NULL, '1561246425-388dd52a-370e-49f1-994f-fde4a630b877', 2, 'approved', '2023-12-15 21:11:50'),
(30, NULL, '1561246425-1841859c-91a8-49cc-a0fa-23f0944c3f04', 2, 'pending', '2023-12-15 21:17:45'),
(31, NULL, '1561246425-7c312747-fc87-4d18-8a9b-263db9f725d7', 2, 'pending', '2023-12-15 21:19:11'),
(32, 1561246425, '1561246425-582a7be3-214d-418e-8472-71854a2c069a', 2, 'approved', '2023-12-15 21:30:10'),
(33, 1561246425, '1561246425-8a2f6464-bb50-4f19-bfc1-c56d4a156426', 2, 'approved', '2023-12-15 21:38:07'),
(34, 1561246425, '1561246425-4a1422cc-0423-44b0-a62d-ab71759e591a', 2, 'approved', '2023-12-15 21:42:10'),
(35, NULL, '1561246425-3a97b356-5abb-4500-aa60-cd451c491fc9', 2, 'pending', '2023-12-15 21:45:29'),
(36, 1561246425, '1561246425-b71b8d54-8f20-4622-ae7c-d5d2542459c0', 2, 'approved', '2023-12-15 21:52:52'),
(37, 1561246425, '1561246425-705f335e-b01a-47f1-bed6-5f833661da92', 2, 'approved', '2023-12-15 21:57:02'),
(38, 1561246425, '1561246425-0da1de83-c7ef-4abe-a9e6-c2825a2a1a70', 2, 'approved', '2023-12-16 14:21:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_description`, `price`, `quantity`) VALUES
(1, 2, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(2, 3, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(3, 4, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(4, 5, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(5, 6, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(6, 7, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(7, 8, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(8, 9, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(9, 10, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(10, 10, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(11, 10, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(12, 10, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(13, 11, 'Nike x StrangeLove Dunk Low SB', 25000, 1),
(14, 11, 'SB Dunk de Nike x Travis Scott', 60000, 1),
(15, 11, 'Nike Vulcanized Off White', 30000, 1),
(16, 12, 'Nike Vulcanized Off White', 30000, 1),
(17, 13, 'Nike Vulcanized Off White', 30000, 1),
(18, 14, 'Nike Vulcanized Off White', 30000, 1),
(19, 15, 'Nike Vulcanized Off White', 30000, 1),
(20, 16, 'Nike Vulcanized Off White', 30000, 1),
(21, 17, 'Nike Vulcanized Off White', 30000, 1),
(22, 18, 'Dunk SB Low Pro QS de Nike x Parra', 80000, 1),
(23, 19, 'Dunk SB Low Pro QS de Nike x Parra', 80000, 1),
(24, 20, ' Dunk Low SP \"\"Canteen\"\" de Nike x Undefeated Dunk Low SP ', 40000, 1),
(25, 21, ' Dunk Low SP \"\"Canteen\"\" de Nike x Undefeated Dunk Low SP ', 40000, 1),
(26, 22, ' Dunk Low SP \"\"Canteen\"\" de Nike x Undefeated Dunk Low SP ', 40000, 1),
(27, 23, ' Dunk Low SP \"\"Canteen\"\" de Nike x Undefeated Dunk Low SP ', 40000, 1),
(28, 24, ' Dunk Low SP \"\"Canteen\"\" de Nike x Undefeated Dunk Low SP ', 40000, 1),
(29, 25, ' Dunk Low SP \"\"Canteen\"\" de Nike x Undefeated Dunk Low SP ', 40000, 1),
(30, 26, ' Dunk Low SP \"\"Canteen\"\" de Nike x Undefeated Dunk Low SP ', 40000, 1),
(31, 27, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(32, 28, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(33, 29, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(34, 30, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(35, 31, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(36, 32, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(37, 33, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(38, 34, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(39, 35, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(40, 36, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(41, 37, 'Dunk High SP de Nike x UNDEFEATED', 30000, 1),
(42, 38, 'Llaveros de Calacas o Calaveras de azúcar del Día de los Muertos.', 5000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `cantidad_gramos` int(11) DEFAULT NULL,
  `cantidad_ml` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `imagen` varchar(1000) NOT NULL,
  `precio` int(11) NOT NULL,
  `es_destacado` enum('si','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria_id`, `cantidad_gramos`, `cantidad_ml`, `stock`, `descripcion`, `imagen`, `precio`, `es_destacado`) VALUES
(69, 'Aceite Aromático Sándalo Puro - Goloka', 28, NULL, NULL, 10, 'El recipiente tiene un contenido de 10 miligramos con un aroma característico y intenso.\n\nLos aceites Goloka están hechos para ser usados en difusores de cerámica, difusores eléctricos, flores secas, piedras, entre otros.\n', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.13.47.png?alt=media&token=9632d54a-ba97-4c03-8795-9d2da4b52e17', 10000, 'no'),
(70, 'Iluminador Mineral Natural', 28, NULL, NULL, 10, 'Un iluminador en barra cremoso que se desliza y se difumina a la perfección para lograr un brillo radiante y natural con una hidratación duradera. Infundido con ingredientes microbrillantes e hidratantes.\n', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.18.55.png?alt=media&token=f01720c8-071d-4fab-b592-6366ee137432', 8000, 'no'),
(71, 'Llaveros de Calacas o Calaveras de azúcar del Día de los Muertos.', 30, NULL, NULL, 5, 'Llaveros de Calacas o Calaveras de azúcar del Día de los Muertos.\n\nHechos a mano. Se han utilizado materiales nuevos y reutilizados para ser más sustentables, dar una nueva vida a un material se le llama \"upcycling\".', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.22.51.png?alt=media&token=b641536f-19b5-4674-b387-fbac017443e5', 5000, 'no'),
(72, 'Jabón Esotérico Ritualizado \"Contra Todo Mal\"', 28, 90, NULL, 6, 'Jabón Aromaterapia Terapéutica con aceites esenciales naturales. Elaboración propia con ingredientes naturales, orgánicos y libre de parabenos. Apto para rostro y cuerpo.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.24.27.png?alt=media&token=ae443b22-42b6-4c2f-a3bb-edb71d8fa125', 6000, 'si'),
(73, 'Pulseras de Protección de San Benito acero inoxidable con 2 caras. Elasticadas con piedras naturales', 30, NULL, NULL, 7, 'Pulsera de Obsidiana negra de 8 mm. con medalla de 12 mm. plateada.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.25.59.png?alt=media&token=5b914b81-3783-4dd9-a10b-40a6c69a13a9', 10900, 'no'),
(74, 'Ungüento para Dolores Articulares y Musculares de Aromaterapia Terapéutica', 28, 25, NULL, 10, 'Con 9 aceites esenciales naturales grado Terapéutico, que al combinarse crean esta maravillosa y poderosa fórmula para tratar tendinitis, desgarros, dolores musculares y articulares.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.27.37.png?alt=media&token=9487fbd4-8eb5-420b-ba63-7116fd4589a3', 5490, 'no'),
(75, 'Tarot Learning', 35, NULL, NULL, 5, 'Tarot Rider Waite de aprendizaje con significado y palabras claves para facilitar la interpretación de las tiradas. También incluye las equivalencias de cada carta con los chakras y signos zodiacales.  78 cartas en inglés de 10,5 x 6,2 cm + Instructivo Básico.\n', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.30.25.png?alt=media&token=bc6eea5f-e867-47e2-ac14-b93c8d3df35f', 16000, 'no'),
(76, 'Velas Aromáticas Esotéricas Ritualizadas en tarro \"Amor Propio\"', 28, 200, NULL, 5, 'El color rosa intenso y el aroma del Geranio y el Ylang Ylang te llevará de beneficios, aumentará tu autoestima, mejorará el ambiente de forma positiva, llenando de amor, sensualidad y optimismo tu hogar.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.32.43.png?alt=media&token=d573cb7f-8f43-4113-9421-753d589a9a2c', 7000, 'no'),
(77, 'Mini Escoba Mágica', 36, NULL, NULL, 20, 'Uno de los mas conocidos es poner detrás de la puerta de entrada una escoba,de esta forma ahuyentara los malos espíritus así como las energías negativas.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.34.47.png?alt=media&token=636d1326-e7e7-44b2-a27f-33cfcf012430', 3990, 'no'),
(78, 'Spray Aurico Arcángel Metatrón', 27, NULL, NULL, 10, 'on este spray se intenciona con todo el poder del Arcángel Metatrón para potenciar la sanación y protección energética en contra de enfermedades, entorno tóxico físico y etérico.\n\nDesde la primera aplicación sentirás como te expandes con la incomparable experiencia aromática.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.36.39.png?alt=media&token=a7c21184-7f68-4063-97a3-ad8378fda8b2', 9990, 'no'),
(79, 'Jabón Aromaterapia ECO MIEL Caléndula-Manzanilla', 28, 80, NULL, 5, 'El jabón Caléndula-Manzanilla, aliviará irritaciones, de gran efecto cicatrizante, suavizante de estrías, antioxidante que otorga mayor elasticidad de la piel.\nIdeal para tratar problemas de la piel. Apto para todo tipo de piel porque humecta sin efecto graso.\nGracias a la combinación de ingredientes naturales de alta calidad te aliviará la fatiga después de un largo día, dando energía en la mañana.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.38.23.png?alt=media&token=d77a9df3-f18d-455b-bb09-8fea3c9d6a21', 3500, 'no'),
(80, 'Crema Sólida Corporal Aromaterapia ROSAS', 28, 20, NULL, 5, 'La fórmula de crema sólida corporal es muy práctica, la puedes llevar contigo y tiene múltiples usos.\nHecha a base de ingredientes concentrados orgánicos naturales, como manteca de cacao, karite, Vitamina E, aceites y ceras vegetales, aceite esencial de Rosas y Geranio para tratar las líneas de expresión y pieles maduras, además de sus propiedades antioxidantes y estimulantes de colágeno, ayuda con la rosácea y las manchas de la piel.\nSuavizan, hidratan, nutren y regeneran aquellas zonas difíciles como codos, pies, rodillas y manos. Puedes usarlas también en tus labios y rostro.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.40.20.png?alt=media&token=e56ea394-1716-41fc-ad35-0acabb9aa098', 4000, 'no'),
(81, 'Spray de Protección Tetragrammaton', 18, NULL, 120, 9, 'Este spray aurico te va a ayudar. Este mágico elixir de obsidiana negra, poderosos aceites esenciales naturales y las Flores de Bach, ha sido elaborado a modo de ritual para trabajar sólo o si deseas más poder, junto a la medalla de protección Tetragrammaton.\n\nExcelente protector contra las energías negativas, contra los malos espíritus, ataques psíquicos, sugestión, trabajos oscuros y magia negra.\nTe muestra el camino de la Luz y sabiduría interior.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.41.46.png?alt=media&token=7d163f5d-1f66-47d2-991b-39148342c176', 9990, 'no'),
(82, 'Mandala Ohm pintado a mano. Brinda armonía y tranquilidad a tu ambiente.', 30, NULL, NULL, 3, 'Dimensiones: 20 cms. de diámetro.\n\"El mandala es una estructura de diseño concentricos que representan la composición repetitiva del universo y la naturaleza.  Representa la unidad, la armonía y lo infinito del universo\".\n\n\"El Ohm significa unidad con lo supremo, combinación de lo físico con lo espiritual. Sirve para armonizar la energía y el espacio de nuestra casa y también ayuda a controlar la ansiedad\".', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.43.20.png?alt=media&token=17899079-80c4-4b62-a5f5-1cc79a91acc2', 7000, 'no'),
(83, 'Collar Cuarzo cristal biterminal con Infinito mediano con cordón de cuero', 29, NULL, NULL, 2, 'Los cuarzos personales que se convierten en aliados cristalinos de autoconocimiento personal, con el tiempo y la práctica interior, terminan siendo en nuestras vidas auténticos tesoros', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.45.11.png?alt=media&token=921052fb-fde5-4d5a-a603-34fab2e87edb', 8000, 'no'),
(84, ' pulsera en acero inoxidable con amuleto ojo turco e Imán', 30, NULL, NULL, 5, 'El Ojo turco también conocido como \"nazar\", es un abalorio con la forma de una gota plana donde se encuentra la figura de un ojo. Este amuleto que se utiliza para protegerse del mal de ojo, de malas energías, atraer la abundancia y la buena fortuna\".', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.47.15.png?alt=media&token=70a6bb39-63c3-470c-94c6-94b2e202e0df', 6000, 'no'),
(85, 'Sal Negra o Sal de Bruja', 27, 35, NULL, 10, 'Esta sal está consagrada en luna llena, lista para usar en tus rituales de protección y abundancia. Puedes utilizarla sola o con velas, aceites, hierbas.\nEn tu altar utilízala para hacer un círculo de protección.\nLa Sal de Bruja repele el mal, bloquea el mal de ojo y para potenciar cualquier trabajo mágico.\nSimplemente tiras un puñado de la sal negra en los lugares en que percibimos el mal, en la entrada, las ventanas, el lugar de trabajo, al lado de la cama.\nLlévala en forma de amuleto en tu cartera como protección.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.50.35.png?alt=media&token=04de0b95-62a4-49da-8f74-ac422f10b148', 4000, 'no'),
(86, 'Aceite Aromático Lavanda Francesa - Goloka', 27, NULL, 10, 10, 'Los aceites Goloka están hechos para ser usados en difusores de cerámica, difusores eléctricos, flores secas, piedras, entre otros.\n\nModo de uso:\n\n• Vierte 2-3 gotas de la fragancia en el difusor, luego echa agua.\n\n• Enciende la vela y coloca el difusor en el lugar que desees.\n\n• Disfruta del aroma que desprende.\n\nAdvertencia: No son aptos para aplicarlos en la piel.\n', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.52.24.png?alt=media&token=dcd203e8-b24b-4573-81c3-27c20ec9a0a3', 2990, 'no'),
(87, 'Llaveros de Corazón Quilt Morado', 30, NULL, NULL, 3, 'Con dijes de pentagrama o Nudo Celta para la protección.\n\nHechos a mano. Se han utilizado materiales nuevos y reutilizados para ser más sustentables, dar una nueva vida a un material se le llama \"upcycling\".\nDimensiones 8 x 8 cms.', 'https://firebasestorage.googleapis.com/v0/b/patagoniagems-5fad5.appspot.com/o/Captura%20de%20pantalla%202023-12-16%20a%20la(s)%2009.54.08.png?alt=media&token=a5a36b97-b0b7-48a6-b97d-ffc3ddc13bce', 5000, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `correo` varchar(500) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `metodo_envio` varchar(50) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `comuna` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `numero_casa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `order_id`, `nombre`, `apellido`, `correo`, `telefono`, `metodo_envio`, `region`, `comuna`, `codigo_postal`, `direccion`, `numero_casa`) VALUES
(1, 2, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '620000', 'manantiales', '0143'),
(2, 3, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '620000', 'mi casa', '0143'),
(3, 4, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '620000', 'otra direccion', '1234'),
(4, 5, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '620000', 'otra pa', '12341234'),
(5, 6, 'agustin', 'villarroel', 'agus@gmail.com', 912345678, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '620000', 'aqui vamos', '2222'),
(6, 7, 'agustin', 'villarroel', 'agus@gmail.com', 922222222, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '620000', 'otra pero si', '11111'),
(7, 8, 'agustin', 'villarroel', 'agus@gmail.com', 912121212, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '620000', 'xdxdxdxdddxdxd', '1234123123123123'),
(8, 9, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'envio', 'Region de Aysén del General Carlos Ibáñez del Campo (XI)', 'Guaitecas', '12313123', 'ni puta idea', '11111'),
(9, 10, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '6200000', 'aiosdkosadkoisd', '123123123'),
(10, 12, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(11, 13, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(12, 14, 'agustin', 'villarroel', 'agus@gmail.com', 922222222, 'envio', 'Región de Atacama (III)', 'Chañaral', '43324234', 'asdasdd', '123'),
(13, 15, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '620000', 'asdasd', '111'),
(14, 16, 'agustin', 'villarroel', 'agus@gmail.com', 912341232, 'retiro', '', '', '', '', ''),
(15, 17, 'agustin', 'villarroel', 'agus@gmail.com', 912345678, 'retiro', '', '', '', '', ''),
(16, 18, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(17, 19, 'agustin', 'villarroel', 'agus@gmail.com', 988228822, 'retiro', '', '', '', '', ''),
(18, 20, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(19, 21, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(20, 22, 'agus', 'villa', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(21, 23, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(22, 24, 'agus', 'villa', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(23, 25, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(24, 26, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(25, 27, 'claudio', 'arias', 'claudio@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(26, 28, 'claudio', 'arias', 'claudio@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(27, 29, 'claudio', 'arias', 'claudio@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(28, 30, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(29, 31, 'agustin', 'villa', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(30, 32, 'agustin', 'villarroel', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(31, 33, 'claudio', 'arias', 'claudio@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(32, 34, 'claudio', 'arias', 'claudio@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(33, 35, 'agustin', 'aaaa', 'agus@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(34, 36, 'agusssss', 'villarroel', 'agusss@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(35, 37, 'aguspa', 'villa', 'aguspa@gmail.com', 912341234, 'retiro', '', '', '', '', ''),
(36, 38, 'agustin', 'villarroel', 'agus2001villa@gmail.com', 912341234, 'envio', 'Región de Magallanes y la Antártica Chilena (XII)', 'Punta Arenas', '620000', 'direccion', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(150) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `contraseña`, `role`) VALUES
(1, 'Agustin', 'Villarroel', 'agus@gmail.com', '$2b$10$.HGssuNG2.iFLQCVoewx6.adML8/yFRpgPBaskftyhq5VbdqQFdgu', 'admin'),
(2, 'Claudio', 'Arias', 'claudio@gmail.com', '$2b$10$l/BQmYG0XwXIq3Wyb/WtH.L90XoFKS9UFoGtkUxfVhW2rO0Fj//Ba', 'user'),
(4, 'Sebastian', 'Godoy', 'seba@gmail.com', '$2b$10$W3VmpvkBwY3BNws58SUWz.RBANA.pdibEcHEjVqy2jtYi63o0K8jW', 'user'),
(37, 'Agustin', 'Asdasdd', 'agus2@gmail.com', '$2b$10$aVDRRjx.Qc5zzugwdBQ3DOeABA2ggGLwiqbkgxFGVjSLHBscEMxjO', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `categoria_id`
--
ALTER TABLE `categoria_id`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT de la tabla `categoria_id`
--
ALTER TABLE `categoria_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_id` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD CONSTRAINT `shipping_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
