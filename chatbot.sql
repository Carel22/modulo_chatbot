-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2023 a las 06:31:09
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
-- Base de datos: `chatbot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(500) NOT NULL,
  `replies` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, '¿Cómo podemos educar a nuestros hijos para que reconozcan y eviten la violencia en las relaciones?', 'Enséñales a tratar a los demás con respeto y amabilidad.\r\nExplícales que la violencia no es una forma adecuada de resolver problemas.'),
(2, '¿Cuáles son los signos de alerta temprana de la violencia psicológica en una relación?', 'Insultos o humillaciones constantes.\r\nControl excesivo sobre la otra persona.\r\nAislamiento de amigos y familiares.'),
(3, '¿Qué recursos existen para apoyar a las víctimas de violencia de género?', 'Líneas de ayuda como el 911 y refugios seguros como la Casa de la Mujer.\r\nAsesoramiento psicológico.Apoyo legal para obtener órdenes de restricción.'),
(4, '¿Cuáles son algunas estrategias efectivas para prevenir la violencia infantil en las escuelas?', 'Programas de educación sobre el respeto y la empatía.\r\nFomentar la denuncia de casos de acoso. Apoyo a las víctimas y sus familias.'),
(5, '¿Qué hacer si sospechas que un niño está siendo víctima de abuso en el hogar?', 'Habla con el niño de manera comprensiva. Informa a las autoridades o a un adulto de confianza.Ayuda al niño a buscar apoyo profesional.'),
(6, '¿A qué se refiere la violencia de género?', 'La violencia de género es cuando alguien es maltratado o herido debido a su género, generalmente las mujeres son víctimas.'),
(7, '¿Qué secuelas deja la violencia psicológica en las personas que la sufren?', 'Puede causar ansiedad, depresión y baja autoestima.\r\nA veces, las personas pueden tener miedo de relacionarse con otros.'),
(8, '¿Cuál es el impacto de la terapia y el apoyo psicológico en las víctimas de violencia?', 'Puede ayudar a las víctimas a sanar emocionalmente y a recuperar su confianza.'),
(9, '¿Qué medidas legales existen para proteger a las víctimas de violencia doméstica?', 'Las órdenes de restricción pueden mantener alejada a la persona violenta.'),
(10, '¿Cómo pueden los amigos y familiares apoyar a alguien que está experimentando violencia de pareja?', 'Escuchar sin juzgar. Ayudar a buscar ayuda profesional o refugio seguro.'),
(11, '¿Qué es una orden de restricción y en qué casos se la asigna?', 'Es una orden legal que prohíbe al agresor acercarse a la víctima. Se otorga en casos de violencia doméstica o acoso.'),
(12, '¿Cómo saber si puedes ser una persona violenta?', 'Si te enfadas fácilmente, es importante buscar ayuda para aprender a controlar tus emociones.'),
(13, '¿Qué hacer para no ser una persona violenta?', 'Busca apoyo de un terapeuta o consejero para aprender a manejar la ira y resolver conflictos de manera pacífica.'),
(14, '¿Cómo actuar en caso de que se esté viviendo violencia intrafamiliar?', 'Buscar ayuda de una línea de apoyo o refugio. Hablar con un adulto de confianza o las autoridades para proteger a la familia.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
