-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Abr-2023 às 04:10
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
-- Banco de dados: `universidade`
--
CREATE DATABASE IF NOT EXISTS `universidade` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `universidade`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `Nome` varchar(100) NOT NULL,
  `Matricula` int(100) NOT NULL,
  `Data de nascimento` date NOT NULL,
  `Curso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`Nome`, `Matricula`, `Data de nascimento`, `Curso`) VALUES
('1918023', 0, '0000-00-00', 'COM'),
('Gabriel Santos', 132456, '0000-00-00', 'COM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `Codigo` varchar(100) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Horas` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`Codigo`, `Nome`, `Horas`) VALUES
('CSI488', 'Fundamentos da matematica', 60);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oferta`
--

CREATE TABLE `oferta` (
  `Codigo` int(100) NOT NULL,
  `CodigoDisciplina` varchar(100) NOT NULL,
  `Semestre` int(100) NOT NULL,
  `Ano` int(100) NOT NULL,
  `Nota` float NOT NULL,
  `Frequencia` int(100) NOT NULL,
  `Aluno` varchar(100) NOT NULL,
  `Professor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `oferta`
--

INSERT INTO `oferta` (`Codigo`, `CodigoDisciplina`, `Semestre`, `Ano`, `Nota`, `Frequencia`, `Aluno`, `Professor`) VALUES
(1, 'CSI030', 1, 2019, 8, 90, '1918023', '10120214450');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prerequisitos`
--

CREATE TABLE `prerequisitos` (
  `codigodisciplina` varchar(100) NOT NULL,
  `codigorequisito` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `prerequisitos`
--

INSERT INTO `prerequisitos` (`codigodisciplina`, `codigorequisito`) VALUES
('CSI030', 'CSI488');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `CPF` varchar(100) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Salario` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`CPF`, `Nome`, `Salario`) VALUES
('165864557', 'Vanessa', 2200);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
