-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Ago-2019 às 02:10
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `testlogin`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mytable`
--

CREATE TABLE `mytable` (
  `idusuario` int(11) NOT NULL,
  `Login` varchar(60) NOT NULL,
  `Senha` varchar(60) NOT NULL,
  `NomeUsuario` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mytable`
--

INSERT INTO `mytable` (`idusuario`, `Login`, `Senha`, `NomeUsuario`) VALUES
(6, 'Usuario', '401cec94d3ed586d8cb895c10c0f7db6', 'Alexandre');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `Login` (`Login`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `mytable`
--
ALTER TABLE `mytable`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
