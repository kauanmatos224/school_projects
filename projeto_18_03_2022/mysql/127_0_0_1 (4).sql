-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 11-Mar-2022 às 11:38
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estoque1`
--
CREATE DATABASE IF NOT EXISTS `estoque1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estoque1`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab`
--

DROP TABLE IF EXISTS `tab`;
CREATE TABLE IF NOT EXISTS `tab` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `valor` double NOT NULL,
  `quant` int(11) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tab`
--

INSERT INTO `tab` (`cod`, `nome`, `valor`, `quant`) VALUES
(1, 'TECLADO', 23, 100),
(2, 'MOUSE', 56, 34),
(7, 'CELULAR', 3456, 1234),
(5, 'TELEVISAO', 55, 55),
(6, 'computador', 3455, 3),
(8, 'PAPEL SULFITE', 2, 456);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `codusuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `foto` varchar(20) NOT NULL,
  PRIMARY KEY (`codusuario`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`codusuario`, `login`, `senha`, `foto`) VALUES
(1, 'rosa', '123', 'rosa.jpg'),
(4, 'pedro', '123', 'paulo.jpg'),
(5, 'rosana1', '123', 'rosana.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
