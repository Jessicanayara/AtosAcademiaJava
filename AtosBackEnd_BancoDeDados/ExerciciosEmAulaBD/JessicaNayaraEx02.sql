-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Abr-2023 às 02:21
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dinossauros`
--
CREATE DATABASE IF NOT EXISTS `dinossauros` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dinossauros`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dinossauros descobertos`
--

CREATE TABLE `dinossauros descobertos` (
  `Dinossauro` varchar(100) NOT NULL,
  `Grupo` varchar(100) NOT NULL,
  `Toneladas` int(100) NOT NULL,
  `AnoDescoberta` int(100) NOT NULL,
  `Descobridor` varchar(100) NOT NULL,
  `Era` varchar(100) NOT NULL,
  `Inicio` int(100) NOT NULL,
  `Fim` int(100) NOT NULL,
  `Pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dinossauros descobertos`
--

INSERT INTO `dinossauros descobertos` (`Dinossauro`, `Grupo`, `Toneladas`, `AnoDescoberta`, `Descobridor`, `Era`, `Inicio`, `Fim`, `Pais`) VALUES
('Kentrossauro', 'Estegossauros', 2, 1909, 'Cientistas alemães', 'Jurássico', 200, 145, 'Tanzânia'),
('Pinacossauro', 'Anquilossauros', 6, 1999, 'Museu Americano de História Natural', 'Triássico', 85, 75, 'China'),
('Saichania', 'Anquilossauros', 4, 1977, 'Maruanska', 'Cretáceo', 145, 66, 'Mongólia'),
('Tricerátops', 'Ceratopsídeos', 6, 1887, 'John Bell Hatcher', 'Cretáceo', 70, 66, 'Canadá');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `dinossauros descobertos`
--
ALTER TABLE `dinossauros descobertos`
  ADD PRIMARY KEY (`Dinossauro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
