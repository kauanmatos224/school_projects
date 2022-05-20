-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 11-Mar-2022 às 11:00
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
-- Database: `estoque`
--
CREATE DATABASE IF NOT EXISTS `estoque` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estoque`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `codcliente` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cep` varchar(10) NOT NULL,
  PRIMARY KEY (`codcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `login`, `senha`, `email`, `rua`, `bairro`, `cidade`, `uf`, `cep`) VALUES
(1, 'rosa', '123', 'rosa', 'rua jurua', 'jurua', 'santo andré', 'sp', '09875-420'),
(2, 'andre', '123', 'andre@gmail.com', 'rua1', 'campos', 'rio de janeiro', 'rj', '0976557');

-- --------------------------------------------------------

--
-- Estrutura da tabela `controle`
--

DROP TABLE IF EXISTS `controle`;
CREATE TABLE IF NOT EXISTS `controle` (
  `codcliente` int(11) NOT NULL,
  `datapag` varchar(10) NOT NULL,
  `codpag` int(11) NOT NULL,
  `frete` varchar(30) NOT NULL,
  `situacao` varchar(20) NOT NULL,
  `codpedido` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codpedido`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `controle`
--

INSERT INTO `controle` (`codcliente`, `datapag`, `codpag`, `frete`, `situacao`, `codpedido`) VALUES
(1, '00/00/0000', 1, 'xxx', 'ativo', 21),
(1, '00/00/0000', 1, 'xxx', 'ativo', 20),
(1, '00/00/0000', 1, 'xxx', 'ativo', 19),
(1, '00/00/0000', 1, 'xxx', 'ativo', 18),
(1, '00/00/0000', 1, 'xxx', 'ativo', 17),
(1, '00/00/0000', 1, 'xxx', 'ativo', 16),
(1, '00/00/0000', 1, 'xxx', 'ativo', 15),
(2, '00/00/0000', 1, 'xxx', 'ativo', 14),
(2, '00/00/0000', 1, 'xxx', 'ativo', 13),
(1, '00/00/0000', 1, 'xxx', 'ativo', 22),
(1, '00/00/0000', 1, 'xxx', 'ativo', 23),
(1, '00/00/0000', 1, 'xxx', 'ativo', 24),
(0, '00/00/0000', 1, 'xxx', 'ativo', 25),
(1, '00/00/0000', 1, 'xxx', 'ativo', 26),
(2, '00/00/0000', 1, 'xxx', 'ativo', 27),
(1, '00/00/0000', 1, 'xxx', 'ativo', 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `coditem` int(11) NOT NULL AUTO_INCREMENT,
  `codpedido` int(11) NOT NULL,
  `codcliente` int(11) NOT NULL,
  `codprod` int(11) NOT NULL,
  `quant` int(11) NOT NULL,
  `preco` double NOT NULL,
  PRIMARY KEY (`coditem`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`coditem`, `codpedido`, `codcliente`, `codprod`, `quant`, `preco`) VALUES
(27, 27, 2, 2, 1, 4),
(29, 28, 1, 2, 1, 50000),
(30, 21, 1, 3, 2, 23445),
(31, 20, 1, 1, 444, 33333);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab`
--

DROP TABLE IF EXISTS `tab`;
CREATE TABLE IF NOT EXISTS `tab` (
  `cod` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `valor` double NOT NULL,
  `quant` int(11) NOT NULL,
  `FOTO` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tab`
--

INSERT INTO `tab` (`cod`, `nome`, `valor`, `quant`, `FOTO`) VALUES
(1, 'CARRO', 270000, 2, 'carro1.jpg'),
(2, 'CARRO2', 50000, 3, 'carro2.jpg'),
(4, 'CARRO3', 70000, 3, 'carro3.jpg'),
(5, 'CARRO4', 80000, 2, 'carro4.jpg'),
(34, 'CARRO6', 356000, 1, 'CARRO6.JPG'),
(58, 'CARRO7', 60000, 1, 'CARRO7.JPG'),
(67, 'ff', 44, 44, 'ff'),
(566, 'CARRO8', 1500000, 2, 'CARRO8.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
